<!-- product page / product screen -->

@extends('layouts.front-end.app')

@section('title', $product['name'])

@push('css_or_js')
    <meta name="description" content="{{$product->slug}}">
    <meta name="keywords" content="@foreach(explode(' ',$product['name']) as $keyword) {{$keyword.' , '}} @endforeach">
    @if($product->added_by=='seller')
        <meta name="author" content="{{ $product->seller->shop?$product->seller->shop->name:$product->seller->f_name}}">
    @elseif($product->added_by=='admin')
        <meta name="author" content="{{$web_config['name']->value}}">
    @endif
    <!-- Viewport-->

    @if($product['meta_image']!=null)
        <meta property="og:image" content="{{asset('assets/product/meta/'. $product->meta_image)}}"/>
        <meta property="twitter:card"
              content="{{asset('assets/product/meta/'. $product->meta_image)}}"/>
    @else
        <meta property="og:image" content="{{asset('assets/product/thumbnail/'. $product->thumbnail)}}"/>
        <meta property="twitter:card"
              content="{{asset('assets/product/thumbnail/'. $product->thumbnail)}}"/>
    @endif

    @if($product['meta_title']!=null)
        <meta property="og:title" content="{{$product->meta_title}}"/>
        <meta property="twitter:title" content="{{$product->meta_title}}"/>
    @else
        <meta property="og:title" content="{{$product->name}}"/>
        <meta property="twitter:title" content="{{$product->name}}"/>
    @endif
    <meta property="og:url" content="{{route('product',[$product->slug])}}">

    @if($product['meta_description']!=null)
        <meta property="twitter:description" content="{!! $product['meta_description'] !!}">
        <meta property="og:description" content="{!! $product['meta_description'] !!}">
    @else
        <meta property="og:description"
              content="@foreach(explode(' ',$product['name']) as $keyword) {{$keyword.' , '}} @endforeach">
        <meta property="twitter:description"
              content="@foreach(explode(' ',$product['name']) as $keyword) {{$keyword.' , '}} @endforeach">
    @endif
    <meta property="twitter:url" content="{{route('product',[$product->slug])}}">

    <link rel="stylesheet" href="{{asset('assets/front-end/css/product-details.css')}}"/>
    <style>
        .btn-number:hover {
            color: {{$web_config['secondary_color']}};

        }

        .for-total-price {
            margin-{{Session::get('direction') === "rtl" ? 'right' : 'left'}}: -30%;
        }

        .feature_header span {
            padding-{{Session::get('direction') === "rtl" ? 'right' : 'left'}}: 15px;
        }

        .flash-deals-background-image{
            background: {{$web_config['primary_color']}}10;
        }

        @media (max-width: 768px) {
            .for-total-price {
                padding-{{Session::get('direction') === "rtl" ? 'right' : 'left'}}: 30%;
            }

            .product-quantity {
                padding-{{Session::get('direction') === "rtl" ? 'right' : 'left'}}: 4%;
            }

            .for-margin-bnt-mobile {
                margin-{{Session::get('direction') === "rtl" ? 'left' : 'right'}}: 7px;
            }

        }

        @media (max-width: 375px) {
            .for-margin-bnt-mobile {
                margin-{{Session::get('direction') === "rtl" ? 'left' : 'right'}}: 3px;
            }

            .for-discount {
                margin-{{Session::get('direction') === "rtl" ? 'right' : 'left'}}: 10% !important;
            }

            .for-dicount-div {
                margin-top: -5%;
                margin-{{Session::get('direction') === "rtl" ? 'left' : 'right'}}: -7%;
            }

            .product-quantity {
                margin-{{Session::get('direction') === "rtl" ? 'right' : 'left'}}: 4%;
            }

        }

        @media (max-width: 500px) {
            .for-dicount-div {
                margin-{{Session::get('direction') === "rtl" ? 'left' : 'right'}}: -5%;
            }

            .for-total-price {
                margin-{{Session::get('direction') === "rtl" ? 'right' : 'left'}}: -20%;
            }

            .view-btn-div {
                float: {{Session::get('direction') === "rtl" ? 'left' : 'right'}};
            }

            .for-discount {
                margin-{{Session::get('direction') === "rtl" ? 'right' : 'left'}}: 7%;
            }
            .for-mobile-capacity {
                margin-{{Session::get('direction') === "rtl" ? 'right' : 'left'}}: 7%;
            }
        }

        .bottom-sticky {
            position: fixed;
            bottom: 0;
            left: 0;
            width: 100%;
            z-index: 1001;
            box-shadow: 0 -2px 10px rgba(0,0,0,0.1);
            background: white;
            padding: 10px 15px;
            display: none !important;
        }

        .bottom-sticky.stick {
            display: block !important;
        }

        @media (max-width: 575px) {
            .bottom-sticky {
                display: none;
            }
            .bottom-sticky.stick {
                display: flex !important;
                flex-direction: column;
            }
            .cz-preview-item img {
                max-height: 250px !important;
                object-fit: contain;
            }
            .__review-overview {
                padding-left: 10px !important;
                padding-right: 10px !important;
                margin-left: 0 !important;
                margin-right: 0 !important;
            }
            .specification table th {
                width: 40% !important;
                font-size: 12px;
            }
            .specification table td {
                font-size: 12px;
            }
            .__inline-24 {
                display: block !important;
                width: 100%;
                margin-top: 10px;
            }
        }
        .related-product-card img {
            height: 140px !important;
        }
        .related-product-card .single-product-details {
            min-height: 80px !important;
        }
        .related-product-card .single-product-details a {
            -webkit-line-clamp: 2 !important;
            display: -webkit-box !important;
            -webkit-box-orient: vertical !important;
            overflow: hidden !important;
            white-space: normal !important;
        }
        @media (max-width: 768px) {
            .related-product-card {
                margin-bottom: 20px !important;
            }
            .related-product-card img {
                height: 110px !important;
                object-fit: contain !important;
            }
            .related-product-card .inline_product {
                height: auto !important;
            }
            .related-product-card .single-product-details {
                min-height: 70px !important;
                padding: 5px !important;
            }
            .related-product-card .single-product-details a {
                font-size: 11px !important;
                line-height: 1.2 !important;
                height: 2.4em !important;
                -webkit-line-clamp: 2 !important;
                display: -webkit-box !important;
                -webkit-box-orient: vertical !important;
                overflow: hidden !important;
            }
            .related-product-card .single-product-details span {
                font-size: 10px !important;
            }
            .related-product-card .single-product-details .text-accent {
                font-size: 11px !important;
            }
        }
    </style>
    <style>
        thead {
            background: {{$web_config['primary_color']}} !important;
        }
        /**/
    </style>
