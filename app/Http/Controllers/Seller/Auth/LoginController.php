<?php

namespace App\Http\Controllers\Seller\Auth;

use App\Http\Controllers\Controller;
use App\Model\Seller;
use App\Model\SellerWallet;
use Brian2694\Toastr\Facades\Toastr;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\{DB, Validator, Session, Hash};

use App\Http\Controllers\Traits\CommonFunctionality;

use Gregwar\Captcha\CaptchaBuilder;
use App\CPU\Helpers;

use Gregwar\Captcha\PhraseBuilder;

use App\Http\Middleware\SellerMiddleware;

class LoginController extends Controller
{
    use CommonFunctionality;

    public function __construct()
    {
        $this->middleware('guest:seller', ['except' => [

            'logout', "captcha" // without this, cannot fetch for level-2 reg
        ]]);
    }

    public function captcha(Request $request,$tmp)
    {

        $phrase = new PhraseBuilder;
        $code = $phrase->build(4);
        $builder = new CaptchaBuilder($code, $phrase);
        $builder->setBackgroundColor(220, 210, 230);
        $builder->setMaxAngle(25);
        $builder->setMaxBehindLines(0);
        $builder->setMaxFrontLines(0);
        $builder->build($width = 100, $height = 40, $font = null);
        $phrase = $builder->getPhrase();

        if(Session::has($request->captcha_session_id)) {
            Session::forget($request->captcha_session_id);
        }
        Session::put($request->captcha_session_id, $phrase);
        header("Cache-Control: no-cache, must-revalidate");
        header("Content-Type:image/jpeg");
        $builder->output();
    }

    public function login()
    {
        return view('seller-views.auth.login');
    }

    public function submit(Request $request)
    {

        $isAjax = $request->ajax();

        if (!$this->didPassCaptcha($request, "default_recaptcha_id_seller_login"))

            return $this->ajaxRedirectFailure(

                $isAjax, \App\CPU\translate('Captcha Failed'),

                $request->only('email', 'remember')
            );

        $validator = Validator::make($request->all(), [
            'email' => 'required',
            'password' => 'required|min:8'
        ]);

        if ($isAjax) {
            if ($validator->fails()) {
                return response()->json([
                    'errors' => $validator->errors()->all()
                ]);
            }
        }else {
            $validator->validate();
        }

        $loginSuccess = auth('seller')->attempt([

            'email' => $request->email,

            'password' => $request->password
        ], $request->remember);

        if (!$loginSuccess)

            return $this->ajaxRedirectFailure(

                $isAjax, translate("Credentials does not match."),

                $request->only('email', 'remember')
            );

        $seller = Seller::where(['email' => $request['email']])->first();

        $sellerStatus = $seller->status;

        if (str_contains($sellerStatus, 'approved')) {

            $sellerId = auth('seller')->id();

            if (!SellerWallet::where('seller_id', $sellerId)->exists())
        
                $this->createWallet($sellerId);

            return $this->ajaxRedirectSuccess(

                $isAjax, SellerMiddleware::STAGE_3_FALLBACK, function () {

                Toastr::info(translate('welcome_to_your_dashboard').'!');
            });
        }

        if ($sellerStatus == Seller::STATUS_PENDING) {

            if ($seller->isLevelReg(1))

                $destination = SellerMiddleware::STAGE_1_FALLBACK;

            elseif ($seller->isLevelReg(2))

                $destination = SellerMiddleware::STAGE_2_FALLBACK;

            return $this->ajaxRedirectSuccess($isAjax, $destination);
        }

        $this->clearSellerLogin($request);

        $errorMessage = $sellerStatus == Seller::STATUS_SUSPENDED?

            translate("Your account has been suspended!"):

            "Unable to complete login. Unexpected seller status '$sellerStatus' received";

        return $this->ajaxRedirectFailure(

            $isAjax, $errorMessage, $request->only('email', 'remember')
        );
    }

    protected function createWallet (int $sellerId):void {

        DB::table('seller_wallets')->insert([
            'seller_id' => $sellerId,
            'withdrawn' => 0,
            'commission_given' => 0,
            'total_earning' => 0,
            'pending_withdraw' => 0,
            'delivery_charge_earned' => 0,
            'collected_cash' => 0,
            'created_at' => now(),
            'updated_at' => now(),
        ]);
    }

    public function logout(Request $request)
    {
        $this->clearSellerLogin($request);

        return redirect()->route('home');
    }

    protected function clearSellerLogin (Request $request) {

        auth()->guard('seller')->logout();

        $request->session()->invalidate();
    }
}
