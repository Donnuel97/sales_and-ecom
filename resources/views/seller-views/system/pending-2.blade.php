@php
    //$useSideBar = false;

    $pageTitle = "Awaiting step two approval";
@endphp

@extends('layouts.back-end.app-seller')

@section('title', $pageTitle)

@section('content')
    <div class="row justify-content-center">

        <div style="margin-left: 10%; width: 100%;">
            @include('seller-views.shop.vendor-reg-stepper')
        </div>

        <p style="
            width: 100%;
            text-align: center;
            margin: 3% 0;
        ">
            {{$message}}
        </p>

        @include("seller-views.shop.level-1-details")
    </div>
@endsection