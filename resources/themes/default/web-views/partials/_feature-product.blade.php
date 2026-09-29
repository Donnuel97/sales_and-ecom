<div class="product-single-hover shadow-none rtl">
    <div class="overflow-hidden position-relative">
        <div class="inline_product clickable">
            @if($product->discount > 0)
                <span class="for-discoutn-value p-1 pl-2 pr-2">
                @if ($product->discount_type == 'percent')
                        {{round($product->discount,(!empty($decimal_point_settings) ? $decimal_point_settings: 0))}}%
                    @elseif($product->discount_type =='flat')
                        {{\App\CPU\Helpers::currency_converter($product->discount)}}
                    @endif
                    {{translate('off')}}
                </span>
            @else
                <span class="for-discoutn-value-null"></span>
            @endif
                <a href="{{route('product',$product->slug)}}">
                    <img src="{{asset('assets/product/thumbnail')}}/{{$product['thumbnail']}}"
                        onerror="this.src='{{asset('assets/front-end/img/image-place-holder.png')}}'">
                </a>

            <div class="quick-view" >
                <a class="btn-circle stopPropagation" href="javascript:" onclick="quickView('{{$product->id}}')">
                    <i class="czi-eye align-middle"></i>
                </a>
            </div>
            @if($product->product_type == 'physical')
                @if($product->stock_status == 'out_of_stock' || ($product->stock_status == 'in_stock' && $product->current_stock <= 0))
                    <span class="out_fo_stock">{{translate('out_of_stock')}}</span>
                @elseif($product->stock_status == 'available_on_order')
                    <span class="out_fo_stock" style="background: #2ecc71 !important;">{{translate('available_on_order')}}</span>
                @endif
            @endif
        </div>
        <div class="single-product-details">
            @include("web-views.partials._product-card-rating")

            <div>
                <a href="{{route('product',$product->slug)}}" class="text-capitalize fw-semibold" style="display: -webkit-box; -webkit-line-clamp: 2; -webkit-box-orient: vertical; overflow: hidden; text-overflow: ellipsis; line-height: 1.3; max-height: 2.6em; word-break: break-word;">
                    {{ $product['name'] }}
                </a>
            </div>
            <div class="justify-content-between">
                <div class="product-price">
                    @if($product->discount > 0)
                        <strike style="font-size: 12px!important;color: #9B9B9B!important;margin-inline-end:5px">
                            {{\App\CPU\Helpers::currency_converter($product->unit_price)}}
                        </strike>
                    @endif
                    <span class="text-accent text-dark">
                        {{\App\CPU\Helpers::currency_converter(
                            $product->unit_price-(\App\CPU\Helpers::get_product_discount($product,$product->unit_price))
                        )}}
                    </span>
                </div>
            </div>
        </div>
    </div>
</div>

