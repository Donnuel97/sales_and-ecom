<div class="row no-gutters position-relative rtl">
    <div class="col-12 rtl pt-4 px-0 px-md-3">
        <div>
            <div class="owl-theme owl-carousel hero-slider">
                @foreach($main_banner as $key=>$banner)
                <a href="{{$banner['url']}}" class="d-block">
                    <img class="w-100 __slide-img"
                        onerror="this.src='{{asset('assets/front-end/img/image-place-holder.png')}}'"
                        src="{{asset('assets/banner/'. $banner['photo'])}}"
                        alt="">
                </a>
                @endforeach
            </div>
        </div>
    </div>
</div>

