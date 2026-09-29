@php

    $primaryColor = $web_config['primary_color'];

    $isRightDirection = Session::get('direction') === "rtl";

    $directionPadding = $isRightDirection ? 'padding-right: 0px' : '';

    $directionLocation = $isRightDirection ? 'right' : 'left';
@endphp

<style>
    header,
    .navbar-sticky,
    .navbar-sticky.bg-light,
    .mobile-head {
        background-color: {{$web_config['body_bg_color']}} !important;
    }

    .for-count-value {
        color: {{$primaryColor}};
    }

    .count-value {
        color: {{$primaryColor}};
    }

    @media (min-width: 768px) {
        .navbar-stuck-menu {
            background-color: {{$primaryColor}};
        }

    }

    @media (max-width: 767px) {
        .search_button .input-group-text i {
            color: {{$primaryColor}} !important;
        }
        .navbar-expand-md .dropdown-menu > .dropdown > .dropdown-toggle {
            padding- {{$directionLocation}}: 1.95rem;
        }

        .mega-nav1 {
            color: {{$primaryColor}} !important;
        }

        .mega-nav1 .nav-link {
            color: {{$primaryColor}} !important;
        }
    }

    @media (max-width: 471px) {
        .mega-nav1 {
            color: {{$primaryColor}} !important;
        }
        .mega-nav1 .nav-link {
            color: {{$primaryColor}} !important;
        }
    }
    /**/
</style>

@php($top_promo_banner=\App\Model\Banner::where(['banner_type'=>'Top Promotion Banner', 'published'=>1])->first())
@if($top_promo_banner)
    <div class="text-center">
        <a href="{{$top_promo_banner->url}}">
            <img class="w-100" style="height: auto;" 
                 src="{{asset('assets/banner/'.$top_promo_banner->photo)}}" 
                 onerror="this.src='{{asset('assets/front-end/img/placeholder.png')}}'"
                 alt="">
        </a>
    </div>
@endif
@php($announcement=\App\CPU\Helpers::get_business_settings('announcement'))
@if (isset($announcement) && $announcement['status']==1)
    <div class="text-center position-relative px-4 py-1" id="anouncement" style="background-color: {{ $announcement['color'] }};color:{{$announcement['text_color']}}">
        <span>{{ $announcement['announcement'] }} </span>
        <span class="__close-anouncement" onclick="myFunction()">X</span>
    </div>
@endif


