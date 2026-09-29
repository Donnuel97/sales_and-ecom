@extends('theme-views.layouts.app')

@section('title', $web_config['name']->value.' '.translate('online_Shopping'))

@section('content')
    <!-- Hero Section -->
    <div class="hero">
        <div class="hero-accent"></div>
        <div class="hero-accent2"></div>
        <div class="hero-l">
            <div class="hero-tag">{{translate('professional_equipment')}}</div>
            <h1 class="hero-title">{{translate('upgrade_your_culinary_space')}}</h1>
            <p class="hero-sub">{{translate('discover_top-tier_kitchen_appliances_for_home_and_commercial_use.')}}</p>
            <div class="hero-btns">
                <a href="{{route('products')}}" class="btn-primary" style="text-decoration: none;">{{translate('shop_now')}}</a>
                <a href="{{route('about-us')}}" class="btn-outline" style="text-decoration: none;">{{translate('learn_more')}}</a>
            </div>
        </div>
        <div class="hero-r">
            <div class="hero-stat">
                <div class="hero-stat-n">100+</div>
                <div class="hero-stat-l">{{translate('brands')}}</div>
            </div>
            <div class="hero-stat">
                <div class="hero-stat-n">5k+</div>
                <div class="hero-stat-l">{{translate('products')}}</div>
            </div>
        </div>
    </div>

    <!-- Categories -->
    <section>
        <div class="sec-hdr">
            <h2 class="sec-title">{{translate('shop_by_category')}}</h2>
            <a href="{{route('categories')}}" class="sec-va">{{translate('view_all')}} <i class="ti ti-chevron-right"></i></a>
        </div>
        <div class="cat-grid">
            @foreach($web_config['main_categories']->take(10) as $category)
                @include('theme-views.partials._category-card', ['category' => $category])
            @endforeach
        </div>
    </section>

    <!-- Best Sellers -->
    <section>
        <div class="sec-hdr">
            <h2 class="sec-title">{{translate('best_sellers')}}</h2>
            <a href="{{route('products',['data_from'=>'best-selling','page'=>1])}}" class="sec-va">{{translate('view_all')}} <i class="ti ti-chevron-right"></i></a>
        </div>
        <div class="prod-grid">
            @foreach($featured_products->take(4) as $product)
                @include('theme-views.partials._product-card', ['product' => $product])
            @endforeach
        </div>
    </section>

    <!-- Popular/Featured -->
    <section>
        <div class="sec-hdr">
            <h2 class="sec-title">{{translate('popular_in_store')}}</h2>
            <a href="{{route('products',['data_from'=>'featured','page'=>1])}}" class="sec-va">{{translate('view_all')}} <i class="ti ti-chevron-right"></i></a>
        </div>
        <div class="popular-row">
            @if(isset($featured_products[4]))
                @php($fp = $featured_products[4])
                <div class="popular-feat">
                    <div class="popular-feat-img">
                        <img src="{{\App\CPU\ProductManager::product_image_path('thumbnail')}}/{{$fp->thumbnail}}" 
                             onerror="this.src='{{asset('assets/front-end/img/image-place-holder.png')}}'" 
                             style="width: 100%; height: 100%; object-fit: cover; border-radius: inherit;">
                    </div>
                    <div class="popular-feat-nm">{{$fp->name}}</div>
                    <div class="popular-feat-price">{{\App\CPU\Helpers::currency_converter($fp->unit_price - \App\CPU\Helpers::get_product_discount($fp, $fp->unit_price))}}</div>
                    <button class="popular-feat-btn" onclick="quickView('{{$fp->id}}')">{{translate('add_to_cart')}}</button>
                </div>
            @endif
            <div class="popular-grid">
                @foreach($featured_products->skip(5)->take(4) as $product)
                    @include('theme-views.partials._product-card', ['product' => $product])
                @endforeach
            </div>
        </div>
    </section>

    <!-- New Arrivals -->
    <section>
        <div class="sec-hdr">
            <h2 class="sec-title">{{translate('new_arrivals')}}</h2>
            <a href="{{route('products',['data_from'=>'latest','page'=>1])}}" class="sec-va">{{translate('view_all')}} <i class="ti ti-chevron-right"></i></a>
        </div>
        <div class="prod-grid">
            @foreach($latest_products->take(4) as $product)
                @include('theme-views.partials._product-card', ['product' => $product])
            @endforeach
        </div>
    </section>
@endsection
