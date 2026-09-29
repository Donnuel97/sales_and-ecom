<div class="row col-lg-12 mb-3">
    <b class="col-lg-2">Full name:</b>
    <div class="col-lg-10">{{$seller->f_name. ' '. $seller->l_name}}</div>
</div>
<div class="row col-lg-12 mb-3">
    <b class="col-lg-2">Shop address:</b>
    <div class="col-lg-10">{{$seller->shop->address}}</div>
</div>
<div class="row col-lg-12 mb-3">
    <b class="col-lg-2">Bank details:</b>
    <div class="col-lg-10">{{$seller->bank_name. ', '. $seller->account_no}}</div>
</div>
<div class="row col-lg-12 mb-3">
    <b class="col-lg-2">NIN:</b>
    <div class="col-lg-10">{{$seller->nin}}</div>
</div>
<div class="row col-lg-12 mb-3">
    <b class="col-lg-2">Vendor image:</b>
    <div class="col-lg-10">
        <div class="media flex-column flex-sm-row gap-3">
            <img class="avatar avatar-170 rounded-0" src="{{asset('/assets/seller/'. ($seller->image ?? 'default-seller-image.webp'))}}">
        </div>
    </div>
</div>

<div class="row col-lg-12 mb-3">
    <b class="col-lg-2">Shop logo:</b>
    <div class="col-lg-10">
        <div class="media flex-column flex-sm-row gap-3">
            <img class="avatar avatar-170 rounded-0" src="{{asset('/assets/shop/'. $seller->shop->image)}}" onerror="this.src='{{asset('assets/front-end/img/default-store-logo.png')}}'">
        </div>
    </div>
</div>

<div class="row col-lg-12 mb-3">
    <b class="col-lg-2">Shop banner:</b>
    <div class="col-lg-10">

        <div class="media flex-column flex-sm-row gap-3">
            <img style="width: fit-content;" src="{{asset('/assets/shop/banner/'. $seller->shop->banner)}}" onerror="this.src='{{asset('assets/front-end/img/seller-banner.png')}}'">
        </div>
    </div>
</div>