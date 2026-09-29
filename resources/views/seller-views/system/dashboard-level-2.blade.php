@php
    //$useSideBar = false;

    $pageTitle = "Shop registration: Stage Two";
@endphp

@extends('layouts.back-end.app-seller')

@section('title', $pageTitle)

@section('content')
    <div class="row justify-content-center">

        <div style="margin-left: 10%; width: 100%;">
            @include('seller-views.shop.vendor-reg-stepper')
        </div>

        <div class="col-md-11 col-lg-9">
            <!-- Card -->
            <div class="card card-lg mb-5">
                <div class="card-body">
                    <h3 class="mb-3 text-center"> {{$pageTitle}}</h3>
        
                    <form id="form-id" action="{{route('seller.handle.reg.two')}}" method="post" enctype="multipart/form-data">
                        @csrf

                        <div class="text-center">
                            <div class="mb-5">
                                <h5 class="mb-0 text-capitalize d-flex align-items-center gap-2 border-bottom pb-3 mb-4 pl-4">
                                    <img src="{{asset('assets/back-end/img/seller-information.png')}}" class="mb-1" alt="">
                                    {{translate('seller_information')}}
                                </h5>
                            </div>

                            <p>
                                Kindly fill in your details in the form below in order to access the functionalities on the left panel eg. product upload.
                            </p>

                            @if($errors->any())
                                <div class="row justify-content-center mb-5">

                                    @foreach($errors->all() as $error)
                                        {{$error}}
                                    @endforeach
                                </div>
                            @endif
                        </div>

                        <!-- Form Group -->
                        <div class="card-body" style="padding-left: 25%;">
                            <div class="col-sm-9 mt-3">
                                <input type="text" class="form-control form-control-user" id="exampleFirstName" name="f_name" value="{{old('f_name')}}" placeholder="First name" required  maxlength="15" pattern="[a-zA-Z]+" minlength="3" title="Name must be between 3-15 characters and must cannot contain spaces">
                            </div>
                            <div class="col-sm-9 mt-3">
                                <input type="text" class="form-control form-control-user" id="exampleLastName" name="l_name" value="{{old('l_name')}}" placeholder="Last name" required  maxlength="15" pattern="[a-zA-Z]+" minlength="3" title="Name must be between 3-15 characters and must cannot contain spaces">
                            </div>
                            <div class="col-sm-9 mt-3">
                                <input type="text" class="form-control form-control-user" id="exampleOtherName" name="o_names" value="{{old('o_names')}}" placeholder="Middle name" maxlength="15" pattern="[a-zA-Z]+" minlength="3" title="Name must be between 3-15 characters and must cannot contain spaces">
                            </div>
                            <div class="col-sm-9 mt-3">
                                <input type="text" class="form-control form-control-user" id="bank-name" name="bank_name" value="{{old('bank_name')}}" placeholder="Bank name" required maxlength="20">
                            </div>
                            <div class="col-sm-9 mt-3">
                                <input pattern="\d+" class="form-control form-control-user" id="account-no" name="account_no" value="{{old('account_no')}}" placeholder="Bank account number" required maxlength="15">
                            </div>
                            
                            <div class="col-sm-9 mt-3">
                                <input pattern="\d+" maxlength="15" class="form-control form-control-user" id="nin" name="nin" value="{{old('nin')}}" placeholder="Input NIN" required>
                            </div>
                            
                            <div class="col-sm-9 mt-3">
                                <input type="text" maxlength="50" class="form-control form-control-user" id="country" name="country" value="{{old('country')}}" placeholder="Input country" required>
                            </div>
                            
                            <div class="col-sm-9 mt-3">
                                <input type="text" maxlength="50" class="form-control form-control-user" id="city" name="city" value="{{old('city')}}" placeholder="Input city" required>
                            </div>
                            
                            <div class="col-sm-9 mt-3">
                                <input type="text" maxlength="50" class="form-control form-control-user" id="street" name="street" value="{{old('street')}}" placeholder="Input street" required>
                            </div>

                            <div class="mt-3 mb-3" style="font-weight: bold;">

                                <p>Image sizes must be below 1048kB. Their width must not exceed 1100px</p>
                            </div>

                            <div class="row flex-nowrap col-sm-12 mt-3">
                                <div class="form-group col-sm-9">
                                    <div class="custom-file">
                                        <input type="file" name="vendor_image" id="customFileUpload" class="custom-file-input"
                                                accept="image/*">
                                        <label class="custom-file-label" for="customFileUpload" style="color: #777;">Upload profile picture</label>
                                    </div><!-- 
                                    <center>
                                        <img class="__img-125px object-cover" id="viewer"
                                            src="{{asset('assets/back-end/img/400x400/img2.jpg')}}" alt="customer image"/>
                                    </center> -->
                                </div>

                                <div id="viewer" class="col-sm-3" style="font-size: 10px;">
                                    
                                </div>
                            </div>

                            <div class="row flex-nowrap col-sm-12 mt-3">
                                <div class="form-group col-sm-9">
                                    <div class="custom-file">
                                        <input type="file" name="logo" id="LogoUpload" class="custom-file-input"
                                                    accept="image/*">
                                        <label class="custom-file-label" for="LogoUpload" style="color: #777;">{{translate('upload_logo')}}</label>
                                    </div>
                                    <!-- 
                                    <center>
                                        <img class="__img-125px object-cover" id="viewerLogo"
                                            src="{{asset('assets/back-end/img/400x400/img2.jpg')}}" alt="banner image"/>
                                    </center> -->
                                </div>

                                <div id="viewerLogo" class="col-sm-3" style="font-size: 10px;">
                                    
                                </div>
                            </div>

                            <div class="row flex-nowrap col-sm-12 mt-3">
                                <div class="form-group col-sm-9">
                                    <div class="custom-file">
                                        <input type="file" name="banner" id="BannerUpload" class="custom-file-input overflow-hidden __p-2p" accept="image/*">
                                        <label class="custom-file-label" for="BannerUpload" style="color: #777;">{{translate('upload_Banner')}}</label>
                                    </div>
                                    <!-- 
                                    <center>
                                        <img class="__img-125px object-cover" id="viewerBanner"
                                                src="{{asset('assets/back-end/img/400x400/img2.jpg')}}" alt="banner image"/>
                                    </center> -->
                                </div>

                                <div id="viewerBanner" class="col-sm-3" style="font-size: 10px;">
                                    
                                </div>
                        </div>

                        <div class="col-sm-9">
                            
                            <input type="hidden" name="from_submit" value="seller">
                            <button type="submit" class="btn btn--primary btn-user btn-block" id="apply">Submit </button>
                            
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection
@push('script')
@if ($errors->any())
    <script>
        @foreach($errors->all() as $error)
        toastr.error('{{$error}}', Error, {
            CloseButton: true,
            ProgressBar: true
        });
        @endforeach
    </script>
