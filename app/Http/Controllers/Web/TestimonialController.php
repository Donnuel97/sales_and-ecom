<?php

namespace App\Http\Controllers\Web;

use App\Http\Controllers\Controller;
use App\Model\Order;
use App\Model\Testimonial;
use Brian2694\Toastr\Facades\Toastr;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class TestimonialController extends Controller
{
    public function store(Request $request)
    {
        $status = \App\CPU\Helpers::get_business_settings('testimonial_page_status');
        if (isset($status) && $status == 0) {
            return redirect()->route('home');
        }

        $request->validate([
            'testimonial' => 'required',
            'rating' => 'required|integer|min:1|max:5',
        ]);

        $customer_id = Auth::guard('customer')->id();

        // Check if the customer has at least one successful delivered order
        $delivered_order = Order::where('customer_id', $customer_id)
            ->where('order_status', 'delivered')
            ->first();

        if (!$delivered_order) {
            Toastr::error(translate('you_can_only_submit_a_testimonial_after_at_least_one_successful_delivery'));
            return back();
        }

        $testimonial = new Testimonial();
        $testimonial->customer_id = $customer_id;
        $testimonial->testimonial = $request->testimonial;
        $testimonial->rating = $request->rating;
        $testimonial->status = 0; // Pending
        $testimonial->save();

        Toastr::success(translate('testimonial_submitted_successfully_it_is_pending_admin_approval'));
        return back();
    }
}
