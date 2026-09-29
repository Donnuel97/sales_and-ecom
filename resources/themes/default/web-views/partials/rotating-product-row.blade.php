@php
    $is_continuous = $is_continuous ?? false;
@endphp
<style>
    #{{$products_section_id}} .owl-item {
        overflow: hidden !important;
    }
    #{{$products_section_id}} .__cate-item {
        width: 100% !important;
        max-width: 100% !important;
        overflow: hidden !important;
        box-sizing: border-box !important;
    }
    #{{$products_section_id}} .__cate-item a {
        display: block !important;
        width: 100% !important;
        max-width: 100% !important;
        overflow: hidden !important;
    }
    #{{$products_section_id}} .__img {
        height: 185px !important;
        width: 100% !important;
        border-radius: 10px !important;
        overflow: hidden !important;
        margin: 0 auto !important;
        box-shadow: none !important;
    }
    #{{$products_section_id}} .__img img {
        height: 185px !important;
        width: 100% !important;
        object-fit: cover !important;
        border-radius: 10px !important;
    }
    #{{$products_section_id}} p {
        font-size: 13px !important;
        line-height: 1.3em !important;
        height: 2.6em !important;
        max-height: 2.6em !important;
        width: 100% !important;
        max-width: 100% !important;
        word-break: break-word !important;
        word-wrap: break-word !important;
        overflow-wrap: anywhere !important;
        overflow: hidden !important;
        text-overflow: ellipsis !important;
        display: -webkit-box !important;
        -webkit-line-clamp: 2 !important;
        -webkit-box-orient: vertical !important;
        margin-bottom: 0 !important;
    }
    @if($is_continuous)
    #{{$products_section_id}} .owl-stage {
        transition-timing-function: linear !important;
    }
    @endif
    @media (max-width: 768px) {
        #{{$products_section_id}} .__img,
        #{{$products_section_id}} .__img img {
            height: 140px !important;
        }
        #{{$products_section_id}} p {
            font-size: 11px !important;
            line-height: 1.25em !important;
            height: 2.5em !important;
            max-height: 2.5em !important;
        }
    }
</style>
<section class="py-4 rtl">
    <div class="container">
        <div>
            <div class="card __shadow h-100 max-md-shadow-0">
                <div class="card-body">
                    <div class="d-flex justify-content-between">
                        <div class="categories-title m-0">
                            <span class="font-semibold">{{ $grid_title}}</span>
                        </div>

                        @isset ($view_more_link)
                            <div>
                                <a
                                    class="text-capitalize view-all-text" style="color: {{$web_config['primary_color']}}!important"
                                    href="{{$view_more_link}}"
                                >
                                    {{ translate('view_all')}}
                                    <i class="czi-arrow-{{Session::get('direction') === "rtl" ? 'left mr-1 ml-n1 mt-1 float-left' : 'right ml-1 mr-n1'}}"></i>
                                </a>
                            </div>
                        @endisset
                    </div>
                    <div class="container rtl mb-3 overflow-hidden">
                        <div class="py-2">
                            <div class="new_arrival_product">
                                <div class="carousel-wrap">
                                    <div class="owl-carousel owl-theme new-arrivals-product" id="{{$products_section_id}}">
                                        @foreach($products as $product)
                                            @if(!empty($product))
                                                @php
                                                    $productSlug = is_array($product) ? ($product['slug'] ?? '') : ($product->slug ?? '');
                                                    $productName = is_array($product) ? ($product['name'] ?? '') : ($product->name ?? '');
                                                    $productThumbnail = is_array($product) ? ($product['thumbnail'] ?? '') : ($product->thumbnail ?? '');
                                                @endphp
                                                @if(!empty($productSlug))
                                                    <div class="text-center __m-5px __cate-item">
                                                        <a href="{{route('product', $productSlug)}}">
                                                            <div class="__img">
                                                                <img
                                                                    onerror="this.src='{{asset('assets/front-end/img/image-place-holder.png')}}'"
                                                                    src="{{asset('assets/product/thumbnail/'. $productThumbnail)}}"

                                                                    alt="{{\Illuminate\Support\Str::limit($productName, 100)}}">
                                                            </div>
                                                            <p class="text-center medium mt-1" style="white-space: normal !important; word-break: break-word !important; max-width: 100% !important;">{{ $productName }}</p>
                                                        </a>
                                                    </div>
                                                @endif
                                            @endif
                                        @endforeach
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

@push("script")
    <script>

        $(document).ready(function() {

            $('#{{$products_section_id}}').owlCarousel({
                loop: true,
                autoplay: true,
                @if($is_continuous)
                autoplayTimeout: 3000,
                autoplaySpeed: 3000,
                smartSpeed: 3000,
                slideTransition: 'linear',
                autoplayHoverPause: true,
                @else
                autoplayTimeout: 4000,
                autoplayHoverPause: true,
                @endif
                margin: 15,
                nav: false,
                dots: true,
                '{{session('direction')}}': true,
                responsive: {
                    0: {
                        items: 2
                    },
                    360: {
                        items: 2
                    },
                    375: {
                        items: 2
                    },
                    540: {
                        items: 3
                    },
                    576: {
                        items: 3
                    },
                    768: {
                        items: 4
                    },
                    992: {
                        items: 5
                    },
                    1200: {
                        items: 6
                    }
                }
            });
        })
    </script>
@endpush