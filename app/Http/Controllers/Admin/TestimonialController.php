<?php

namespace App\Http\Controllers\Admin;

use App\CPU\Helpers;
use App\Http\Controllers\Controller;
use App\Model\Testimonial;
use Brian2694\Toastr\Facades\Toastr;
use Illuminate\Http\Request;

class TestimonialController extends Controller
{
    public function list(Request $request)
    {
        $query_param = [];
        $search = $request['search'];
        if ($request->has('search')) {
            $key = explode(' ', $request['search']);
            $testimonials = Testimonial::with(['customer'])->where(function ($q) use ($key) {
                foreach ($key as $value) {
                    $q->orWhere('testimonial', 'like', "%{$value}%");
                }
            });
            $query_param = ['search' => $request['search']];
        } else {
            $testimonials = Testimonial::with(['customer']);
        }
        $testimonials = $testimonials->latest()->paginate(Helpers::pagination_limit())->appends($query_param);
        return view('admin-views.testimonial.list', compact('testimonials', 'search'));
    }

    public function status(Request $request)
    {
        $testimonial = Testimonial::find($request->id);
        $testimonial->status = $request->status;
        $testimonial->save();
        Toastr::success(translate('status_updated_successfully'));
        return back();
    }

    public function delete(Request $request)
    {
        $testimonial = Testimonial::find($request->id);
        $testimonial->delete();
        Toastr::success(translate('testimonial_deleted_successfully'));
        return back();
    }
}
