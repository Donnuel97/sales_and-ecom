@push('css_or_js')
<style>
    .cart_title {
        font-weight: 400 !important;
        font-size: 16px;
    }

    .cart_value {
        font-weight: 600 !important;
        font-size: 16px;
    }

    @media (max-width: 575px) {
        .cart_title,
        .cart_value {
            font-size: 14px;
        }
    }

    .cart_total_value {
        font-weight: 700 !important;
        font-size: 25px !important;
        color: {{$web_config['primary_color']}}     !important;
    }

    .__cart-total_sticky {
        position: sticky;
        top: 80px;
    }
    /**/
</style>
@endpush

<aside class="col-lg-4 pt-4 pt-lg-2 px-max-md-0">
    <div class="__cart-total __cart-total_sticky">
        <div class="cart_total p-0">
            @php($shippingMethod=\App\CPU\Helpers::get_business_settings('shipping_method'))
            @php($sub_total=0)
            @php($total_tax=0)
            @php($total_shipping_cost=0)
            @php($total_installation_fee=0)
            @php($order_wise_shipping_discount=\App\CPU\CartManager::order_wise_shipping_discount())
            @php($total_discount_on_product=0)
            @php($cart=\App\CPU\CartManager::get_cart())
            @php($cart_group_ids=\App\CPU\CartManager::get_cart_group_ids())
            @php($shipping_cost=\App\CPU\CartManager::get_shipping_cost())
            @php($get_shipping_cost_saved_for_free_delivery=\App\CPU\CartManager::get_shipping_cost_saved_for_free_delivery())
            @php($has_installation_fee=false)
            @if($cart->count() > 0)
                @foreach($cart as $key => $cartItem)
                    @php($product_installation_fee = $cartItem->product->installation_fee ?? 0)
                    @php($sub_total+=($cartItem['price'] - $product_installation_fee)*$cartItem['quantity'])
                    @php($total_tax+=$cartItem['tax_model']=='exclude' ? ($cartItem['tax']*$cartItem['quantity']):0)
                    @php($total_discount_on_product+=$cartItem['discount']*$cartItem['quantity'])
                    @php($total_installation_fee+=$product_installation_fee*$cartItem['quantity'])
                    @if($product_installation_fee > 0)
                        @php($has_installation_fee=true)
                    @endif
                @endforeach

                @if(session()->missing('coupon_type') || session('coupon_type') !='free_delivery')
                    @php($total_shipping_cost=$shipping_cost - $get_shipping_cost_saved_for_free_delivery)
                @else
                    @php($total_shipping_cost=$shipping_cost)
                @endif
            @endif

            @if($total_discount_on_product > 0)
            <h6 class="text-center text-primary mb-4 d-flex align-items-center justify-content-center gap-2">
                <img src="{{asset('assets/front-end/img/icons/offer.svg')}}" alt="">
                {{translate('you_have_Saved')}} <strong>{{\App\CPU\Helpers::currency_converter($total_discount_on_product)}}!</strong>
            </h6>
            @endif

            <div class="d-flex justify-content-between">
                <span class="cart_title">{{translate('sub_total')}}</span>
                <span class="cart_value">
                    {{\App\CPU\Helpers::currency_converter($sub_total)}}
                </span>
            </div>
            <div class="d-flex justify-content-between">
                <span class="cart_title">{{translate('tax')}}</span>
                <span class="cart_value">
                    {{\App\CPU\Helpers::currency_converter($total_tax)}}
                </span>
            </div>
            <div class="d-flex justify-content-between">
                <span class="cart_title">{{translate('shipping')}}</span>
                <span class="cart_value">
                    {{\App\CPU\Helpers::currency_converter($total_shipping_cost)}}
                </span>
            </div>
            <div class="d-flex justify-content-between">
                <span class="cart_title">{{translate('discount_on_product')}}</span>
                <span class="cart_value">
                    - {{\App\CPU\Helpers::currency_converter($total_discount_on_product)}}
                </span>
            </div>
            @if($total_installation_fee > 0)
            <div class="d-flex justify-content-between">
                <span class="cart_title">{{translate('installation_fee')}}</span>
                <span class="cart_value">
                    + {{\App\CPU\Helpers::currency_converter($total_installation_fee)}}
                </span>
            </div>
            @endif
            @php($coupon_dis=0)
            @if(auth('customer')->check())
                @if(session()->has('coupon_discount'))
                    @php($coupon_discount = session()->has('coupon_discount')?session('coupon_discount'):0)
                    <div class="d-flex justify-content-between">
                        <span class="cart_title">{{translate('coupon_discount')}}</span>
                        <span class="cart_value" id="coupon-discount-amount">
                            - {{\App\CPU\Helpers::currency_converter($coupon_discount+$order_wise_shipping_discount)}}
                        </span>
                    </div>
                    @php($coupon_dis=session('coupon_discount'))
                @else
                    <div class="pt-2">
                        <form class="needs-validation coupon-code-form" action="javascript:" method="post" novalidate id="coupon-code-ajax">
                            <div class="d-flex form-control rounded-pill pl-3 p-1">
                                <img width="24" src="{{asset('assets/front-end/img/icons/coupon.svg')}}" alt="">
                                <input class="input_code border-0 px-2 text-dark bg-transparent outline-0 w-100" type="text" name="code" placeholder="{{translate('coupon_code')}}" required>
                                <button class="btn btn--primary rounded-pill text-uppercase py-1 fs-12" type="button" onclick="couponCode()">{{translate('apply')}}</button>
                            </div>
                            <div class="invalid-feedback">{{translate('please_provide_coupon_code')}}</div>
                        </form>
                    </div>
                    @php($coupon_dis=0)
                @endif
            @endif
            <hr class="my-2">
            <div class="d-flex justify-content-between">
                <span class="cart_title text-primary font-weight-bold">{{translate('total')}}</span>
                <span class="cart_value">
                    {{\App\CPU\Helpers::currency_converter($sub_total+$total_tax+$total_shipping_cost+$total_installation_fee-$coupon_dis-$total_discount_on_product-$order_wise_shipping_discount)}}
                </span>
            </div>
        </div>
        @push('css_or_js')
            <link rel="stylesheet" href="{{asset('assets/front-end/css/product-details.css')}}"/>
        @endpush
        <div class="jumia-card mt-4">
            <div class="card-header">
                {{translate('delivery_&_returns')}}
            </div>
            <div class="card-body">
                <div class="delivery-item">
                    <i class="tio-delivery"></i>
                    <div class="delivery-text w-100">
                        <a href="javascript:" class="details-link" data-toggle="modal" data-target="#deliveryDetailsModal" data-type="pickup">{{translate('details')}}</a>
                        <h6>{{translate('pickup_station')}}</h6>
                        <p>{{translate('ready_for_pickup_between')}} {{ date('d M', strtotime('+2 days')) }} - {{ date('d M', strtotime('+4 days')) }}</p>
                    </div>
                </div>

                <div class="delivery-item">
                    <i class="tio-bike"></i>
                    <div class="delivery-text w-100">
                        <a href="javascript:" class="details-link" data-toggle="modal" data-target="#deliveryDetailsModal" data-type="door">{{translate('details')}}</a>
                        <h6>{{translate('door_delivery')}}</h6>
                        <p>{{translate('ready_for_delivery_between')}} {{ date('d M', strtotime('+2 days')) }} - {{ date('d M', strtotime('+4 days')) }}</p>
                    </div>
                </div>

                <div class="delivery-item">
                    <i class="tio-restore"></i>
                    <div class="delivery-text w-100">
                        <a href="{{route('return-policy')}}" class="details-link">{{translate('details')}}</a>
                        <a href="{{route('return-policy')}}" style="color: inherit; text-decoration: none;">
                            <h6>{{translate('return_policy')}}</h6>
                            <p>{{translate('free_return_within_3_days_for_all_eligible_items')}}.</p>
                        </a>
                    </div>
                </div>

                @php($installation_policy = \App\CPU\Helpers::get_business_settings('installation-policy'))
                @if(isset($installation_policy['status']) && $installation_policy['status'] == 1 && $has_installation_fee)
                <div class="delivery-item">
                    <i class="tio-settings"></i>
                    <div class="delivery-text w-100">
                        <a href="{{route('installation-policy')}}" class="details-link">{{translate('details')}}</a>
                        <a href="{{route('installation-policy')}}" style="color: inherit; text-decoration: none;">
                            <h6>{{translate('installation_policy')}}</h6>
                            <p>{{translate('professional_installation_services_available')}}.</p>
                        </a>
                    </div>
                </div>
                @endif
            </div>
        </div>

        <div class="mt-4">
            @if($web_config['guest_checkout_status'] || auth('customer')->check())
                <a onclick="checkout()" class="btn btn--primary btn-block proceed_to_next_button {{$cart->count() <= 0 ? 'disabled' : ''}}" >{{translate('proceed_to_Next')}}</a>
            @else
                <a href="{{route('customer.auth.login')}}" class="btn btn--primary btn-block proceed_to_next_button {{$cart->count() <= 0 ? 'disabled' : ''}}" >{{translate('proceed_to_Next')}}</a>
            @endif
        </div>
        @if( $cart->count() != 0)

            <div class="d-flex justify-content-center mt-3">
                <a href="{{route('home')}}" class="d-flex align-items-center gap-2 text-primary font-weight-bold">
                    <i class="tio-back-ui fs-12"></i> {{translate('continue_Shopping')}}
                </a>
            </div>
        @endif

    </div>
