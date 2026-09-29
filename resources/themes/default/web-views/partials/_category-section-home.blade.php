@if ($categories->count() > 0 )
<style>
    #categories-carousel .__img {
        height: 185px !important;
        width: 100% !important;
        border-radius: 10px !important;
        overflow: hidden !important;
        margin: 0 auto !important;
        box-shadow: none !important;
    }
    #categories-carousel .__img img {
        height: 185px !important;
        width: 100% !important;
        object-fit: cover !important;
        border-radius: 10px !important;
    }
    @media (max-width: 768px) {
        #categories-carousel .__img,
        #categories-carousel .__img img {
            height: 140px !important;
        }
    }
</style>
    <section class="pb-4 rtl">
        <div class="container">
            <div>
                <div class="card __shadow h-100 max-md-shadow-0">
                    <div class="card-body">
                        <div class="d-flex justify-content-between">
                            <div class="categories-title m-0">
                                <span class="font-semibold">{{ translate('categories')}}</span>
                            </div>
                            <div>
                                <a
                                    class="text-capitalize view-all-text" style="color: {{$web_config['primary_color']}}!important"
                                    href="{{route('categories')}}"
                                >
                                    {{ translate('view_all')}}
                                    <i class="czi-arrow-{{Session::get('direction') === "rtl" ? 'left mr-1 ml-n1 mt-1 float-left' : 'right ml-1 mr-n1'}}"></i>
                                </a>
                            </div>
                        </div>
                        <div class="container rtl mb-3 overflow-hidden">
                            <div class="py-2">
                                <div class="new_arrival_product">
                                    <div class="carousel-wrap">
                                        <div class="owl-carousel owl-theme new-arrivals-product" id="categories-carousel">
                                            @foreach($categories as $category)
                                                <div class="text-center __m-5px __cate-item">
                                                    <a href="{{route('products',['id'=> $category['id'],'data_from'=>'category','page'=>1])}}">
                                                        <div class="__img">
                                                            <img
                                                                onerror="this.src='{{asset('assets/front-end/img/image-place-holder.png')}}'"
                                                                src="{{asset('assets/category/'. $category->icon)}}"
                                                                alt="{{$category->name}}">
                                                        </div>
                                                        <p class="text-center medium mt-1">{{Str::limit($category->name, 12)}}</p>
                                                    </a>
                                                </div>
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
@endif
