<div class="dropdown-menu dropdown-menu-right saved-address-dropdown scroll-bar-saved-address" aria-labelledby="dropdownMenuButton">
    @foreach($shipping_addresses as $key=>$address)
    <div class="dropdown-item select_shipping_address {{$key == 0 ? 'active' : ''}}" id="shippingAddress{{$key}}">
        <input type="hidden" class="selected_shippingAddress{{$key}}" value="{{$address}}">
        <input type="hidden" name="shipping_method_id" value="{{$address['id']}}">
        <div class="media gap-2">
            <div class="">
                <i class="tio-briefcase"></i>
            </div>
            <div class="media-body">
                <div class="mb-1 text-capitalize">{{$address->address_type}}</div>
                <div class="text-muted fs-12 text-capitalize text-wrap">{{$address->address}}</div>
            </div>
        </div>
    </div>
    @endforeach
</div>