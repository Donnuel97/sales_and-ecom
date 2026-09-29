<?php

namespace App\Http\Controllers\Seller\Auth;

use App\Http\Controllers\Controller;
use App\Model\{Seller, Shop};
use Brian2694\Toastr\Facades\Toastr;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\{DB, Session, Hash};
use App\CPU\Helpers;
use function App\CPU\translate;

use App\Http\Controllers\Traits\CommonFunctionality;

class RegisterController extends Controller
{
    use CommonFunctionality;

    public function create()
    {
        $business_mode=Helpers::get_business_settings('business_mode');
        $seller_registration=Helpers::get_business_settings('seller_registration');
        if((isset($business_mode) && $business_mode=='single') || (isset($seller_registration) && $seller_registration==0))
        {
            Toastr::warning(translate('access_denied!!'));
            return redirect('/');
        }
        return view(VIEW_FILE_NAMES['seller_registration']);
    }

    public function store(Request $request)
    {
        $request->validate([

            'shop_name'     => 'required',
            'email'         => 'required|unique:sellers', // nullable|required_without:phone|string|
            'phone'         => 'required|string',
            'password'      => 'required|min:8'
        ]);

        if ($request['from_submit'] != 'admin' && !$this->didPassCaptcha($request, "default_recaptcha_id_seller_regi")) {
            
            return redirect()->back()

            ->withErrors(\App\CPU\translate('Captcha Failed'));
        }

        DB::transaction(function ($r) use ($request) {
            $seller = new Seller([

                "phone" => $request->phone,
                "email" => $request->email,
                "password" => Hash::make($request->password),
                
                "status" =>  $request->status == Seller::STATUS_APPROVED_1? // a similar conditional is the way it was when I met the code

                Seller::STATUS_APPROVED_1: Seller::STATUS_PENDING,
            ]);
            
            $seller->save();

            $shop = new Shop([

                "seller_id" => $seller->id,
                "name" => $request->shop_name,
                "contact" => $request->phone,
            ]);
            
            $shop->save();

            DB::table('seller_wallets')->insert([
                'seller_id' => $seller['id'],
                'withdrawn' => 0,
                'commission_given' => 0,
                'total_earning' => 0,
                'pending_withdraw' => 0,
                'delivery_charge_earned' => 0,
                'collected_cash' => 0,
                'created_at' => now(),
                'updated_at' => now(),
            ]);

        });

        if($request->status == Seller::STATUS_APPROVED_1){
            Toastr::success(translate('shop_apply_successfully'));
            return back();
        }else{
            Toastr::success(translate('shop_apply_successfully'));
            return redirect()->route('seller.auth.login');
        }
    }
}
