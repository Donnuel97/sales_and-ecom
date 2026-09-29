<?php

namespace App\Http\Controllers\Traits;

use Illuminate\Http\Request;

use Illuminate\Support\Facades\{DB, Validator, Session, Hash};

use Brian2694\Toastr\Facades\Toastr;

use App\CPU\Helpers;

trait CommonFunctionality {

    public function ajaxRedirectSuccess (bool $isAjax, string $destination, callable $beforeRedirection = null) {

        if ($isAjax) return response()->json([

            'redirect_url'=> route($destination),
        ]);

        if (!is_null($beforeRedirection)) $beforeRedirection();
        
        return redirect()->route($destination);
    }

    public function ajaxRedirectFailure (bool $isAjax, string $errorMessage, array $retainInput = []) {

        if ($isAjax) return response()->json([
                    
                'errors' => [$errorMessage]
            ]);
        
        return redirect()->back()->withInput($retainInput)

        ->withErrors([$errorMessage]);
    }

    public function didPassCaptcha (Request $request, string $captchaKey):bool {

    	if ($request->ajax()) return true;

        $recaptcha = Helpers::get_business_settings('recaptcha');

        if (isset($recaptcha) && $recaptcha['status'] == 1) {
                
            return !Validator::make($request->all(), [
                
                'g-recaptcha-response' => [$this->internalCaptchaValidate(...)],
            ])->fails();
        }

        $matchStatus = $request->$captchaKey == Session($captchaKey);
        
        Session::forget($captchaKey); // if (!$matchStatus), something else writes to Toastr::error(translate('ReCAPTCHA_Failed')); so not necessary here
        
        return $matchStatus;
    }

    protected function internalCaptchaValidate ($attribute, $value, $fail) {

        $secret_key = Helpers::get_business_settings('recaptcha')['secret_key'];
        $response = $value;
        $url = 'https://www.google.com/recaptcha/api/siteverify?secret=' . $secret_key . '&response=' . $response;
        $response = \file_get_contents($url);
        $response = json_decode($response);
        if (!$response->success) {
            $fail(\App\CPU\translate('ReCAPTCHA Failed'));
        }
    }
}