<header class="box-shadow-sm rtl __inline-10">

    <div class="navbar-sticky bg-light mobile-head">
        <div class="navbar navbar-expand-md navbar-light">
            <div class="container ">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <a class="navbar-brand d-none d-sm-block {{$isRightDirection ? 'mr-3' : 'mr-3'}} flex-shrink-0 __min-w-7rem" href="{{route('home')}}">
                    <img class=""

                        style="max-height: 100px;" 
                         src="{{asset('/assets/company/'.$web_config['web_logo']->value)}}"
                         onerror="this.src='{{asset('assets/front-end/img/image-place-holder.png')}}'"
                         alt="{{$web_config['name']->value}}"/>
                </a>
                <a class="navbar-brand d-sm-none"
                   href="{{route('home')}}">
                    <img class="mobile-logo-img"

                        style="max-height: 90px; margin-left: -30px;" 
                         src="{{asset('/assets/company/'.$web_config['mob_logo']->value)}}"
                         onerror="this.src='{{asset('assets/front-end/img/image-place-holder.png')}}'"
                         alt="{{$web_config['name']->value}}"/>
                </a>
                <!-- Search-->
                <div class="input-group-overlay mx-lg-4 search-form-mobile"
                     style="text-align: {{$directionLocation}}; max-width: 400px; width: 100%;">
                     <div style="text-align: {{$directionLocation}}" class="d-lg-none">
                        <button class="btn close-search-form-mobile">
                            <i class="tio-clear"></i>
                        </button>
                     </div>
                    <form action="{{route('products')}}" type="submit" class="search_form">
                        <input class="form-control appended-form-control search-bar-input" type="text"
                               autocomplete="off"
                               placeholder="{{ translate("search_here")}}..."
                               name="name">
                        <button class="input-group-append-overlay search_button" type="submit"
                                style="border-radius: {{$isRightDirection ? '7px 0px 0px 7px; right: unset; left: 0' : '0px 7px 7px 0px; left: unset; right: 0'}};top:0">
                                <span class="input-group-text __text-20px">
                                    <i class="czi-search text-white"></i>
                                </span>
                        </button>
                        <input name="data_from" value="search" hidden>
                        <input name="page" value="1" hidden>
                        <diV class="card search-card __inline-13">
                            <div class="card-body search-result-box __h-400px overflow-x-hidden overflow-y-auto"></div>
                        </diV>
                    </form>
                </div>
                <!-- Toolbar-->
                <div class="navbar-toolbar d-flex flex-shrink-0 align-items-center">
                    <a class="navbar-tool navbar-stuck-toggler" href="#">
                        <span class="navbar-tool-tooltip">{{ translate('expand_Menu') }}</span>
                        <div class="navbar-tool-icon-box">
                            <i class="navbar-tool-icon czi-menu open-icon"></i>
                            <i class="navbar-tool-icon czi-close close-icon"></i>
                        </div>
                    </a>
                    <div class="navbar-tool open-search-form-mobile d-lg-none {{$isRightDirection ? 'mr-md-3' : 'ml-md-3'}}">
                        <a class="navbar-tool-icon-box bg-secondary" href="#0">
                            <i class="tio-search"></i>
                        </a>
                    </div>
                    @if (!auth('seller')->check() && !auth('customer')->check())
                        <div class="navbar-tool dropdown d-none d-md-block {{$isRightDirection ? 'mr-md-3' : 'ml-md-3'}}">
                            <a class="navbar-tool-icon-box bg-secondary dropdown-toggle" href="{{route('customer.auth.login')}}">
                                <i class="navbar-tool-icon czi-user"></i>
                            </a>
                            <div class="dropdown-menu dropdown-menu-{{$directionLocation}}" aria-labelledby="customer-auth-dropdown"
                                style="text-align: {{$directionLocation}};">
                                <a class="dropdown-item" href="{{route('customer.auth.login')}}">
                                    {{translate('sign_in')}}
                                </a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="{{route('customer.auth.sign-up')}}">
                                    {{translate('sign_up')}}
                                </a>
                            </div>
                        </div>
                    @endif

                    @if(auth('customer')->check())
                        <div class="navbar-tool dropdown d-none d-md-block {{$isRightDirection ? 'mr-md-3' : 'ml-md-3'}}">
                            <a class="navbar-tool-icon-box bg-secondary dropdown-toggle" href="{{route('user-account')}}">
                                <img src="{{asset('assets/profile/'.auth('customer')->user()->image)}}"
                                     onerror="this.src='{{asset('assets/front-end/img/user.png')}}'"
                                     class="img-profile rounded-circle __inline-14">
                            </a>
                            <div class="dropdown-menu dropdown-menu-{{$directionLocation}}" aria-labelledby="dropdownMenuButton">
                                <a class="dropdown-item" href="{{route('account-oder')}}"> {{ translate('my_Order')}} </a>
                                <a class="dropdown-item" href="{{route('user-account')}}"> {{ translate('my_Profile')}}</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="{{route('customer.auth.logout')}}">{{ translate('logout')}}</a>
                            </div>
                        </div>
                    @endif

                    <div class="navbar-tool dropdown d-none d-md-block {{$isRightDirection ? 'mr-md-3' : 'ml-md-3'}}">
                        <a class="navbar-tool-icon-box bg-secondary dropdown-toggle" href="{{route('wishlists')}}">
                            <span class="navbar-tool-label">
                                <span
                                    class="countWishlist">{{session()->has('wish_list')?count(session('wish_list')):0}}</span>
                           </span>
                            <i class="navbar-tool-icon czi-heart"></i>
                        </a>
                    </div>
                    
                    <div id="cart_items">
                        @include('layouts.front-end.partials.cart')
                    </div>
                </div>
            </div>
        </div>
        <div class="navbar navbar-expand-md navbar-stuck-menu"  >
            <div class="container px-10px">
                <div class="collapse navbar-collapse" id="navbarCollapse"
                    style="text-align: {{$directionLocation}}; ">
                    <div class="w-100 d-md-none" style="text-align: {{$directionLocation}};">
                        <button class="navbar-toggler p-0" type="button" data-toggle="collapse" data-target="#navbarCollapse">
                            <i class="tio-clear __text-26px"></i>
                        </button>
                    </div>

                    <!-- Primary menu-->
                    <ul class="navbar-nav mx-auto" style="{{$directionPadding}}">
                        <li class="nav-item {{request()->is('/')?'active':''}}"> {{-- she explicitly requested for this nav item --}}
                            <a class="nav-link" href="{{route('home')}}">{{ translate('home')}}</a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle text-capitalize" href="#" id="navbarDropdownCategories" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                {{ translate('categories') }}
                            </a>
                            <div class="dropdown-menu __dropdown-menu-3 __min-w-200px" aria-labelledby="navbarDropdownCategories" style="text-align: {{$directionLocation}};">
                                @foreach(\App\Model\Category::where('parent_id', 0)->orderBy('priority', 'asc')->get() as $navCategory)
                                    <a class="dropdown-item" href="{{route('products',['id'=> $navCategory['id'],'data_from'=>'category','page'=>1])}}">
                                        {{ $navCategory->name }}
                                    </a>
                                    @if(!$loop->last)
                                        <div class="dropdown-divider"></div>
                                    @endif
                                @endforeach
                            </div>
                        </li>
                        <li class="nav-item {{request()->is('about-us')?'active':''}}">
                            <a class="nav-link" href="{{route('about-us')}}">{{ translate('about_us')}}</a>
                        </li>
                        <li class="nav-item {{request()->is('contacts')?'active':''}}">
                            <a class="nav-link" href="{{route('contacts')}}">{{ translate('contact_us')}}</a>
                        </li>
                        <li class="nav-item {{request()->is('helpTopic')?'active':''}}">
                            <a class="nav-link" href="{{route('helpTopic')}}">{{ translate('FAQ')}}</a>
                        </li>
                        @php($testimonial_status = \App\Model\BusinessSetting::where('type', 'testimonial_page_status')->first())
                        @if(!$testimonial_status || $testimonial_status->value == 1)
                            <li class="nav-item {{request()->is('testimonials')?'active':''}}">
                                <a class="nav-link" href="{{route('testimonials')}}">{{ translate('testimonials')}}</a>
                            </li>
                        @endif
                        <li class="nav-item {{request()->routeIs('blog.index') || request()->routeIs('blog.show')?'active':''}}">
                            <a class="nav-link" href="{{route('blog.index')}}">{{ translate('blog')}}</a>
                        </li>
                        <li class="nav-item {{request()->routeIs('track-order.index')?'active':''}}">
                            <a class="nav-link" href="{{route('track-order.index')}}">{{ translate('track_order')}}</a>
                        </li>

