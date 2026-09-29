@extends('theme-views.layouts.app')

@section('title', $web_config['name']->value.' '.translate('Online_Shopping').' | '.$web_config['name']->value.' '.translate('ecommerce'))
@push('css_or_js')
    <meta property="og:image" content="{{asset('assets/company')}}/{{$web_config['web_logo']->value}}"/>
    <meta property="og:title" content="Welcome To {{$web_config['name']->value}} Home"/>
    <meta property="og:url" content="{{env('APP_URL')}}">
    <meta property="og:description" content="{{ substr(strip_tags(str_replace('&nbsp;', ' ', $web_config['about']->value)),0,160) }}">

    <meta property="twitter:card" content="{{asset('assets/company')}}/{{$web_config['web_logo']->value}}"/>
    <meta property="twitter:title" content="Welcome To {{$web_config['name']->value}} Home"/>
    <meta property="twitter:url" content="{{env('APP_URL')}}">
    <meta property="twitter:description" content="{{ substr(strip_tags(str_replace('&nbsp;', ' ', $web_config['about']->value)),0,160) }}">
@endpush

@section('content')
    <main class="main-content d-flex flex-column gap-3 py-3">
        <!-- Kitchen Solutions Section -->
        <section class="container mt-3">
            <div class="row">
                <div class="col-12">
                    <div class="rounded-10 overflow-hidden position-relative bg-dark text-white p-4 p-md-5" style="background: linear-gradient(rgba(0,0,0,0.6), rgba(0,0,0,0.6)), url('{{asset('assets/company/kitchen_bg.webp')}}'); background-size: cover; background-position: center; min-height: 300px; display: flex; align-items: center;">
                        <div class="row w-100">
                            <div class="col-md-7">
                                <span class="badge bg-primary mb-3">{{translate('Premium Service')}}</span>
                                <h2 class="display-5 fw-bold mb-3 text-white">{{translate('We design and equip complete kitchens')}}</h2>
                                <p class="lead mb-4">{{translate('Professional solutions for restaurants, hotels, and industrial kitchens.')}}</p>
                                <a href="{{route('kitchen-solutions')}}" class="btn btn-primary btn-lg px-5 rounded-pill shadow-lg hover-scale">
                                    {{translate('Explore Now')}} <i class="bi bi-arrow-right ms-2"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Main Banner -->
        @include('theme-views.partials._main-banner')

        <!-- Flash Deal -->
        @if ($web_config['flash_deals'])
            @include('theme-views.partials._flash-deals')
        @endif

        <!-- Find What You Need -->
        @include('theme-views.partials._find-what-you-need')

        <!-- Top Stores -->
        @if ($web_config['business_mode'] == 'multi' && count($top_sellers) > 0)
            @include('theme-views.partials._top-stores')
        @endif

        <!-- Featured Deals -->
        @if ($web_config['featured_deals']->count()>0)
            @include('theme-views.partials._featured-deals')
        @endif

        <!-- Recommended For You -->
        @include('theme-views.partials._recommended-product')

        <!-- More Stores -->
        @if($web_config['business_mode'] == 'multi')
            @include('theme-views.partials._more-stores')
        @endif

        <!-- Top Rated Products -->
        @include('theme-views.partials._top-rated-products')

        <!-- Today’s Best Deal an Just for you -->
        @include('theme-views.partials._best-deal-just-for-you')

        <!-- Home Categories -->
        @include('theme-views.partials._home-categories')

        <!-- Call To Action -->
        @if (isset($main_section_banner))
        <section class="">
            <div class="container">
                <div class="py-5 rounded position-relative">
                    <img src="{{asset('assets/banner')}}/{{$main_section_banner ? $main_section_banner['photo'] : ''}}"
                         onerror="this.src='{{theme_asset('assets/img/main-section-banner-placeholder.png')}}'"
                         alt="" class="rounded position-absolute dark-support img-fit start-0 top-0 index-n1 flipX-in-rtl">
                    <div class="row justify-content-center">
                        <div class="col-10 py-4">
                            <h6 class="text-primary mb-2">{{ translate('Do_not_Miss_Todays_Deal') }}!</h6>
                            <h2 class="fs-2 mb-4 absolute-dark">{{ translate('Let_us_Shopping_Today') }}</h2>
                            <div class="d-flex">
                                <a href="{{$main_section_banner ? $main_section_banner->url:''}}" class="btn btn-primary fs-16">{{ translate('Shop_Now') }}</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        @endif
    </main>
@endsection

