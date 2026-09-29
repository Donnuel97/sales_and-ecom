@extends('layouts.back-end.app')

@php($pageTitle = "Sellers awaiting approval")

@section('title', $pageTitle)

@push('css_or_js')

@endpush

@section('content')
<div class="content container-fluid main-card {{Session::get('direction')}}">

    <!-- Page Title -->
    <div class="mb-4">
        <h2 class="h1 mb-0 text-capitalize d-flex align-items-center gap-2">
            <img src="{{asset('assets/back-end/img/add-new-seller.png')}}" class="mb-1" alt="">
            {{$pageTitle}}
        </h2>
    </div>
    <!-- End Page Title -->

    <table class="table table-borderless table-thead-bordered table-nowrap table-align-middle card-table __cart-table">
        <thead class="thead-light">
            <tr class="">
                <th class="font-weight-bold __w-45">
                    <div class="pl-3">
                        SN
                    </div>
                </th>
                <th class="font-weight-bold __w-45">
                    <div class="pl-3">
                        Seller name
                    </div>
                </th>
                <th class="font-weight-bold __w-45">
                    <div class="pl-3">
                        Seller image
                    </div>
                </th>
                <th class="font-weight-bold pl-0 __w-15p text-capitalize">Pending Level 2</th>
                <th class="font-weight-bold __w-15p">
                    <span class="pl-3">Pending Level 3</span>
                </th>
                <th class="font-weight-bold __w-15p text-end">
                    <div class="pr-3">
                        <!--  -->
                    </div>
                </th>
            </tr>
        </thead>

        <tbody>
            @foreach($sellers as $seller)
                <tr>
                    <td>{{$loop->index+1}}</td>
                    <td>{{$seller->f_name. ' '. $seller->l_name}}</td>
                    <td>
                        <img src="{{asset('/assets/seller/'. ($seller->image ?? 'default-seller-image.webp'))}}" style="max-height: 70px">
                    </td>
                    <td>
                        {{
                            ($seller->reg_level_completed == 2 && $seller->status == \App\Model\Seller::STATUS_PENDING)?
                            "Yes": "No"
                        }}
                    </td>
                    <td>
                        {{
                            ($seller->reg_level_completed == 3 && $seller->status == \App\Model\Seller::STATUS_APPROVED_1)?
                            "Yes": "No"
                        }}
                    </td>
                    <td>
                        <a href="{{ route('admin.sellers.view', ['id' => $seller->id]) }}" class="btn btn-primary px-1">Approve Request</a>
                    </td>
                </tr>
            @endforeach
        </tbody>
    </table>
</div>
@endsection