@endpush

@section('content')
    <div class="__inline-23">
        <!-- Page Content-->
        <div class="container mt-4 rtl" style="text-align: {{Session::get('direction') === "rtl" ? 'right' : 'left'}};">
            <!-- General info tab-->
            <div class="row {{Session::get('direction') === "rtl" ? '__dir-rtl' : ''}}">
                <!-- Product gallery-->
                <div class="col-lg-9 col-12">
                    <div class="row">
                        <div class="col-lg-5 col-md-4 col-12 mb-4">
                            <div class="cz-product-gallery mb-3" style="display: flow-root;">
                                <div class="cz-preview">
                                    @if($product->images!=null && json_decode($product->images)>0)
                                        @if(json_decode($product->colors) && $product->color_image)
                                            @foreach (json_decode($product->color_image) as $key => $photo)
                                                @if($photo->color != null)
                                                    <div class="cz-preview-item d-flex align-items-center justify-content-center {{$key==0?'active':''}}"
                                                         id="image{{$photo->color}}">
                                                        <img class="cz-image-zoom img-responsive w-100 __max-h-323px"
                                                             onerror="this.src='{{asset('assets/front-end/img/image-place-holder.png')}}'"
                                                             src="{{asset('assets/product/'. $photo->image_name)}}"
                                                             data-zoom="{{asset('/product/'. $photo->image_name)}}"
                                                             alt="Product image" width="">
                                                        <div class="cz-image-zoom-pane"></div>
                                                    </div>
                                                @else
                                                    <div class="cz-preview-item d-flex align-items-center justify-content-center {{$key==0?'active':''}}"
                                                         id="image{{$key}}">
                                                        <img class="cz-image-zoom img-responsive w-100 __max-h-323px"
                                                             onerror="this.src='{{asset('assets/front-end/img/image-place-holder.png')}}'"
                                                             src="{{asset("assets/product/$photo->image_name")}}"
                                                             data-zoom="{{asset("assets/product/$photo->image_name")}}"
                                                             alt="Product image" width="">
                                                        <div class="cz-image-zoom-pane"></div>
                                                    </div>
                                                @endif
                                            @endforeach
                                        @else
                                            @foreach (json_decode($product->images) as $key => $photo)
                                                <div class="cz-preview-item d-flex align-items-center justify-content-center {{$key==0?'active':''}}"
                                                     id="image{{$key}}">
                                                    <img class="cz-image-zoom img-responsive w-100 __max-h-323px"
                                                         onerror="this.src='{{asset('assets/front-end/img/image-place-holder.png')}}'"
                                                         src="{{asset("assets/product/$photo")}}"
                                                         data-zoom="{{asset("assets/product/$photo")}}"
                                                         alt="Product image" width="">
                                                    <div class="cz-image-zoom-pane"></div>
                                                </div>
                                            @endforeach
                                        @endif
                                    @endif
                                </div>

                                <div class="d-flex flex-column gap-3">
                                    <button type="button" onclick="addWishlist('{{$product['id']}}')"
                                            class="btn __text-18px border wishlight-pos-btn d-sm-none">
                                        <i class="fa {{($wishlist_status == 1?'fa-heart':'fa-heart-o')}} wishlist_icon_{{$product['id']}}" style="color: {{$web_config['primary_color']}}"
                                        aria-hidden="true"></i>
                                    </button>

                                    <div style="text-align:{{Session::get('direction') === "rtl" ? 'right' : 'left'}};"
                                        class="sharethis-inline-share-buttons share--icons">
                                    </div>
                                </div>

                                <div class="cz">
                                    <div class="table-responsive __max-h-515px" data-simplebar>
                                        <div class="d-flex">
                                            @if($product->images!=null && json_decode($product->images)>0)
                                                @if(json_decode($product->colors) && $product->color_image)
                                                    @foreach (json_decode($product->color_image) as $key => $photo)
                                                        @if($photo->color != null)
                                                            <div class="cz-thumblist">
                                                                <a class="cz-thumblist-item  {{$key==0?'active':''}} d-flex align-items-center justify-content-center"
                                                                   id="preview-img{{$photo->color}}" href="#image{{$photo->color}}">
                                                                    <img
                                                                        onerror="this.src='{{asset('assets/front-end/img/image-place-holder.png')}}'"
                                                                        src="{{asset("assets/product/$photo->image_name")}}"
                                                                        alt="Product thumb">
                                                                </a>
                                                            </div>
                                                        @else
                                                            <div class="cz-thumblist">
                                                                <a class="cz-thumblist-item  {{$key==0?'active':''}} d-flex align-items-center justify-content-center"
                                                                   id="preview-img{{$key}}" href="#image{{$key}}">
                                                                    <img
                                                                        onerror="this.src='{{asset('assets/front-end/img/image-place-holder.png')}}'"
                                                                        src="{{asset("assets/product/$photo->image_name")}}"
                                                                        alt="Product thumb">
                                                                </a>
                                                            </div>
                                                        @endif
                                                    @endforeach
                                                @else
                                                    @foreach (json_decode($product->images) as $key => $photo)
                                                        <div class="cz-thumblist">
                                                            <a class="cz-thumblist-item  {{$key==0?'active':''}} d-flex align-items-center justify-content-center"
                                                               id="preview-img{{$key}}" href="#image{{$key}}">
                                                                <img
                                                                    onerror="this.src='{{asset('assets/front-end/img/image-place-holder.png')}}'"
                                                                    src="{{asset("assets/product/$photo")}}"
                                                                    alt="Product thumb">
                                                            </a>
                                                        </div>
                                                    @endforeach
                                                @endif
                                            @endif
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Product details-->
                        <div class="col-lg-7 col-md-8 col-12 mt-4 mt-sm-3" style="direction: {{ Session::get('direction') }}">
                            <div class="details __h-100">
                                <span class="mb-2 __inline-24">{{$product->name}}</span>
                                <div class="d-flex flex-wrap align-items-center mb-2 pro">
                                    @include("web-views.partials._product-card-rating", [

                                        "exclude_average" => true
                                    ])
                                    <span
                                        class="d-inline-block  align-middle mt-1 {{Session::get('direction') === "rtl" ? 'ml-md-2 ml-sm-0' : 'mr-md-2 mr-sm-0'}} fs-14 text-muted">

                                        ({{$average_type_ratings}})
                                    </span>
                                    
                                    <span

                                        id="title-count-reviews"

                                        class="font-regular font-for-tab d-inline-block font-size-sm text-body align-middle mt-1 {{Session::get('direction') === "rtl" ? 'mr-1 ml-md-2 ml-1 pr-md-2 pr-sm-1 pl-md-2 pl-sm-1' : 'ml-1 mr-md-2 mr-1 pl-md-2 pl-sm-1 pr-md-2 pr-sm-1'}}"

                                        style="cursor: pointer;"
                                    >

                                        <span style="color: {{$web_config['primary_color']}}">

                                            {{$product->reviews->count()}}
                                        </span>

                                        {{translate('reviews')}}
                                    </span>
                                    <!-- <span class="__inline-25"></span> --> <!-- vertical separator -->

                                </div>
                                <div class="mb-3">
                                    <span class="f-20 font-weight-normal text-accent ">
                                        &#8358;{!! \App\CPU\Helpers::get_price_range_with_discount($product) !!}
                                    </span>
                                </div>

                                <form id="add-to-cart-form" class="mb-2">
                                    @csrf
                                    <input type="hidden" name="id" value="{{ $product->id }}">
                                    <div class="position-relative {{Session::get('direction') === "rtl" ? 'ml-n4' : 'mr-n4'}} mb-2">
                                        @if (count(json_decode($product->colors)) > 0)
                                            <div class="flex-start align-items-center mb-2">
                                                <div class="product-description-label m-0 text-dark font-bold">{{translate('color')}}:
                                                </div>
                                                <div>
                                                    <ul class="list-inline checkbox-color mb-0 flex-start {{Session::get('direction') === "rtl" ? 'mr-2' : 'ml-2'}}"
                                                        style="padding-{{Session::get('direction') === "rtl" ? 'right' : 'left'}}: 0;">
                                                        @foreach (json_decode($product->colors) as $key => $color)
                                                            <li>
                                                                <input type="radio"
                                                                    id="{{ $product->id }}-color-{{ str_replace('#','',$color) }}"
                                                                    name="color" value="{{ $color }}"
                                                                    @if($key == 0) checked @endif>
                                                                <label style="background: {{ $color }};"
                                                                    for="{{ $product->id }}-color-{{ str_replace('#','',$color) }}"
                                                                    data-toggle="tooltip" onclick="focus_preview_image_by_color('{{ str_replace('#','',$color) }}')">
                                                                <span class="outline"></span></label>
                                                            </li>
                                                        @endforeach
                                                    </ul>
                                                </div>
                                            </div>
                                        @endif
                                        @php
                                            $qty = 0;
                                            if(!empty($product->variation)){
                                            foreach (json_decode($product->variation) as $key => $variation) {
                                                    $qty += $variation->qty;
                                                }
                                            }
                                        @endphp
                                    </div>
                                    @foreach (json_decode($product->choice_options) as $key => $choice)
                                        <div class="row flex-start mx-0 align-items-center">
                                            <div
                                                class="product-description-label text-dark font-bold {{Session::get('direction') === "rtl" ? 'pl-2' : 'pr-2'}} text-capitalize mb-2">{{ $choice->title }}
                                                :
                                            </div>
                                            <div>
                                                <ul class="list-inline checkbox-alphanumeric checkbox-alphanumeric--style-1 mb-0 mx-1 flex-start row"
                                                    style="padding-{{Session::get('direction') === "rtl" ? 'right' : 'left'}}: 0;">
                                                    @foreach ($choice->options as $key => $option)
                                                        <div>
                                                            <li class="for-mobile-capacity">
                                                                <input type="radio"
                                                                    id="{{ $choice->name }}-{{ $option }}"
                                                                    name="{{ $choice->name }}" value="{{ $option }}"
                                                                    @if($key == 0) checked @endif >
                                                                <label class="__text-12px"
                                                                    for="{{ $choice->name }}-{{ $option }}">{{ $option }}</label>
                                                            </li>
                                                        </div>
                                                    @endforeach
                                                </ul>
                                            </div>
                                        </div>
                                    @endforeach

                                    <!-- Quantity + Add to cart -->
                                    <div class="mt-3">
                                        <div class="product-quantity d-flex flex-column __gap-15">
                                            <!-- quantity section -->
                                            <div class="d-flex align-items-center gap-3">
                                                <div class="product-description-label text-dark font-bold mt-0">{{translate('quantity')}}:</div>
                                                <div class="d-flex justify-content-center align-items-center quantity-box border rounded border-base"
                                                    style="color: {{$web_config['primary_color']}}">
                                                    <span class="input-group-btn">
                                                        <button class="btn btn-number __p-10" type="button"
                                                                data-type="minus" data-field="quantity"
                                                                disabled="disabled" style="color: {{$web_config['primary_color']}}">
                                                            -
                                                        </button>
                                                    </span>
                                                    <input type="text" name="quantity"
                                                        class="form-control input-number text-center cart-qty-field __inline-29 border-0 "
                                                        placeholder="1" value="{{ $product->minimum_order_qty ?? 1 }}" product-type="{{ $product->product_type }}" min="{{ $product->minimum_order_qty ?? 1 }}" max="{{$product['product_type'] == 'physical' ? ($product['stock_status'] == 'available_on_order' ? 1000 : $product->current_stock) : 100}}">
                                                    <span class="input-group-btn">
                                                        <button class="btn btn-number __p-10" type="button" product-type="{{ $product->product_type }}" data-type="plus"
                                                                data-field="quantity" style="color: {{$web_config['primary_color']}}">
                                                        +
                                                        </button>
                                                    </span>
                                                </div>
                                            </div>
                                            <div id="chosen_price_div">
                                                <div class="d-none d-sm-flex justify-content-start align-items-center {{Session::get('direction') === "rtl" ? 'ml-2' : 'mr-2'}}">
                                                    <div class="product-description-label text-dark font-bold text-capitalize"><strong>{{translate('total_price')}}</strong> : &#8358;</div><!-- naira sign -->
                                                    &nbsp; <strong id="chosen_price" class="text-base"></strong>
                                                    <small class="{{Session::get('direction') === "rtl" ? 'mr-2' : 'ml-2'}}  font-regular">
                                                        (<small>{{translate('tax')}} : </small>
                                                        <small id="set-tax-amount"></small>)
                                                    </small>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row no-gutters d-none mt-2 flex-start d-flex">
                                        <div class="col-12">
                                            @if($product['product_type'] == 'physical')
                                                @if($product['stock_status'] == 'out_of_stock' || ($product['stock_status'] == 'in_stock' && $product['current_stock'] <= 0))
                                                    <h5 class="mt-3 text-danger">{{translate('out_of_stock')}}</h5>
                                                @elseif($product['stock_status'] == 'available_on_order')
                                                    <h5 class="mt-3 text-success">{{translate('available_on_order')}}</h5>
                                                @endif
                                            @endif
                                        </div>
                                    </div>

                                    <div class="__btn-grp mt-2 mb-3 d-flex">
                                        @if(($product->added_by == 'seller' && ($seller_temporary_close || (isset($product->seller->shop) && $product->seller->shop->vacation_status && $current_date >= $seller_vacation_start_date && $current_date <= $seller_vacation_end_date))) ||
                                         ($product->added_by == 'admin' && ($inhouse_temporary_close || ($inhouse_vacation_status && $current_date >= $inhouse_vacation_start_date && $current_date <= $inhouse_vacation_end_date))))
                                            <button class="btn btn-secondary" type="button" disabled>
                                                {{translate('buy_now')}}
                                            </button>
                                            <button class="btn btn--primary string-limit" type="button" disabled>
                                                {{translate('add_to_cart')}}
                                            </button>
                                         @elseif(($product['product_type'] == 'physical') && ($product['stock_status'] == 'out_of_stock' || ($product['stock_status'] == 'in_stock' && $product['current_stock'] <= 0)))
                                            <button class="btn btn-secondary" type="button" disabled>
                                                {{translate('out_of_stock')}}
                                            </button>
                                            <button class="btn btn--primary string-limit" type="button" disabled>
                                                {{translate('out_of_stock')}}
                                            </button>
                                        @else
                                            <button class="btn btn-secondary element-center __iniline-26 btn-gap-{{Session::get('direction') === "rtl" ? 'left' : 'right'}}" onclick="buy_now()" type="button">
                                                <span class="string-limit">{{translate('buy_now')}}</span>
                                            </button>
                                            <button
                                                class="btn btn--primary element-center btn-gap-{{Session::get('direction') === "rtl" ? 'left' : 'right'}}"
                                                onclick="addToCart()" type="button">
                                                <span class="string-limit">{{translate('add_to_cart')}}</span>
                                            </button>
                                        @endif
                                        <button type="button" onclick="addWishlist('{{$product['id']}}')"
                                                class="btn __text-18px border d-none d-sm-block">
                                            <i class="fa {{($wishlist_status == 1?'fa-heart':'fa-heart-o')}} wishlist_icon_{{$product['id']}}" style="color: {{$web_config['primary_color']}}"
                                            aria-hidden="true"></i>
                                            <span class="fs-14 text-muted align-bottom countWishlist-{{$product['id']}}">{{$countWishlist}}</span>
                                        </button>
                                    </div>

                                    @php($whatsapp = \App\CPU\Helpers::get_business_settings('whatsapp'))
                                    <div class="__btn-grp mt-2 mb-3 d-flex gap-2">
                                        @if(isset($whatsapp) && $whatsapp['status'] == 1 && $whatsapp['phone'])
                                            <a href="{{ \App\CPU\Helpers::get_whatsapp_link($whatsapp['phone'], translate('Hello, I’m interested in ') . $product->name) }}"
                                               class="btn btn-success d-flex align-items-center gap-2" target="_blank" style="background-color: #25D366; border-color: #25D366;">
                                                <i class="fa fa-whatsapp"></i>
                                                {{translate('order_via_WhatsApp')}}
                                            </a>
                                        @endif
                                        <a href="{{route('contacts', ['subject' => translate('request_quote_for') . ': ' . $product->name])}}"
                                           class="btn btn-outline-primary d-flex align-items-center gap-2">
                                            <i class="fa fa-info-circle"></i>
                                            {{translate('request_quote')}}
                                        </a>
                                    </div>
                                </form>

                            </div>
                        </div>
                    </div>
                    <div style="clear: both; height: 20px;"></div>
                    <div class="row mt-8" style="clear: both; margin-top: 50px !important;">
                        <div class="rtl col-12" style="text-align: {{Session::get('direction') === "rtl" ? 'right' : 'left'}};">
                            <div class="row" >
                                <div class="col-12">
                                    <div>
                                        <div class="px-4 pb-3 mb-3 mr-0 mr-md-2 bg-white __review-overview __rounded-10 pt-3">
                                            <!-- Tabs-->
                                            <ul class="nav nav-tabs nav--tabs d-flex justify-content-center mt-3" role="tablist">
                                                <li class="nav-item">
                                                    <a class="nav-link __inline-27 active " href="#overview" data-toggle="tab" role="tab">
                                                        {{translate('overview')}}
                                                    </a>
                                                </li>
                                                <li class="nav-item">
                                                    <a class="nav-link __inline-27" href="#reviews" data-toggle="tab" role="tab" id="reviews-tab-button">
                                                        {{translate('reviews')}}
                                                    </a>
                                                </li>
                                            </ul>
                                            <div class="tab-content px-lg-3">
                                                <!-- Tech specs tab-->
                                                <div class="tab-pane fade show active text-justify" id="overview" role="tabpanel">
                                                    <div class="row pt-2 specification">
                                                        @if($product->material || $product->capacity || $product->power_type || $product->dimensions)
                                                            <div class="col-12 mb-4">
                                                                <h4 class="mb-3">{{translate('specifications')}}</h4>
                                                                <div class="table-responsive">
                                                                    <table class="table table-bordered">
                                                                        <tbody>
                                                                            @if($product->material)
                                                                                <tr>
                                                                                    <th class="bg-light w-25">{{translate('material')}}</th>
                                                                                    <td>{{$product->material}}</td>
                                                                                </tr>
                                                                            @endif
                                                                            @if($product->capacity)
                                                                                <tr>
                                                                                    <th class="bg-light w-25">{{translate('capacity')}}</th>
                                                                                    <td>{{$product->capacity}}</td>
                                                                                </tr>
                                                                            @endif
                                                                            @if($product->power_type)
                                                                                <tr>
                                                                                    <th class="bg-light w-25">{{translate('power_type')}} / (gas/electric)</th>
                                                                                    <td>{{$product->power_type}}</td>
                                                                                </tr>
                                                                            @endif
                                                                            @if($product->dimensions)
                                                                                <tr>
                                                                                    <th class="bg-light w-25">{{translate('dimensions')}}</th>
                                                                                    <td>{{$product->dimensions}}</td>
                                                                                </tr>
                                                                            @endif
                                                                        </tbody>
                                                                    </table>
                                                                </div>
                                                            </div>
                                                        @endif
                                                        @if($product->video_url != null && (str_contains($product->video_url, "youtube.com/embed/")))
                                                            <div class="col-12 mb-4">
                                                                <iframe width="420" height="315"
                                                                        src="{{$product->video_url}}">
                                                                </iframe>
                                                            </div>
                                                        @endif
                                                        @if ($product['details'])
                                                            <div class="text-body col-lg-12 col-md-12 overflow-scroll fs-13 text-justify">
                                                                {!! $product['details'] !!}
                                                            </div>
                                                        @endif

                                                    </div>
                                                    @if (!$product['details'] && ($product->video_url == null || !(str_contains($product->video_url, "youtube.com/embed/"))))
                                                        <div>
                                                            <div class="text-center text-capitalize">
                                                                <img class="mw-90" src="{{asset('assets/front-end/img/icons/nodata.svg')}}" alt="">
                                                                <p class="text-capitalize mt-2">
                                                                    <small>{{translate('product_details_not_found')}}!</small>
                                                                </p>
                                                            </div>
                                                        </div>
                                                    @endif
                                                </div>

                                                <!-- Reviews tab-->
                                                <div class="tab-pane fade" id="reviews" role="tabpanel">
                                                    @include('web-views.products.review-lines')

                                                    <div class="row pb-4">
                                                        <div class="col-12" id="product-review-list">
                                                            @include('web-views.partials.product-reviews')
                                                        </div>

                                                        @if(count($product->reviews) > 2)
                                                        <div class="col-12">
                                                            <div class="card-footer d-flex justify-content-center align-items-center">
                                                                <button class="btn text-white view_more_button" style="background: {{$web_config['primary_color']}};" onclick="load_review()">{{translate('view_more')}}</button>
                                                            </div>
                                                        </div>
                                                        @endif
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3">
                    <!-- Delivery & Returns -->
                    <div class="jumia-card">
                        <div class="card-header">
                            {{translate('delivery_&_returns')}}
                        </div>
                        <div class="card-body">
                            <div class="delivery-item">
                                <i class="tio-delivery"></i>
                                <div class="delivery-text w-100">
                                    <a href="javascript:" class="details-link" data-toggle="modal" data-target="#deliveryDetailsModal" data-type="pickup">{{translate('details')}}</a>
                                    <h6>{{translate('pickup_station')}}</h6>
                                    <p>{{translate('delivery_fees')}} {{\App\CPU\Helpers::currency_converter($delivery_info['delivery_cost'])}}</p>
                                    <p>{{translate('ready_for_pickup_between')}} {{ date('d M', strtotime('+2 days')) }} - {{ date('d M', strtotime('+4 days')) }}</p>
                                </div>
                            </div>

                            <div class="delivery-item">
                                <i class="tio-bike"></i>
                                <div class="delivery-text w-100">
                                    <a href="javascript:" class="details-link" data-toggle="modal" data-target="#deliveryDetailsModal" data-type="door">{{translate('details')}}</a>
                                    <h6>{{translate('door_delivery')}}</h6>
                                    <p>{{translate('delivery_fees')}} {{\App\CPU\Helpers::currency_converter($delivery_info['delivery_cost'])}}</p>
                                    <p>{{translate('ready_for_delivery_between')}} {{ date('d M', strtotime('+2 days')) }} - {{ date('d M', strtotime('+4 days')) }}</p>
                                </div>
                            </div>

                            <div class="delivery-item">
                                <i class="tio-restore"></i>
                                <div class="delivery-text w-100">
                                    <a href="{{route('return-policy')}}" class="details-link">{{translate('details')}}</a>
                                    <a href="{{route('return-policy')}}" style="color: inherit; text-decoration: none;">
                                        <h6>{{translate('return_policy')}}</h6>
                                        <p>{{translate('free_return_within_3_days_for_all_eligible_items')}}.</p>
                                    </a>
                                </div>
                            </div>

                            @php($installation_policy = \App\CPU\Helpers::get_business_settings('installation-policy'))
                            @if(isset($installation_policy['status']) && $installation_policy['status'] == 1 && ($product->installation_fee ?? 0) > 0)
                            <div class="delivery-item">
                                <i class="tio-settings"></i>
                                <div class="delivery-text w-100">
                                    <a href="{{route('installation-policy')}}" class="details-link">{{translate('details')}}</a>
                                    <a href="{{route('installation-policy')}}" style="color: inherit; text-decoration: none;">
                                        <h6>{{translate('installation_policy')}}</h6>
                                        <p>{{translate('professional_installation_services_available')}}.</p>
                                    </a>
                                </div>
                            </div>
                            @endif
                        </div>
                    </div>


                    <!-- More from this store -->
                    <div class="jumia-card mt-3">
                        <div class="card-header">
                            {{ translate('more_from_the_store')}}
                        </div>
                        <div class="card-body p-2">
                            @foreach($more_product_from_seller as $item)
                                @include('web-views.partials.seller-products-product-details',['product'=>$item,'decimal_point_settings'=>$decimal_point_settings])
                            @endforeach
                    </div>
                </div>
            </div>
        </div>
        </div>
        <!-- for mobile -->
        <div class="bottom-sticky bg-white d-sm-none">
            <div class="d-flex flex-column gap-1 py-2">
                <div class="d-flex justify-content-center align-items-center fs-13">
                    <div class="product-description-label text-dark font-bold"><strong class="text-capitalize">{{translate('total_price')}}</strong> : </div>
                    &nbsp; <strong id="chosen_price_mobile" class="text-base"></strong>
                    <small class="ml-2  font-regular">
                        (<small>{{translate('tax')}} : </small>
                        <small id="set-tax-amount-mobile"></small>)
                    </small>
                </div>
                <div class="d-flex gap-3 justify-content-center">
                    @if(($product->added_by == 'seller' && ($seller_temporary_close || (isset($product->seller->shop) && $product->seller->shop->vacation_status && $current_date >= $seller_vacation_start_date && $current_date <= $seller_vacation_end_date))) ||
                        ($product->added_by == 'admin' && ($inhouse_temporary_close || ($inhouse_vacation_status && $current_date >= $inhouse_vacation_start_date && $current_date <= $inhouse_vacation_end_date))))
                        <button class="btn btn-secondary btn-sm btn-gap-{{Session::get('direction') === "rtl" ? 'left' : 'right'}}" type="button" disabled>
                            {{translate('buy_now')}}
                        </button>
                        <button class="btn btn--primary btn-sm string-limit btn-gap-{{Session::get('direction') === "rtl" ? 'left' : 'right'}}" type="button" disabled>
                            {{translate('add_to_cart')}}
                        </button>
                    @elseif(($product['product_type'] == 'physical') && ($product['stock_status'] == 'out_of_stock' || ($product['stock_status'] == 'in_stock' && $product['current_stock'] <= 0)))
                        <button class="btn btn-secondary btn-sm btn-gap-{{Session::get('direction') === "rtl" ? 'left' : 'right'}}" type="button" disabled>
                            {{translate('out_of_stock')}}
                        </button>
                        <button class="btn btn--primary btn-sm string-limit btn-gap-{{Session::get('direction') === "rtl" ? 'left' : 'right'}}" type="button" disabled>
                            {{translate('out_of_stock')}}
                        </button>
                   @else
                       <button class="btn btn-secondary btn-sm btn-gap-{{Session::get('direction') === "rtl" ? 'left' : 'right'}}" onclick="buy_now()" type="button">
                           <span class="string-limit">{{translate('buy_now')}}</span>
                       </button>
                       <button
                           class="btn btn--primary btn-sm string-limit btn-gap-{{Session::get('direction') === "rtl" ? 'left' : 'right'}}"
                           onclick="addToCart()" type="button">
                           <span class="string-limit">{{translate('add_to_cart')}}</span>
                       </button>
                   @endif
                </div>
            </div>
        </div>
        <!-- end -->

        @if (count($relatedProducts)>0)
            <div class="container rtl" style="text-align: {{Session::get('direction') === "rtl" ? 'right' : 'left'}};">
                <div style="background:#fff; border-radius:8px; padding: 20px 20px 20px 20px; display: flow-root;">
                    <div class="d-flex justify-content-between align-items-center mb-3">
                        <h4 class="text-capitalize font-bold mb-0">{{ translate('similar_products')}}</h4>
                        <div>
                            @php($category=json_decode($product['category_ids']))
                            @if($category)
                                <a class="text-capitalize view-all-text" style="color:{{$web_config['primary_color']}} !important;"
                                href="{{route('products',['id'=> $category[0]->id,'data_from'=>'category','page'=>1])}}">{{ translate('view_all')}}
                                <i class="czi-arrow-{{Session::get('direction') === "rtl" ? 'left mr-1 ml-n1 mt-1' : 'right ml-1 mr-n1'}}"></i>
                                </a>
                            @endif
                        </div>
                    </div>
                    <!-- Product grid -->
                    <div class="row g-2">
                        @foreach($relatedProducts as $key => $relatedProduct)
                            <div class="col-xl-2 col-sm-3 col-6 mb-4 related-product-card" style="padding: 8px;">
                                @include('web-views.partials._single-product',['product'=>$relatedProduct,'decimal_point_settings'=>$decimal_point_settings])
                            </div>
                        @endforeach
                    </div>
                </div>
                <div style="height: 40px;"></div>
            </div>
        @endif

        <div class="modal fade rtl" id="show-modal-view" tabindex="-1" role="dialog" aria-labelledby="show-modal-image"
            aria-hidden="true" style="text-align: {{Session::get('direction') === "rtl" ? 'right' : 'left'}};">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-body flex justify-content-center">
                        <button class="btn btn-default __inline-33" style="{{Session::get('direction') === "rtl" ? 'left' : 'right'}}: -7px;"
                                data-dismiss="modal">
                            <i class="fa fa-close"></i>
                        </button>
                        <img class="element-center" id="attachment-view" src="">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Modal -->
    @include('layouts.front-end.partials.modal._chatting',['seller'=>$product->seller])

    <div class="modal fade" id="remove-wishlist-modal">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header border-0">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body pb-5">
                    <div class="text-center">
                        <img src="{{asset('assets/front-end/img/icons/remove-wishlist.png')}}" alt="">
                        <h6 class="font-semibold mt-3 mb-4 mx-auto __max-w-220">{{translate('Product_has_been_removed_from_wishlist')}}?</h6>
                    </div>
                    <div class="d-flex gap-3 justify-content-center">
                        <a href="javascript:" class="btn btn--primary __rounded-10" data-dismiss="modal">
                            {{translate('Okay')}}
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

    <!-- Delivery Details Modal -->
    <div class="modal fade" id="deliveryDetailsModal" tabindex="-1" role="dialog" aria-labelledby="deliveryDetailsModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header border-0 pb-0">
                    <h5 class="modal-title font-bold" id="deliveryDetailsModalLabel">{{translate('delivery_details')}}</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div id="modal-content-pickup" class="d-none">
                        <h6 class="text-uppercase fs-12 text-muted mb-2">{{translate('pickup_station')}}</h6>
                        <p class="fs-13 mb-4">
                            {{translate('delivery_time_starts_from_the_day_you_place_your_order_to_the_day_your_order_arrives_at_the_pickup_station._You_will_be_notified_of_your_order\'s_arrival,_and_you_have_to_retrieve_it_within_5_days._If_the_order_is_not_picked_up,_it_will_be_automatically_cancelled.')}}
                        </p>
                    </div>
                    <div id="modal-content-door" class="d-none">
                        <h6 class="text-uppercase fs-12 text-muted mb-2">{{translate('door_delivery')}}</h6>
                        <p class="fs-13 mb-4">
                            {{translate('delivery_time_starts_from_the_day_you_place_your_order_to_the_day_your_order_arrives_at_your_doorstep._Our_delivery_partner_will_call_you_to_coordinate_the_delivery.')}}
                        </p>
                    </div>

                    <div class="border-top pt-3">
                        <h6 class="text-uppercase fs-12 text-muted mb-3">{{translate('delivery_fee_details')}}</h6>
                        @foreach($shipping_methods as $method)
                            <div class="d-flex justify-content-between align-items-center mb-2">
                                <span class="fs-14">{{$method['title']}}</span>
                                <span class="fs-14 font-bold">{{\App\CPU\Helpers::currency_converter($method['cost'])}}</span>
                            </div>
                        @endforeach
                    </div>
                </div>
            </div>
        </div>
    </div>

