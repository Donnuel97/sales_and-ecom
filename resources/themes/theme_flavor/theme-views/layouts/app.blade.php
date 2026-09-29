<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <title>@yield('title')</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <link rel="apple-touch-icon" sizes="180x180" href="{{asset('assets/company')}}/{{$web_config['fav_icon']->value}}">
    <link rel="icon" type="image/png" sizes="32x32" href="{{asset('assets/company')}}/{{$web_config['fav_icon']->value}}">

    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&family=Roboto:wght@400;500;700&display=swap" rel="stylesheet">
    
    <!-- Icons (Tabler Icons) -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@tabler/icons-webfont@latest/tabler-icons.min.css">
    <link rel="stylesheet" href="{{asset('assets/back-end')}}/css/toastr.css"/>

    <!-- Theme Styles -->
    <link rel="stylesheet" href="{{ theme_asset('assets/css/theme-flavor.css') }}">
    
    <style>
        :root {
            --color-primary: {{ $web_config['primary_color'] }};
            --color-secondary: {{ $web_config['secondary_color'] }};
        }
        
        .rtl {
            direction: {{ Session::get('direction') }};
        }

        #loading {
            position: fixed;
            display: flex;
            justify-content: center;
            align-items: center;
            width: 100%;
            height: 100%;
            top: 0;
            left: 0;
            opacity: 0.7;
            background-color: #fff;
            z-index: 9999;
        }

        #loading-content {
            z-index: 10000;
        }
    </style>
    
    @stack('css_or_js')
    
    <meta name="_token" content="{{csrf_token()}}">
</head>
<body class="rtl">
    
    <div id="loading" style="display: none;">
        <div id="loading-content">
            <img width="200" src="{{asset('assets/front-end/img/loader.gif')}}" alt="">
        </div>
    </div>

    <div class="w">
        @include('theme-views.layouts.partials._header')
        @include('theme-views.layouts.partials._megamenu')
        
        @php($announcement=\App\CPU\Helpers::get_business_settings('announcement'))
        @if (isset($announcement) && $announcement['status']==1)
            <div class="trust" style="background-color: {{ $announcement['color'] }}; color:{{$announcement['text_color']}}; padding: 5px 20px; justify-content: center; font-size: 12px; border-bottom: none;">
                <span>{{ $announcement['announcement'] }}</span>
            </div>
        @endif

        <div class="trust">
            <div class="trust-item"><i class="ti ti-truck"></i><div class="trust-txt"><strong>Free delivery</strong>Orders over &#8358;50,000</div></div>
            <div class="trust-item"><i class="ti ti-refresh"></i><div class="trust-txt"><strong>Easy returns</strong>7-day return policy</div></div>
            <div class="trust-item"><i class="ti ti-shield-check"></i><div class="trust-txt"><strong>Secure payment</strong>100% safe & encrypted</div></div>
            <div class="trust-item"><i class="ti ti-headset"></i><div class="trust-txt"><strong>Expert support</strong>Mon–Sat, 8am–6pm</div></div>
        </div>

        <div class="body">
            @include('theme-views.layouts.partials._sidebar')
            
            <main class="main">
                @yield('content')
            </main>
        </div>

        @include('theme-views.layouts.partials._footer')
    </div>

    <div class="modal fade" id="quick-view-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
            <div class="modal-content" id="quick-view-modal-content">
            </div>
        </div>
    </div>

    <!-- Scripts -->
    <script src="{{asset('assets/front-end')}}/vendor/jquery/dist/jquery-2.2.4.min.js"></script>
    <script src="{{asset('assets/front-end')}}/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
    <script src="{{asset('assets/back-end')}}/js/toastr.js"></script>

    <script>
        function quickView(product_id) {
            $.post({
                url: '{{route('quick-view')}}',
                data: {
                    _token: '{{csrf_token()}}',
                    product_id: product_id
                },
                beforeSend: function () {
                    $('#loading').show();
                },
                success: function (data) {
                    $('#quick-view-modal-content').html(data);
                    $('#quick-view-modal').modal('show');
                },
                complete: function () {
                    $('#loading').hide();
                }
            });
        }

        function addWishlist(product_id) {
            $.post({
                url: '{{route('store-wishlist')}}',
                data: {
                    _token: '{{csrf_token()}}',
                    product_id: product_id
                },
                success: function (data) {
                    if (data.success) {
                        toastr.success(data.success);
                        $('.wishlist_count').html(data.count);
                    } else {
                        toastr.info(data.error);
                    }
                }
            });
        }

        function addToCart(form_id = 'add-to-cart-form') {
            if (checkAddToCartValidity()) {
                $.ajaxSetup({
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="_token"]').attr('content')
                    }
                });
                $.post({
                    url: '{{ route('cart.add') }}',
                    data: $('#' + form_id).serializeArray(),
                    beforeSend: function () {
                        $('#loading').show();
                    },
                    success: function (response) {
                        console.log(response);
                        if (response.status == 1) {
                            toastr.success(response.message, {
                                CloseButton: true,
                                ProgressBar: true
                            });
                            $('.cart_count').html(response.cart_count);
                            updateNavCart();
                            return false;
                        } else if (response.status == 0) {
                            toastr.warning(response.message, {
                                CloseButton: true,
                                ProgressBar: true
                            });
                            return false;
                        }
                    },
                    complete: function () {
                        $('#loading').hide();
                    }
                });
            } else {
                Swal.fire({
                    type: 'info',
                    title: 'Cart',
                    text: 'Please choose all the options'
                });
            }
        }

        function updateNavCart() {
            $.post('{{route('cart.nav-cart')}}', {_token: '{{csrf_token()}}'}, function (data) {
                $('.cart_items_container').html(data);
            });
        }

        function checkAddToCartValidity() {
            var names = {};
            $('#add-to-cart-form input:radio').each(function () { // find unique names
                names[$(this).attr('name')] = true;
            });
            var count = 0;
            $.each(names, function () { // count them
                count++;
            });
            if ($('input:radio:checked').length == count) {
                return true;
            }
            return false;
        }
    </script>

    @stack('script')
</body>
</html>
