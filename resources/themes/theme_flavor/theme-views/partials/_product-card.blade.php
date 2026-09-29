<div class="pc">
    <div class="pc-img">
        @php($overall_rating = \App\CPU\ProductManager::get_overall_rating($product->reviews))
        @if($product->discount > 0)
            <div class="pc-bdg">
                @if ($product->discount_type == 'percent')
                    {{round($product->discount,(!empty($decimal_point_settings) ? $decimal_point_settings: 0))}}% {{translate('off')}}
                @elseif($product->discount_type =='flat')
                    {{translate('off')}} {{\App\CPU\Helpers::currency_converter($product->discount)}}
                @endif
            </div>
        @elseif($product->created_at > now()->subDays(7))
            <div class="pc-bdg new">{{translate('new')}}</div>
        @endif
        
        <a href="{{route('product', $product->slug)}}" style="width:100%;height:100%; display: block;">
            <img src="{{ !empty($product->thumbnail) ? \App\CPU\ProductManager::product_image_path('thumbnail').'/'.$product->thumbnail : asset('assets/front-end/img/image-place-holder.png') }}" 
                 onerror="this.src='{{asset('assets/front-end/img/image-place-holder.png')}}'" 
                 class="pc-img-real">
        </a>
        <button class="pc-fav" onclick="addWishlist({{$product->id}})">
            <i class="ti ti-heart"></i>
        </button>
    </div>
    <div class="pc-body">
        <a href="{{route('product', $product->slug)}}" class="pc-nm" title="{{$product->name}}">{{$product->name}}</a>
        <div class="pc-meta">{{$product->category ? $product->category->name : translate('kitchen_equipment')}}</div>
        <div class="pc-stars">
            @for($i=1;$i<=5;$i++)
                @if($i <= $overall_rating[0])
                    <i class="ti ti-star-filled" style="color: var(--color-primary);"></i>
                @else
                    <i class="ti ti-star" style="color: #ddd;"></i>
                @endif
            @endfor
            <span>({{$product->reviews_count}})</span>
        </div>
        <div class="pc-price">
            <div class="pc-now">{{\App\CPU\Helpers::currency_converter($product->unit_price - \App\CPU\Helpers::get_product_discount($product, $product->unit_price))}}</div>
            @if($product->discount > 0)
                <div class="pc-was">{{\App\CPU\Helpers::currency_converter($product->unit_price)}}</div>
            @endif
        </div>
        <div class="pc-cta">
            <button class="pc-add" onclick="quickView('{{$product->id}}')">{{translate('add_to_cart')}}</button>
            <button class="pc-wish" onclick="addWishlist({{$product->id}})"><i class="ti ti-heart-plus"></i></button>
        </div>
    </div>
</div>
