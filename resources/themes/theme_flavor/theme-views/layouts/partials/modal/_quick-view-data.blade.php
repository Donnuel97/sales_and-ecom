<div class="modal-header" style="background: var(--color-background-secondary); border-bottom: 1px solid var(--color-border-tertiary);">
    <h5 class="modal-title" style="font-size: 14px; font-weight: 600;">{{$product->name}}</h5>
    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
        <span aria-hidden="true">&times;</span>
    </button>
</div>
<div class="modal-body">
    <div style="display: grid; grid-template-columns: 1fr 1.5fr; gap: 20px;">
        <div>
            <img src="{{\App\CPU\ProductManager::product_image_path('thumbnail')}}/{{$product->thumbnail}}" 
                 onerror="this.src='{{asset('assets/front-end/img/image-place-holder.png')}}'"
                 style="width: 100%; border-radius: 8px; border: 1px solid var(--color-border-tertiary);">
        </div>
        <div>
            <div style="font-size: 18px; font-weight: 600; margin-bottom: 8px;">{{$product->name}}</div>
            <div style="display: flex; align-items: center; gap: 5px; margin-bottom: 12px;">
                <div style="display: flex; gap: 2px;">
                    @for($i=1;$i<=5;$i++)
                        <i class="ti ti-star{{$i<=$overallRating[0]?'-filled':''}}" style="color: var(--color-primary); font-size: 14px;"></i>
                    @endfor
                </div>
                <span style="font-size: 12px; color: var(--color-text-secondary);">({{$product->reviews_count}} {{translate('reviews')}})</span>
            </div>
            
            <div style="display: flex; align-items: center; gap: 10px; margin-bottom: 20px;">
                <div style="font-size: 24px; font-weight: 700; color: #111;">
                    {{\App\CPU\Helpers::currency_converter($product->unit_price - \App\CPU\Helpers::get_product_discount($product, $product->unit_price))}}
                </div>
                @if($product->discount > 0)
                    <div style="font-size: 16px; color: var(--color-text-secondary); text-decoration: line-through;">
                        {{\App\CPU\Helpers::currency_converter($product->unit_price)}}
                    </div>
                    <div style="background: #e53; color: #fff; font-size: 11px; padding: 2px 8px; border-radius: 4px; font-weight: 600;">
                        @if ($product->discount_type == 'percent')
                            {{round($product->discount, 2)}}% {{translate('off')}}
                        @else
                            {{translate('save')}} {{\App\CPU\Helpers::currency_converter($product->discount)}}
                        @endif
                    </div>
                @endif
            </div>

            <form id="add-to-cart-form">
                @csrf
                <input type="hidden" name="id" value="{{$product->id}}">
                
                @if (count(json_decode($product->colors)) > 0)
                    <div style="margin-bottom: 15px;">
                        <div style="font-size: 12px; font-weight: 500; margin-bottom: 5px;">{{translate('color')}}:</div>
                        <div style="display: flex; gap: 10px;">
                            @foreach (json_decode($product->colors) as $key => $color)
                                <label style="cursor: pointer;">
                                    <input type="radio" name="color" value="{{ $color }}" {{ $key == 0 ? 'checked' : '' }} style="display: none;">
                                    <span style="display: block; width: 24px; height: 24px; border-radius: 50%; background: {{ $color }}; border: 2px solid #fff; outline: 1px solid #ddd;"></span>
                                </label>
                            @endforeach
                        </div>
                    </div>
                @endif

                @foreach (json_decode($product->choice_options) as $key => $choice)
                    <div style="margin-bottom: 15px;">
                        <div style="font-size: 12px; font-weight: 500; margin-bottom: 5px;">{{ $choice->title }}:</div>
                        <div style="display: flex; flex-wrap: wrap; gap: 8px;">
                            @foreach ($choice->options as $index => $option)
                                <label style="cursor: pointer;">
                                    <input type="radio" name="choice_{{ $choice->name }}" value="{{ $option }}" {{ $index == 0 ? 'checked' : '' }} style="display: none;">
                                    <span style="display: block; padding: 4px 12px; border: 1px solid #ddd; border-radius: 4px; font-size: 12px;">{{ $option }}</span>
                                </label>
                            @endforeach
                        </div>
                    </div>
                @endforeach

                <div style="margin-bottom: 20px;">
                    <div style="font-size: 12px; font-weight: 500; margin-bottom: 5px;">{{translate('quantity')}}:</div>
                    <div style="display: flex; align-items: center; gap: 10px;">
                        <button type="button" onclick="this.parentNode.querySelector('input').stepDown()" style="background: #eee; border: none; width: 30px; height: 30px; border-radius: 4px;">-</button>
                        <input type="number" name="quantity" value="{{ $product->minimum_order_qty ?? 1 }}" min="{{ $product->minimum_order_qty ?? 1 }}" style="width: 50px; text-align: center; border: 1px solid #ddd; border-radius: 4px; padding: 4px;">
                        <button type="button" onclick="this.parentNode.querySelector('input').stepUp()" style="background: #eee; border: none; width: 30px; height: 30px; border-radius: 4px;">+</button>
                    </div>
                </div>

                <div style="display: grid; grid-template-columns: 1fr 1fr; gap: 10px;">
                    <button type="button" class="btn-primary" onclick="addToCart()" style="padding: 12px;">{{translate('add_to_cart')}}</button>
                    <button type="button" class="btn-outline" style="color: #111; border-color: #111; padding: 12px;" onclick="addWishlist({{$product->id}})">{{translate('add_to_wishlist')}}</button>
                </div>
            </form>
        </div>
    </div>
</div>

<style>
    #add-to-cart-form input[type="radio"]:checked + span {
        border-color: var(--color-primary);
        background: #fef9ee;
        color: #7a4d00;
        font-weight: 600;
    }
    #add-to-cart-form input[type="radio"]:checked + span[style*="border-radius: 50%"] {
        outline-color: var(--color-primary);
        outline-width: 2px;
    }
</style>
