<?php

namespace App\Http\Controllers\Admin\Auth;

use App\Http\Controllers\Controller;
use Brian2694\Toastr\Facades\Toastr;
use Illuminate\Http\Request;
use Gregwar\Captcha\CaptchaBuilder;
use App\CPU\Helpers;
use Illuminate\Support\Facades\Session;
use App\Model\Admin;
use Gregwar\Captcha\PhraseBuilder;

use App\Http\Controllers\Traits\CommonFunctionality;

class LoginController extends Controller
{
    use CommonFunctionality;

    public function __construct()
    {
        $this->middleware('guest:admin', ['except' => ['logout']]);
    }

    public function captcha($tmp)
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

        if(Session::has('default_captcha_code')) {
            Session::forget('default_captcha_code');
        }
        Session::put('default_captcha_code', $phrase);
        header("Cache-Control: no-cache, must-revalidate");
        header("Content-Type:image/jpeg");
        $builder->output();
    }

    public function login()
    {
        $role = 'Admin';
        return view('admin-views.auth.login', compact('role'));
    }

    public function submit(Request $request)
    {
        $request->validate([
            'email' => 'required|email',
            'password' => 'required|min:6'
        ]);

        if ( !$this->didPassCaptcha($request, "default_captcha_code")) {
            
            return redirect()->back()

            ->withErrors(\App\CPU\translate('Captcha Failed'));
        }

        $admin = Admin::where('email', $request->email)->first();
        if (isset($admin) && $admin->status != 1) {
            return redirect()->back()->withInput($request->only('email', 'remember'))
                ->withErrors(['You are blocked!!, contact with admin.']);
        }else{
            if (auth('admin')->attempt(['email' => $request->email, 'password' => $request->password], $request->remember)) {
                return redirect()->route('admin.dashboard');
            }
        }

        return redirect()->back()->withInput($request->only('email', 'remember'))
            ->withErrors(['Credentials does not match.']);
    }

    public function logout(Request $request)
    {

        if(auth()->guard('admin')->user()->admin_role_id == 1)
        {
            $redirect = Helpers::get_business_settings('admin_login_url');
        }else{
            $redirect = Helpers::get_business_settings('employee_login_url');
        }

        auth()->guard('admin')->logout();
        $request->session()->invalidate();

        return redirect()->route('home');
    }
}
