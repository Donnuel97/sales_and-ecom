@extends('layouts.front-end.app')

@section('title', translate('about_us'))

@push('css_or_js')

    <meta property="og:image" content="{{asset('assets/company')}}/{{$web_config['web_logo']->value}}"/>
    <meta property="og:title" content="About {{$web_config['name']->value}} "/>
    <meta property="og:url" content="{{env('APP_URL')}}">
    <meta property="og:description" content="{{ substr(strip_tags(str_replace('&nbsp;', ' ', $web_config['about']->value)),0,160) }}">

    <meta property="twitter:card" content="{{asset('assets/company')}}/{{$web_config['web_logo']->value}}"/>
    <meta property="twitter:title" content="about {{$web_config['name']->value}}"/>
    <meta property="twitter:url" content="{{env('APP_URL')}}">
    <meta property="twitter:description" content="{{ substr(strip_tags(str_replace('&nbsp;', ' ', $web_config['about']->value)),0,160) }}">
@endpush

@section('content')
    <div class="container for-container rtl __inlini-51 py-5">
        <h2 class="text-center mt-3 headerTitle mb-4">{{ translate('about_Our_Company')}}</h2>
        <div class="for-padding text-justify mx-auto col-md-10 col-lg-8 px-3">
            {!! $about_us['value'] !!}
        </div>
    </div>
@endsection
