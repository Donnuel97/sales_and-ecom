<!-- Footer -->
<style>
    .social-media :hover {
        color: {{$web_config['secondary_color']}} !important;
    }
    .start_address_under_line{
        {{Session::get('direction') === "rtl" ? 'width: 344px;' : 'width: 331px;'}}
    }
</style>
<div class="__inline-9 rtl">

    <footer class="page-footer font-small mdb-color rtl">
        <!-- Footer Links -->
        <div class="pt-4" style="background:{{$web_config['primary_color']}}20;">
            <div class="container text-center __pb-13px">

                <!-- Footer links -->
                <div
                    class="row text-center {{Session::get('direction') === "rtl" ? 'text-md-right' : 'text-md-left'}} mt-3 pb-3 ">
                    <!-- Grid column -->
                    <div class="col-lg-5 col-md-4 col-12 mb-4 mb-md-0 text-center text-md-left">
                        <a class="d-block mb-4 mb-md-0" href="{{route('home')}}">
                            <img
                                class="{{Session::get('direction') === "rtl" ? 'rightalign' : ''}}"

                                src="{{asset('assets/company/'.$web_config['footer_logo']->value )}}"

                                style="max-height: 120px;"

                                onerror="this.src='{{asset('assets/front-end/img/image-place-holder.png')}}'"
                                alt="{{ $web_config['name']->value }}"/>
                        </a>

                        <div class="mt-4">
                            <h6 class="text-uppercase mb-3 font-weight-bold footer-heder">{{translate('contact_Us')}}</h6>
                            <ul class="widget-list __pb-10px">
                                <li class="widget-list-item d-flex gap-2 justify-content-center justify-content-md-start">
                                    <i class="tio-poi text-primary"></i>
                                    <span class="widget-list-link">{{ $web_config['address']->value }}</span>
                                </li>
                                <li class="widget-list-item d-flex gap-2 justify-content-center justify-content-md-start mt-2">
                                    <i class="tio-call text-primary"></i>
                                    <a class="widget-list-link" href="tel:{{ $web_config['phone']->value }}">{{ $web_config['phone']->value }}</a>
                                </li>
                                <li class="widget-list-item d-flex gap-2 justify-content-center justify-content-md-start mt-2">
                                    <i class="tio-email text-primary"></i>
                                    <a class="widget-list-link" href="mailto:{{ $web_config['email']->value }}">{{ $web_config['email']->value }}</a>
                                </li>
                            </ul>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-4 col-sm-6 col-12 mb-4 mb-md-0 text-center text-md-left" style="padding-right: 2%;">
                            <h6 class="text-uppercase mb-4 font-weight-bold footer-heder">Quick Links</h6>

                            @php($refund_policy = \App\CPU\Helpers::get_business_settings('refund-policy'))
                            @php($return_policy = \App\CPU\Helpers::get_business_settings('return-policy'))
                            @php($cancellation_policy = \App\CPU\Helpers::get_business_settings('cancellation-policy'))
                            @if(auth('customer')->check())
                                <ul class="widget-list __pb-10px">
                                    <li class="widget-list-item">
                                        <a class="widget-list-link" href="{{route('faq')}}">Frequently Asked Questions</a>
                                    </li>

                                    <li class="widget-list-item">
                                        <a class="widget-list-link" href="{{route('track-order.index')}}">{{translate('track_order')}}</a>
                                    </li>

                                </ul>
                            @else
                                <ul class="widget-list __pb-10px">
                                    <li class="widget-list-item">
                                        <a class="widget-list-link" href="{{route('faq')}}">Frequently Asked Questions</a>
                                    </li>

                                    <li class="widget-list-item">
                                        <a class="widget-list-link" href="{{route('customer.auth.login')}}">{{translate('profile_info')}}</a>
                                    </li>

                                    <li class="widget-list-item">
                                        <a class="widget-list-link" href="{{route('track-order.index')}}">{{translate('track_order')}}</a>
                                    </li>
                                </ul>
                            @endif
                    </div>
                    
                    <div class="col-lg-3 col-md-4 col-sm-6 col-12 mb-4 mb-md-0 text-center text-md-left">
                        <h6 class="text-uppercase mb-4 font-weight-bold footer-heder">Number 1 Kitchen</h6>

                        <ul class="widget-list __pb-10px">
                            <li class="widget-list-item">
                                <a class="widget-list-link" href="{{route('about-us')}}">About Us</a>
                            </li>

                            <li class="widget-list-item">
                                <a class="widget-list-link" href="{{route('contacts')}}">Contact Us</a>
                            </li>

                            <li class="widget-list-item">
                                <a class="widget-list-link" href="{{route('kitchen-solutions')}}">{{translate('kitchen_solutions')}}</a>
                            </li>

                            <li class="widget-list-item">
                                <a class="widget-list-link" href="{{route('blog.index')}}">{{translate('blog')}}</a>
                            </li>

                            @if(isset($refund_policy['status']) && $refund_policy['status'] == 1)
                            <li class="widget-list-item">
                                <a class="widget-list-link" href="{{route('refund-policy')}}">{{translate('refund_policy')}}</a>
                            </li>
                            @endif

                            @if(isset($return_policy['status']) && $return_policy['status'] == 1)
                            <li class="widget-list-item">
                                <a class="widget-list-link" href="{{route('return-policy')}}">{{translate('return_policy')}}</a>
                            </li>
                            @endif

                            @if(isset($cancellation_policy['status']) && $cancellation_policy['status'] == 1)
                            <li class="widget-list-item">
                                <a class="widget-list-link" href="{{route('cancellation-policy')}}">{{translate('cancellation_policy')}}</a>
                            </li>
                            @endif

                            @php($installation_policy = \App\CPU\Helpers::get_business_settings('installation-policy'))
                            @if(isset($installation_policy['status']) && $installation_policy['status'] == 1)
                            <li class="widget-list-item">
                                <a class="widget-list-link" href="{{route('installation-policy')}}">{{translate('installation_policy')}}</a>
                            </li>
                            @endif
                    </div>
                </div>
                <!-- Footer links -->
            </div>
        </div>


        <!-- Grid row -->
        <div style="background: rgba(255, 255, 255, 0.05);">
            <div class="container">
                <div class="d-flex flex-wrap end-footer footer-end last-footer-content-align">
                    <div class="mt-3">
                        <p class="{{Session::get('direction') === "rtl" ? 'text-right ' : 'text-left'}} __text-16px">&copy; Copyright {{ date("Y") }}</p>
                    </div>
                    <div class="max-sm-100 justify-content-center d-flex flex-wrap mt-md-3 mt-0 mb-md-3 {{Session::get('direction') === "rtl" ? 'text-right' : 'text-left'}}">
                        @if($web_config['social_media'])
                            @foreach ($web_config['social_media'] as $item)
                                <span class="social-media ">
                                    @if ($item->name == "twitter")
                                        <a class="social-btn text-white sb-light sb-{{$item->name}} {{Session::get('direction') === "rtl" ? 'ml-2' : 'mr-2'}} mb-2 d-flex justify-content-center align-items-center"
                                        target="_blank" href="{{$item->link}}">
                                            <img src="{{asset('assets/front-end/img/new-twitter-icon.svg')}}">
                                        </a>
                                    @else
                                        <a class="social-btn text-white sb-light sb-{{$item->name}} {{Session::get('direction') === "rtl" ? 'ml-2' : 'mr-2'}} mb-2"
                                        target="_blank" href="{{$item->link}}">
                                            <i class="{{$item->icon}}" aria-hidden="true"></i>
                                        </a>
                                    @endif
                                </span>
                            @endforeach
                        @endif
                    </div>
                    <div class="d-flex __text-14px">
                        <div class="{{Session::get('direction') === "rtl" ? 'ml-3' : 'mr-3'}}" >
                            <a class="widget-list-link"
                            href="{{route('terms')}}">{{translate('terms_&_conditions')}}</a>
                        </div>
                        <div>
                            <a class="widget-list-link" href="{{route('privacy-policy')}}">
                                {{translate('privacy_policy')}}
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Grid row -->
        </div>
        <!-- Footer Links -->

        <!-- Cookie Settings -->
        @php($cookie = $web_config['cookie_setting'] ? json_decode($web_config['cookie_setting']['value'], true):null)
        @if($cookie && $cookie['status']==1)
        <section id="cookie-section"></section>
        @endif
    </footer>
</div>
