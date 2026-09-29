@if($product->reviews_count == 0)
    <div>
        <div class="text-center text-capitalize">
            <img class="mw-100" src="{{asset('assets/front-end/img/icons/empty-review.svg')}}" alt="">
            <p class="text-capitalize">
                <small>{{translate('No_review_given_yet')}}!</small>
            </p>
        </div>
    </div>
@else
    <div class="row pt-2 pb-3"> <!-- list active and inactive stars, then show the lines per type ie ***--, followed by delivery =====
            price ==, etc
             -->
        <div class="col-lg-4 col-md-5 "> <!-- star side -->
            @include("web-views.partials._product-card-rating")
        </div>
        <div class="col-lg-8 col-md-7 pt-sm-3 pt-md-0" ><!-- <div class="d-flex align-items-center mb-2 text-body font-size-sm"> -->
            @foreach ($lines_per_type as $type => $typeDetail)
                <div class="d-flex align-items-center mb-2 font-size-sm">
                    <div
                        class="__rev-txt"><span
                            class="d-inline-block align-middle text-body">{{ucwords(str_replace("_", " ", $type))}}</span>
                    </div>
                    <div class="w-0 flex-grow">
                        <div class="progress text-body __h-5px">
                            <div class="progress-bar " role="progressbar"
                                style="background-color: {{$web_config['primary_color']}} !important;width: {{($typeDetail['total_users'] / $typeDetail['value']) * 100 }}%;"
                                aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"></div>
                        </div>
                    </div>
                    <div class="col-1 text-body">
                        <span
                            class=" {{Session::get('direction') === "rtl" ? 'mr-3 float-left' : 'ml-3 float-right'}} ">
                            5
                        </span>
                    </div>
                </div>
            @endforeach
        </div>
    </div>

    <div class="row pb-4 mb-3">
        <div class="__inline-30">
            <span class="text-capitalize">{{ translate('Product_review') }}</span>
        </div>
    </div>
@endif