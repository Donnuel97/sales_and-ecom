<?php

namespace App\Http\Controllers\Payment_Methods;

use App\Model\PaymentRequest;
use App\Models\User;
use App\Traits\Processor;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller;
use Illuminate\Support\Facades\Config;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;
use Unicodeveloper\Paystack\Facades\Paystack;

class PaystackController extends Controller
{
    use Processor;

    private PaymentRequest $payment;
    private $user;

    public function __construct(PaymentRequest $payment, User $user)
    {
        $config = $this->payment_config('paystack', 'payment_config');
        $values = false;
        if (!is_null($config) && $config->mode == 'live') {
            $values = json_decode($config->live_values);
        } elseif (!is_null($config) && $config->mode == 'test') {
            $values = json_decode($config->test_values);
        }

        if ($values) {
            $config = array(
                'publicKey' => env('PAYSTACK_PUBLIC_KEY', $values->public_key),
                'secretKey' => env('PAYSTACK_SECRET_KEY', $values->secret_key),
                'paymentUrl' => env('PAYSTACK_PAYMENT_URL', 'https://api.paystack.co'),
                'merchantEmail' => env('MERCHANT_EMAIL', $values->merchant_email),
            );
            Config::set('paystack', $config);
        }

        $this->payment = $payment;
        $this->user = $user;
    }

    public function index(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'payment_id' => 'required|uuid'
        ]);

        if ($validator->fails()) {
            return response()->json($this->response_formatter(GATEWAYS_DEFAULT_400, null, $this->error_processor($validator)), 400);
        }

        $data = $this->payment::where(['id' => $request['payment_id']])->where(['is_paid' => 0])->first();
        if (!isset($data)) {
            return response()->json($this->response_formatter(GATEWAYS_DEFAULT_204), 200);
        }

        $payer = json_decode($data['payer_information']);

        $reference = Paystack::genTranxRef();

        return view('payment.paystack', compact('data', 'payer', 'reference'));
    }

    public function redirectToGateway(Request $request)
    {
        return Paystack::getAuthorizationUrl()->redirectNow();
    }

    public function handleGatewayCallback(Request $request)
    {
        $paymentDetails = Paystack::getPaymentData();

        $payment_id = $request->get('payment_id');
        if (!$payment_id && isset($paymentDetails['data']['metadata'])) {
            $metadata = $paymentDetails['data']['metadata'];
            if (is_string($metadata)) {
                $metadata = json_decode($metadata, true);
            }
            if (is_array($metadata) && isset($metadata['payment_id'])) {
                $payment_id = $metadata['payment_id'];
            } elseif (is_object($metadata) && isset($metadata->payment_id)) {
                $payment_id = $metadata->payment_id;
            }
        }

        if (!$payment_id && isset($paymentDetails['data']['orderID'])) {
            $payment_data = $this->payment::where(['attribute_id' => $paymentDetails['data']['orderID']])->first();
            if ($payment_data) {
                $payment_id = $payment_data->id;
            }
        }

        if (isset($paymentDetails['status']) && $paymentDetails['status'] == true && isset($paymentDetails['data']['status']) && strtolower($paymentDetails['data']['status']) === 'success') {
            if ($payment_id) {
                $this->payment::where(['id' => $payment_id])->update([
                    'payment_method' => 'paystack',
                    'is_paid' => 1,
                    'transaction_id' => $request['trxref'] ?? $paymentDetails['data']['reference'] ?? null,
                ]);
                $data = $this->payment::where(['id' => $payment_id])->first();
                if (isset($data) && function_exists($data->success_hook)) {
                    call_user_func($data->success_hook, $data);
                }
                return $this->payment_response($data, 'success');
            }
        }

        $payment_data = $payment_id ? $this->payment::where(['id' => $payment_id])->first() : null;
        if (isset($payment_data) && function_exists($payment_data->failure_hook)) {
            call_user_func($payment_data->failure_hook, $payment_data);
        }
        return $this->payment_response($payment_data, 'fail');
    }
}