{{-- 
                        @foreach(\App\Model\Category::where('parent_id', 0)->orderBy('priority', 'asc')->get() as $navCategory)
                            <li class="nav-item {{request()->routeIs('category_children') && request()->id == $navCategory->id ? 'active' : ''}}">
                                <a class="nav-link" href="{{route('category_children', ['id' => $navCategory->id])}}">
                                    {{ $navCategory->name }}
                                </a>
                            </li>
                        @endforeach
--}}
                        
{{-- 
                        <li class="nav-item">
                            <div class="dropdown">
                                <button class="btn dropdown-toggle text-white text-max-md-dark text-capitalize" type="button" id="farmer-support-dropdown"
                                        data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"
                                        style="padding-{{$directionLocation}}: .5rem">
                                    Farmer Support
                                </button>
                                <div class="dropdown-menu __dropdown-menu-3 __min-w-165px" aria-labelledby="farmer-support-dropdown"
                                    style="text-align: {{$directionLocation}};">
                                    <a class="dropdown-item" href="">
                                        Training
                                    </a>
                                    <div class="dropdown-divider"></div>
                                    <a class="dropdown-item" href="">
                                       Funding 
                                    </a>
                                    <div class="dropdown-divider"></div>
                                    <a class="dropdown-item" href="">
                                       NGO 
                                    </a>
                                </div>
                            </div>
                        </li>
--}}

                        @if(auth('customer')->check())
                            <li class="nav-item d-md-none">
                                <a href="{{route('user-account')}}" class="nav-link text-capitalize">
                                    {{translate('user_profile')}}
                                </a>
                            </li>
                            <li class="nav-item d-md-none">
                                <a href="{{route('wishlists')}}" class="nav-link">
                                    {{translate('Wishlist')}}
                                </a>
                            </li>
                        @else
                            <li class="nav-item d-md-none">
                                <a class="dropdown-item pl-2" href="{{route('customer.auth.login')}}">
                                    <i class="fa fa-sign-in {{$isRightDirection ? 'mr-2' : 'mr-2'}}"></i> {{translate('sign_in')}}
                                </a>
                                <div class="dropdown-divider"></div>
                            </li>
                            <li class="nav-item d-md-none">
                                <a class="dropdown-item pl-2" href="{{route('customer.auth.sign-up')}}">
                                    <i class="fa fa-user-circle {{$isRightDirection ? 'mr-2' : 'mr-2'}}"></i>{{translate('sign_up')}}
                                </a>
                            </li>
                        @endif

                        @php($business_mode=\App\CPU\Helpers::get_business_settings('business_mode'))

                        @if ($business_mode == 'multi')
                            @php($seller_registration=\App\Model\BusinessSetting::where(['type'=>'seller_registration'])->first()->value)
                            @if($seller_registration && !auth('customer')->check())

                                @include('layouts.front-end.partials.sell-on-nav')
                            @endif
                        @endif


                        
                    </ul>

                </div>
            </div>
        </div>
    </div>
</header>
@push('script')
    <script>
        function myFunction() {
            $('#anouncement').slideUp(300);
        };

        $('.close-search-form-mobile').on('click', function(){
            $('.search-form-mobile').removeClass('active')
        })
        $('.open-search-form-mobile').on('click', function(){
            $('.search-form-mobile').addClass('active')
        })
    </script>
@endpush
