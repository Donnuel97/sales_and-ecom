<?php

namespace App\Http\Controllers\Web;

use App\Http\Controllers\Controller;
use App\Model\KitchenInquiry;
use Illuminate\Http\Request;
use Brian2694\Toastr\Facades\Toastr;

class KitchenSolutionsController extends Controller
{
    public function index()
    {
        return view(VIEW_FILE_NAMES['kitchen_solutions']);
    }

    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required',
            'email' => 'required|email',
            'phone' => 'required',
            'project_details' => 'required',
        ]);

        KitchenInquiry::create([
            'name' => $request->name,
            'email' => $request->email,
            'phone' => $request->phone,
            'project_details' => $request->project_details,
        ]);

        Toastr::success(translate('your_inquiry_has_been_sent_successfully'), translate('Success'), ["positionClass" => "toast-top-right"]);
        return back();
    }
}
