<div class="col-lg-6 px-max-md-0">
    <div class="card card __shadow h-100">
        <div class="card-body p-xl-35">
            <div class="row d-flex justify-content-between mx-1 mb-3">
                <div>
                    <img class="size-30"
                        src="{{$grid_icon}}"
                        alt="">
                    <span class="font-bold pl-1">{{ $grid_title}}</span>
                </div>
                @isset ($view_more_link)
                    <div>
                        <a class="text-capitalize view-all-text" style="color: {{$web_config['primary_color']}}!important"
                        href="{{$view_more_link}}">{{ translate('view_all')}}
                            <i class="czi-arrow-{{Session::get('direction') === "rtl" ? 'left mr-1 ml-n1 mt-1 float-left' : 'right ml-1 mr-n1'}}"></i>
                        </a>
                    </div>
                @endisset
            </div>
            <div class="row g-3">
                @foreach($products as $product)
                    <div class="col-sm-6">
                        <a class="__best-selling" href="{{route('product',$product->slug)}}">
                            
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
                                </div>
                            </div>
                        </a>
                    </div>
                @endforeach
            </div>
        </div>
    </div>
</div>
