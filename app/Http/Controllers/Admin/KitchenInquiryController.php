<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\CPU\Helpers;
use App\Model\KitchenInquiry;
use App\Model\BusinessSetting;
use App\CPU\ImageManager;
use Brian2694\Toastr\Facades\Toastr;
use Illuminate\Http\Request;

class KitchenInquiryController extends Controller
{
    public function list(Request $request)
    {
        $query_param = [];
        $search = $request['search'];
        if ($request->has('search')) {
            $key = explode(' ', $request['search']);
            $inquiries = KitchenInquiry::where(function ($q) use ($key) {
                foreach ($key as $value) {
                    $q->orWhere('name', 'like', "%{$value}%")
                        ->orWhere('email', 'like', "%{$value}%")
                        ->orWhere('phone', 'like', "%{$value}%")
                        ->orWhere('project_details', 'like', "%{$value}%");
                }
            });
            $query_param = ['search' => $request['search']];
        } else {
            $inquiries = new KitchenInquiry();
        }

        $inquiries = $inquiries->latest()->paginate(Helpers::pagination_limit())->appends($query_param);
        return view('admin-views.kitchen-inquiry.list', compact('inquiries', 'search'));
    }

    public function delete(Request $request)
    {
        $inquiry = KitchenInquiry::find($request->id);
        $inquiry->delete();
        Toastr::success(translate('inquiry_deleted_successfully'));
        return back();
    }

    public function settings()
    {
        $settings = Helpers::get_business_settings('kitchen_solutions_ui');
        return view('admin-views.kitchen-inquiry.settings', compact('settings'));
    }

    public function settings_update(Request $request)
    {
        $settings = Helpers::get_business_settings('kitchen_solutions_ui');

        if ($request->has('header_bg_image')) {
            $settings['header_bg_image'] = ImageManager::update('assets/kitchen-solutions/', $settings['header_bg_image'] ?? '', 'jpg', $request->file('header_bg_image'));
        }

        if ($request->has('secondary_image')) {
            $settings['secondary_image'] = ImageManager::update('assets/kitchen-solutions/', $settings['secondary_image'] ?? '', 'jpg', $request->file('secondary_image'));
        }

        $settings['header_title'] = $request->header_title;
        $settings['header_subtitle'] = $request->header_subtitle;
        $settings['header_bg_color'] = $request->header_bg_color;
        $settings['header_text_color'] = $request->header_text_color;
        $settings['form_title'] = $request->form_title;
        $settings['form_subtitle'] = $request->form_subtitle;
        $settings['secondary_title'] = $request->secondary_title;
        $settings['secondary_description'] = $request->secondary_description;

        BusinessSetting::updateOrInsert(['type' => 'kitchen_solutions_ui'], [
            'value' => json_encode($settings)
        ]);

        Toastr::success(translate('settings_updated_successfully'));
        return back();
    }
}
