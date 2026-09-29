@extends('layouts.front-end.app')

@section('title',translate('Seller Apply'))

@push('css_or_js')
<link href="{{asset('assets/back-end')}}/css/select2.min.css" rel="stylesheet"/>
<link href="{{asset('assets/back-end/css/croppie.css')}}" rel="stylesheet">
@endpush


@section('content')
    <div class="row justify-content-center">
        <div class="col-md-7 col-lg-5">
            <!-- Card -->
            <div class="card card-lg mb-5">
                <div class="card-body">
                    <h3 class="mb-3 text-center"> {{translate('Shop')}} {{translate('Application')}}</h3>
        
                    <form id="form-id" action="{{route('shop.apply')}}" method="post">
                        @csrf

                        <div class="text-center">
                            <div class="mb-5">
                                <h5 class="mb-0 text-capitalize d-flex align-items-center gap-2 border-bottom pb-3 mb-4 pl-4">
                                    <img src="{{asset('assets/back-end/img/seller-information.png')}}" class="mb-1" alt="">
                                    {{translate('seller_information')}}
                                </h5>
                            </div>
                        </div>

                        <!-- Form Group -->
                        <div class="js-form-message form-group">
                            <label class="input-label" for="signinSrEmail">{{translate('your_email')}}</label>

                            <input type="email" class="form-control form-control-lg" name="email" id="signinSrEmail"
                                   tabindex="1" placeholder="email@address.com" aria-label="email@address.com"
                                   required data-msg="Please enter a valid email address." maxlength="50">
                        </div>
                        <!-- End Form Group -->
                        <div class="form-group">
                            <label for="exampleInputPhone" class="title-color d-flex gap-1 align-items-center">{{translate('phone')}}</label>
                            <input class="form-control form-control-user" id="exampleInputPhone" name="phone" value="{{old('phone')}}" placeholder="+2347027483921" required  type="text" maxlength="15" pattern="[+0-9]+" name="phone" title="Phone can only only contain digits or +">
                        </div>
                        <!-- End Form Group -->
                        <div class="form-group">
                            <label for="shop_name" class="title-color d-flex gap-1 align-items-center">Shop Name:</label>
                            
                            <input type="text" class="form-control form-control-user" id="shop_name" name="shop_name" placeholder="{{translate('shop_name')}}" value="{{old('shop_name')}}" required maxlength="50">
                        </div>

                        <!-- Form Group -->
                        <div class="js-form-message form-group">
                            <label class="input-label" for="signupSrPassword" tabindex="0">
                                <span class="d-flex justify-content-between align-items-center">
                                  {{translate('password')}}
                                </span>
                            </label>

                            <div class="input-group input-group-merge">
                                <input id="passwordField" type="password" class="js-toggle-password form-control form-control-lg"
                                       name="password" id="signupSrPassword" placeholder="{{ translate('8+_characters_required') }}"
                                       aria-label="8+ characters required" required
                                       data-msg="Your password is invalid. Please try again." minlength="8">
                                <div class="input-group-append">
                                    <button class="input-group-text" id="changePassIcon">
                                        <i class="tio-visible-outlined"></i>
                                    </button>
                                </div>
                            </div>
                        </div>
                        <!-- End Form Group -->
                        <!-- End Checkbox -->
                        {{-- recaptcha --}}
                        @php($recaptcha = \App\CPU\Helpers::get_business_settings('recaptcha'))
                        @if(isset($recaptcha) && $recaptcha['status'] == 1)
                            <div id="recaptcha_element" class="w-100;" data-type="image"></div>
                            <br/>
                        @else
                            <div class="row">
                                <div class="col-9 pr-0">
                                    <input type="text" class="form-control form-control-lg" name="default_captcha_value" value=""
                                        placeholder="{{translate('enter_captcha_value')}}" autocomplete="off" required>
                                </div>
                                <div class="col-3 input-icons" class="bg-white rounded">
                                    <a onclick="javascript:re_captcha();" class="mt-1" style="display: flex; flex-wrap: nowrap; justify-content: space-between;">
                                        <img src="{{'/seller/auth/code/captcha/'.rand().'?captcha_session_id=default_recaptcha_id_seller_regi' }}" class="input-field w-90 h-75" id="default_recaptcha_id">
                                        <i class="tio-refresh icon"></i>
                                    </a>
                                </div>
                            </div>
                        @endif

                        <div class="d-flex align-items-center justify-content-end mt-3">
                            <!-- <input type="hidden" name="from_submit" value="admin"> --><!-- don't know why this was set to admin but it disables captcha check -->
                            <button type="reset" onclick="resetBtn()" class="btn btn-secondary">{{translate('reset')}} </button>
                            <button type="submit" class="btn btn--primary btn-user ml-3" id="apply">{{translate('submit')}}</button>
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

