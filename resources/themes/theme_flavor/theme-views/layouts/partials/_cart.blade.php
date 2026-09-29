@php($cart=\App\CPU\CartManager::get_cart())
<div class="cart_items_container">
    @if($cart->count() > 0)
        @foreach($cart as $cartItem)
            @php($product=\App\Model\Product::find($cartItem['product_id']))
            <div style="display: flex; gap: 10px; margin-bottom: 10px; padding-bottom: 10px; border-bottom: 1px solid var(--color-border-tertiary);">
                <img src="{{asset('storage/app/public/product/thumbnail')}}/{{$cartItem['thumbnail']}}" 
                     onerror="this.src='{{asset('assets/front-end/img/image-place-holder.png')}}'"
                     style="width: 50px; height: 50px; object-fit: cover; border-radius: 4px;">
                <div style="flex: 1;">
                    <div style="font-size: 12px; font-weight: 500;">{{$cartItem['name']}}</div>
                    <div style="font-size: 11px; color: var(--color-text-secondary);">
                        {{$cartItem['quantity']}} x {{\App\CPU\Helpers::currency_converter($cartItem['price'] - $cartItem['discount'])}}
                    </div>
                </div>
            </div>
        @endforeach
        <div style="padding-top: 10px; display: flex; justify-content: space-between; font-weight: 600;">
            <span>{{translate('total')}}</span>
            <span>{{\App\CPU\Helpers::currency_converter(\App\CPU\CartManager::cart_total_applied_discount($cart))}}</span>
        </div>
        <a href="{{route('shop-cart')}}" class="btn-primary" style="display: block; text-align: center; margin-top: 15px; text-decoration: none;">{{translate('view_cart')}}</a>
    @else
        <div style="text-align: center; padding: 20px;">
            <i class="ti ti-shopping-cart-x" style="font-size: 40px; color: #ccc;"></i>
            <p style="font-size: 13px; color: var(--color-text-secondary); margin-top: 10px;">{{translate('your_cart_is_empty')}}</p>
        </div>
    @endif
</div>