@push('script')
    <script>
        $(document).ready(function() {
            const $stickyElement = $('.bottom-sticky');
            const $offsetElement = $('.__btn-grp'); // Using the desktop buttons as offset

            if ($stickyElement.length && $offsetElement.length) {
                $(window).on('scroll', function() {
                    const elementOffset = $offsetElement.offset().top;
                    const scrollTop = $(window).scrollTop();

                    if (scrollTop >= elementOffset) {
                        $stickyElement.addClass('stick');
                    } else {
                        $stickyElement.removeClass('stick');
                    }
                });
            }
        });
    </script>

    <script type="text/javascript">
        cartQuantityInitialize();
        getVariantPrice();
        $('#add-to-cart-form input').on('change', function () {
            getVariantPrice();
        });

        function showInstaImage(link) {
            $("#attachment-view").attr("src", link);
            $('#show-modal-view').modal('toggle')
        }

        function focus_preview_image_by_color(key){
            $('a[href="#image'+key+'"]')[0].click();
        }
    </script>
    <script>
        let load_review_count = 1;
        function load_review()
        {

            $.ajaxSetup({
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="_token"]').attr('content')
                    }
                });
            $.ajax({
                    type: "post",
                    url: '{{route('review-list-product')}}',
                    data:{
                        product_id:{{$product->id}},
                        offset:load_review_count
                    },
                    success: function (data) {
                        $('#product-review-list').append(data.productReview)
                        if(data.checkReviews == 0){
                            $('.view_more_button').removeClass('d-none').addClass('d-none')
                        }else{
                            $('.view_more_button').addClass('d-none').removeClass('d-none')
                        }
                    }
                });
                load_review_count++
        }

        $("#title-count-reviews").on("click", function(e) {

            var reviewsButton = $("#reviews-tab-button");

            reviewsButton.trigger("click");

            $("html, body").animate({

                scrollTop: reviewsButton.offset().top
            }, 1000);
        });
    </script>

    {{-- Messaging with shop seller --}}
    <script>
         $('#chat-form').on('submit', function (e) {
            e.preventDefault();

            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="_token"]').attr('content')
                }
            });

            $.ajax({
                type: "post",
                url: '{{route('messages_store')}}',
                data: $('#chat-form').serialize(),
                success: function (respons) {

                    toastr.success('{{translate("message_send_successfully")}}', {
                        CloseButton: true,
                        ProgressBar: true
                    });
                    $('#chat-form').trigger('reset');
                }
            });

        });
    </script>

    <script type="text/javascript"
            src="https://platform-api.sharethis.com/js/sharethis.js#property=5f55f75bde227f0012147049&product=sticky-share-buttons"
            async="async"></script>
    <script>
        $(document).ready(function() {
            $('#deliveryDetailsModal').on('show.bs.modal', function (event) {
                var button = $(event.relatedTarget);
                var type = button.data('type');
                var modal = $(this);
                
                modal.find('#modal-content-pickup').addClass('d-none');
                modal.find('#modal-content-door').addClass('d-none');
                
                if(type === 'pickup') {
                    modal.find('#modal-content-pickup').removeClass('d-none');
                } else {
                    modal.find('#modal-content-door').removeClass('d-none');
                }
            });
        });
    </script>
@endpush