<script>
    $('#inputCheckd').change(function () {
            // console.log('jell');
            if ($(this).is(':checked')) {
                $('#apply').removeAttr('disabled');
            } else {
                $('#apply').attr('disabled', 'disabled');
            }

        });

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
    function Validate(file) {
        var x;
        var le = file.length;
        var poin = file.lastIndexOf(".");
        var accu1 = file.substring(poin, le);
        var accu = accu1.toLowerCase();
        if ((accu != '.png') && (accu != '.jpg') && (accu != '.jpeg')) {
            x = 1;
            return x;
        } else {
            x = 0;
            return x;
        }
    }

    function readURL(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {
                $('#viewer').attr('src', e.target.result);
            }

            reader.readAsDataURL(input.files[0]);
        }
    }

    $("#customFileUpload").change(function () {
        readURL(this);
    });

    function readlogoURL(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {
                $('#viewerLogo').attr('src', e.target.result);
            }

            reader.readAsDataURL(input.files[0]);
        }
    }

    function readBannerURL(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {
                $('#viewerBanner').attr('src', e.target.result);
            }

            reader.readAsDataURL(input.files[0]);
        }
    }

    $("#LogoUpload").change(function () {
        readlogoURL(this);
    });
    $("#BannerUpload").change(function () {
        readBannerURL(this);
    });

    function resetBtn(){
        let placeholderImg = $("#placeholderImg").data('img');
        $('#viewer').attr('src', placeholderImg);
        $('#viewerBanner').attr('src', placeholderImg);
        $('#viewerBottomBanner').attr('src', placeholderImg);
        $('#viewerLogo').attr('src', placeholderImg);
        $('.spartan_remove_row').click();
    }

    function openInfoWeb()
    {
        var x = document.getElementById("website_info");
        if (x.style.display === "none") {
            x.style.display = "block";
        } else {
            x.style.display = "none";
        }
    }

    $('#inputCheckd').change(function () {
            // console.log('jell');
            if ($(this).is(':checked')) {
                $('#apply').removeAttr('disabled');
            } else {
                $('#apply').attr('disabled', 'disabled');
            }

        });

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

    $("#customFileUpload").change(function () {
        readURL(this);
    });

    function readBannerURL(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {
                $('#viewerBanner').attr('src', e.target.result);
            }

            reader.readAsDataURL(input.files[0]);
        }
    }

    function readBottomBannerURL(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {
                $('#viewerBottomBanner').attr('src', e.target.result);
            }

            reader.readAsDataURL(input.files[0]);
        }
    }

    $("#LogoUpload").change(function () {
        readlogoURL(this);
    });
    $("#BannerUpload").change(function () {
        readBannerURL(this);
    });
    $("#BottomBannerUpload").change(function () {
        readBottomBannerURL(this);
    });

    $("#changePassIcon").on("click", function (e) {

        e.preventDefault();

        var field = $("#passwordField"),

        obscure = "password";

        field.attr("type", field.prop("type") == obscure? "text": obscure);
    });
</script>
@endpush
