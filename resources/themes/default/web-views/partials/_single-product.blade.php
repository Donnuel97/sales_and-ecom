@if(!empty($product))
<div class="product-single-hover style--card" ><!-- this is the product card -->
    <div class="overflow-hidden position-relative">
        <div class=" inline_product clickable d-flex justify-content-center">
            @if($product->discount > 0)
                <div class="d-flex">
                        <span class="for-discoutn-value p-1 pl-2 pr-2">
                        @if ($product->discount_type == 'percent')
                                {{round($product->discount,(!empty($decimal_point_settings) ? $decimal_point_settings: 0))}}%
                            @elseif($product->discount_type =='flat')
                                {{\App\CPU\Helpers::currency_converter($product->discount)}}
                            @endif
                            {{translate('off')}}
                        </span>
                </div>
            @else
                <div class="d-flex justify-content-end for-dicount-div-null">
                    <span class="for-discoutn-value-null"></span>
                </div>
            @endif
            <div class="p-10px pb-0">
                <a href="{{route('product',$product->slug)}}" class="w-100">
                    <img src="{{asset('assets/product/thumbnail/'. $product['thumbnail'])}}"
                        onerror="this.src='{{asset('assets/front-end/img/image-place-holder.png')}}'">
                </a>
            </div>

            <div class="quick-view">
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
        <div class="single-product-details p-2">
            <div class="d-flex justify-content-between align-items-start">
                <div class="flex-grow-1 mr-1">
                    <a href="{{route('product',$product->slug)}}" style="font-size: 0.85rem; font-weight: bold; line-height: 1.3; height: 2.6em; max-height: 2.6em; overflow: hidden; display: -webkit-box; -webkit-line-clamp: 2; -webkit-box-orient: vertical; word-break: break-word; color: inherit;">
                        {{ $product['name'] }}
                    </a>
                </div>
                @if (!empty($product->seller) && isset($product->seller->status) && $product->seller->status == \App\Model\Seller::STATUS_APPROVED_2)
                    <div class="flex-shrink-0 ml-1" data-toggle="tooltip" data-html="true" data-placement="bottom" title="This product is uploaded by a verified level 3 seller">
                        <img src="{{asset('assets/png/trusted.png')}}" style="max-width: 20px; max-height: 20px;">
                    </div>
                @endif
            </div>

            <div class="d-flex align-items-center mt-1" style="font-size: 70%;">
                <span>Min. Order:</span>
                <span class="ml-1">
                    {{$product->minimum_order_qty}} pcs
                </span>
            </div>

            <!-- discount/price section -->
            <div class="d-flex flex-wrap align-items-center mt-1 mb-1">
                @if($product->discount > 0)
                    <strike style="font-size: 10px!important;color: #9B9B9B!important; margin-right: 4px;">&#8358;{{\App\CPU\Helpers::currency_converter($product->unit_price)}}</strike>
                @endif
                <span class="text-accent text-dark" style="font-size: 0.9rem;">
                    &#8358;{{\App\CPU\Helpers::currency_converter(
                        $product->unit_price-(\App\CPU\Helpers::get_product_discount($product,$product->unit_price))
                    )}}
                </span>
            </div>
        </div>
    </div>
</div>
@endif