@endif

{{-- recaptcha scripts start --}}
@if(isset($recaptcha) && $recaptcha['status'] == 1)
    <script type="text/javascript">
        var onloadCallback = function () {
            grecaptcha.render('recaptcha_element', {
                'sitekey': '{{ \App\CPU\Helpers::get_business_settings('recaptcha')['site_key'] }}'
            });
        };
    </script>
    <script src="https://www.google.com/recaptcha/api.js?onload=onloadCallback&render=explicit" async defer></script>
    <script>
        $("#form-id").on('submit',function(e) {
            console.log('okay')
            var response = grecaptcha.getResponse();

            if (response.length === 0) {
                e.preventDefault();
                toastr.error("{{translate('please_check_the_recaptcha')}}");
            }
        });
    </script>
@else
    <script type="text/javascript">
        function re_captcha() {
            $url = "{{ URL('/seller/auth/code/captcha') }}";
            $url = $url + "/" + Math.random()+'?captcha_session_id=default_recaptcha_id_seller_regi';
            document.getElementById('default_recaptcha_id').src = $url;
            console.log('url: '+ $url);
        }
    </script>
@endif
{{-- recaptcha scripts end --}}

<script src="{{asset('js/image-upload-preview.js')}}"></script>

<script>

    bindPreviewFields({
        "#customFileUpload": '#viewer',

        "#LogoUpload": '#viewerLogo',

        "#BannerUpload": '#viewerBanner',

        "#BottomBannerUpload": '#viewerBottomBanner',
    });
    
    $('#inputCheckd').change(function () {
        // console.log('jell');
        if ($(this).is(':checked')) {
            $('#apply').removeAttr('disabled');
        } else {
            $('#apply').attr('disabled', 'disabled');
        }

    });

    $("#changePassIcon").on("click", function (e) {

        e.preventDefault();

        var field = $("#passwordField"),

        obscure = "password";

        field.attr("type", field.prop("type") == obscure? "text": obscure);
    });

    function resetBtn(){
        let placeholderImg = $("#placeholderImg").data('img');
        
        for (let detail in imageFieldDetails)

            $(imageFieldDetails[detail]).attr('src', placeholderImg);

        $('.spartan_remove_row').click();
    }

    $('#exampleInputPassword ,#exampleRepeatPassword').on('keyup',function () {
        var pass = $("#exampleInputPassword").val();
        var passRepeat = $("#exampleRepeatPassword").val();
        if (pass==passRepeat){
            $('.pass').hide();
        }
        else{
            $('.pass').show();
        }
    });
    $('#apply').on('click',function () {

        var image = $("#image-set").val();
        if (image=="")
        {
            $('.image').show();
            return false;
        }
        var pass = $("#exampleInputPassword").val();
        var passRepeat = $("#exampleRepeatPassword").val();
        if (pass!=passRepeat){
            $('.pass').show();
            return false;
        }


    });
</script>
@endpush
