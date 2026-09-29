<div class="col-lg-6 px-max-md-0">
    <div class="card card __shadow h-100">
        <div class="card-body p-xl-35">
            <div class="row d-flex justify-content-between mx-1 mb-3">
                <div>
                    <img class="size-30"
                        src="{{asset("assets/front-end/png/best sellings.png")}}"
                        alt="">
                    <span class="font-bold pl-1">{{ translate('best_sellings')}}</span>
                </div>
                <div>
                    <a class="text-capitalize view-all-text" style="color: {{$web_config['primary_color']}}!important"
                    href="{{route('products',['data_from'=>'best-selling','page'=>1])}}">{{ translate('view_all')}}
                        <i class="czi-arrow-{{Session::get('direction') === "rtl" ? 'left mr-1 ml-n1 mt-1 float-left' : 'right ml-1 mr-n1'}}"></i>
                    </a>
                </div>
            </div>
            <div class="row g-3">
                @foreach($bestSellProduct as $key=>$bestSell)
                    @php($product = $bestSell instanceof \App\Model\Product ? $bestSell : $bestSell->product)
                    @if($product && $key<6)
                        <div class="col-sm-6">
                            <a class="__best-selling" href="{{route('product',$product->slug)}}">
                                @if($product->discount > 0)
                                    <div class="d-flex">
                                        <span class="for-discoutn-value p-1 pl-2 pr-2"
                                            style="{{Session::get('direction') === "rtl" ? 'border-radius:0px 5px' : 'border-radius:5px 0px'}};">
                                            @if ($product->discount_type == 'percent')
                                                {{round($product->discount)}}%
                                            @elseif($product->discount_type =='flat')
                                                {{\App\CPU\Helpers::currency_converter($product->discount)}}
                                            @endif {{translate('off')}}
                                        </span>
                                    </div>
                                @endif
                                <div class="d-flex flex-wrap">
                                    <div class="best-selleing-image">
                                        <img class="rounded"
                                            onerror="this.src='{{asset('assets/front-end/img/image-place-holder.png')}}'"
                                            src="{{asset('assets/product/thumbnail')}}/{{$product['thumbnail']}}"
                                            alt="Product"/>
                                    </div>
                                    <div class="best-selling-details">
                                        <h6 class="widget-product-title">
                                        <span class="ptr fw-semibold">
                                            {{\Illuminate\Support\Str::limit($product['name'],100)}}
                                        </span>
                                        </h6>
                                        
                                        <div class="widget-product-meta d-flex flex-wrap gap-8 align-items-center row-gap-0">
                                            <span>
                                                @if($product->discount > 0)
                                                    <strike class="__color-9B9B9B __text-12px">
                                                        {{\App\CPU\Helpers::currency_converter($product->unit_price)}}
                                                    </strike>
                                                @endif
                                            </span>
                                            <span class="text-accent text-dark">
                                                {{\App\CPU\Helpers::currency_converter(
                                                $product->unit_price-(\App\CPU\Helpers::get_product_discount($product,$product->unit_price))
                                                )}}
                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                    @endif
                @endforeach
            </div>
        </div>
    </div>
</div>
