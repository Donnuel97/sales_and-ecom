@if(isset($product))
    <div class="flash_deal_product rtl" style="cursor: pointer; margin-bottom:10px;"
         onclick="location.href='{{route('product',$product->slug)}}'">
        @if($product->discount > 0)
        <div class="d-flex" style="position:absolute;z-index:2;">
            <span class="for-discoutn-value p-1 pl-2 pr-2" style="{{Session::get('direction') === "rtl" ? 'border-radius:0px 5px' : 'border-radius:5px 0px'}};">
                @if ($product->discount_type == 'percent')
                    {{round($product->discount,(!empty($decimal_point_settings) ? $decimal_point_settings: 0))}}%
                @elseif($product->discount_type =='flat')
                    {{\App\CPU\Helpers::currency_converter($product->discount)}}
                @endif {{ translate('off')}}
            </span>
        </div>
        @endif
        <div class="d-flex">
            <div class="d-flex align-items-center justify-content-center p-3">
                <div class="flash-deals-background-image" style="background: {{$web_config['primary_color']}}10">
                    <img class="__img-125px"
                     src="{{asset('assets/product/thumbnail')}}/{{$product['thumbnail']}}"
                     onerror="this.src='{{asset('assets/front-end/img/image-place-holder.png')}}'"/>
                </div>
            </div>
            <div class=" flash_deal_product_details pl-3 pr-3 pr-1 d-flex align-items-center">
                <div>
                    <div>
                        <a href="{{route('product',$product->slug)}}" class="flash-product-title d-block text-capitalize fw-semibold" style="display: -webkit-box; -webkit-line-clamp: 2; -webkit-box-orient: vertical; overflow: hidden; text-overflow: ellipsis; line-height: 1.3; max-height: 2.6em; word-break: break-word; color: inherit;">
                            {{$product['name']}}
                        </a>
                    </div>
                    
                    @include("web-views.partials._product-card-rating")
                    <div class="d-flex flex-wrap gap-8 align-items-center row-gap-0">
                        @if($product->discount > 0)
                            <strike
                                style="font-size: 12px!important;color: #9B9B9B!important;">
                                &#8358;{{\App\CPU\Helpers::currency_converter($product->unit_price)}}
                            </strike>
                        @endif
                        <span class="flash-product-price fw-semibold text-dark">
                            &#8358;{{\App\CPU\Helpers::currency_converter($product->unit_price-\App\CPU\Helpers::get_product_discount($product,$product->unit_price))}}
                        </span>
                    </div>

                </div>
            </div>
        </div>
    </div>
@endif
