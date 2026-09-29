<div class="product-single-hover style--card" >
    <div class="overflow-hidden position-relative">
        <div class=" inline_product clickable d-flex justify-content-center">
            @if($product->discount > 0)
            <span class="for-discoutn-value p-1 pl-2 pr-2">
            @if ($product->discount_type == 'percent')
                    {{round($product->discount, (!empty($decimal_point_settings) ? $decimal_point_settings: 0))}}%
                @elseif($product->discount_type =='flat')
                    {{\App\CPU\Helpers::currency_converter($product->discount)}}
                @endif
                {{translate('off')}}
            </span>
            @else
                <div class="d-flex justify-content-end for-dicount-div-null">
                    <span class="for-discoutn-value-null"></span>
                </div>
            @endif
            <div class="p-10px pb-0">
                <a href="{{route('product',$product->slug)}}" class="w-100">
                    <img src="{{asset('assets/product/thumbnail')}}/{{$product['thumbnail']}}"
                        onerror="this.src='{{asset('assets/front-end/img/image-place-holder.png')}}'">
                </a>
            </div>

            <div class="quick-view">
                <a class="btn-circle stopPropagation" href="javascript:" onclick="quickView('{{$product->id}}')">
                    <i class="czi-eye align-middle"></i>
                </a>
            </div>
            @if($product->product_type == 'physical' && $product->current_stock <= 0)
                <span class="out_fo_stock">{{translate('out_of_stock')}}</span>
            @endif
        </div>
        <div class="single-product-details">
            
            <div class="text-center">
                <a href="{{route('product',$product->slug)}}" style="display: -webkit-box; -webkit-line-clamp: 2; -webkit-box-orient: vertical; overflow: hidden; text-overflow: ellipsis; line-height: 1.3; max-height: 2.6em; word-break: break-word; color: inherit;">
                    {{ $product['name'] }}
                </a>
            </div>
            <div class="justify-content-between text-center">
                <div class="product-price text-center d-flex flex-wrap justify-content-center align-items-center gap-8">
                    @if($product->discount > 0)
                        <strike style="font-size: 12px!important;color: #9B9B9B!important;">
                            {{\App\CPU\Helpers::currency_converter($product->unit_price)}}
                        </strike><br>
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
