@extends('layouts.front-end.app')

@php

    $defaultTitle = "All product categories";

    if (request()->routeIs('category_children'))

        $pageTitle = optional(\App\Model\Category::find(request()->id))->name ?? $defaultTitle;

    else $pageTitle = $defaultTitle;
@endphp

@section('title', $pageTitle)

@push('css_or_js')
    <meta property="og:image" content="{{asset('assets/company')}}/{{$web_config['web_logo']->value}}"/>
    <meta property="og:title" content="Categories of {{$web_config['name']->value}} "/>
    <meta property="og:url" content="{{env('APP_URL')}}">
    <meta property="og:description" content="{{ substr(strip_tags(str_replace('&nbsp;', ' ', $web_config['about']->value)),0,160) }}">

    <meta property="twitter:card" content="{{asset('assets/company')}}/{{$web_config['web_logo']->value}}"/>
    <meta property="twitter:title" content="Categories of {{$web_config['name']->value}}"/>
    <meta property="twitter:url" content="{{env('APP_URL')}}">
    <meta property="twitter:description" content="{{ substr(strip_tags(str_replace('&nbsp;', ' ', $web_config['about']->value)),0,160) }}">

    <style>
        .active{
            background: {{$web_config['secondary_color']}};
        }
    </style>
@endpush

@section('content')
    <!-- Page Content-->
    <div class="container p-3 rtl __inline-52" style="text-align: {{Session::get('direction') === "rtl" ? 'right' : 'left'}};">
        <div class="row">
            <div class="col-md-9 mt-3">
                <h4>{{$pageTitle}}</h4>
            </div>
        </div>
        <!-- Content  -->
        <div class="col-sm-12 mt-5" style="display: flex; flex-flow: row wrap;">
            <!-- Products grid-->
            <hr>
            @foreach ($categories as $category)
                <div class="col-sm-3">
                    <a href="{{route('products',['id'=> $category['id'],'data_from'=>'category','page'=>1])}}">
                        <div class="__img d-flex justify-content-center">
                            <img
                                onerror="this.src='{{asset('assets/front-end/img/image-place-holder.png')}}'"
                                src="{{asset('assets/category/'. $category->icon)}}"
                                alt="{{$category->name}}" style="width: 120px; height: 120px; border-radius: 50%; object-fit: cover;">
                        </div>
                        <p class="text-center medium mt-1" style="word-wrap: break-word;">{{$category->name}}</p>
                    </a>
                </div>
            @endforeach
        </div>
    </div>
@endsection

@push('script')
    <script>
        $(document).ready(function () {
            $('.card-header').click(function() {
                $('.card-header').removeClass('active');
                $(this).addClass('active');
            });

        });
    </script>
@endpush