</aside>

<div class="bottom-sticky3 bg-white p-3 shadow-sm w-100 d-lg-none">
    <div class="d-flex justify-content-center align-items-center fs-14 mb-2">
        <div class="product-description-label fw-semibold text-capitalize">{{translate('total_price')}} : </div>
        &nbsp; <strong  class="text-base">{{\App\CPU\Helpers::currency_converter($sub_total+$total_tax+$total_shipping_cost-$coupon_dis-$total_discount_on_product-$order_wise_shipping_discount)}}</strong>
    </div>
    @if($web_config['guest_checkout_status'] || auth('customer')->check())
        <a onclick="checkout()" class="btn btn--primary btn-block proceed_to_next_button text-capitalize {{$cart->count() <= 0 ? 'disabled' : ''}}">{{translate('proceed_to_next')}}</a>
    @else
        <a href="{{route('customer.auth.login')}}" class="btn btn--primary btn-block proceed_to_next_button text-capitalize {{$cart->count() <= 0 ? 'disabled' : ''}}">{{translate('proceed_to_next')}}</a>
    @endif
</div>
@push('script')
    <script>
        $(document).ready(function() {
            const $stickyElement = $('.bottom-sticky3');
            const $offsetElement = $('.__cart-total_sticky');

            $(window).on('scroll', function() {
                const elementOffset = $offsetElement.offset().top;
                const scrollTop = $(window).scrollTop();
                console.log("scrollTop:", scrollTop, "elementOffset:", elementOffset);

                if (scrollTop >= elementOffset) {
                    $stickyElement.addClass('stick');
                } else {
                    $stickyElement.removeClass('stick');
                }
            });
        });

    </script>
@endpush
