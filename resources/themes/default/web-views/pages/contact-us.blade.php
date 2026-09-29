@extends('layouts.front-end.app')

@section('title',translate('contact_us'))

@push('css_or_js')
    <meta property="og:image" content="{{asset('assets/company')}}/{{$web_config['web_logo']->value}}"/>
    <meta property="og:title" content="Contact {{$web_config['name']->value}} "/>
    <meta property="og:url" content="{{env('APP_URL')}}">
    <meta property="og:description" content="{{ substr(strip_tags(str_replace('&nbsp;', ' ', $web_config['about']->value)),0,160) }}">

    <meta property="twitter:card" content="{{asset('assets/company')}}/{{$web_config['web_logo']->value}}"/>
    <meta property="twitter:title" content="Contact {{$web_config['name']->value}}"/>
    <meta property="twitter:url" content="{{env('APP_URL')}}">
    <meta property="twitter:description" content="{{ substr(strip_tags(str_replace('&nbsp;', ' ', $web_config['about']->value)),0,160) }}">

    <style>
        @media (max-width: 600px) {
            .sidebar_heading {
                background: {{$web_config['primary_color']}}
            }
        }
    </style>
@endpush
@section('content')
<div class="__inline-58">
    <div class="container rtl">
        <div class="row">
            <div class="col-md-12 sidebar_heading text-center mb-2">
                <h1 class="h3  mb-0 folot-left headerTitle">{{translate('contact_us')}}</h1>
            </div>
        </div>
    </div>

    <!-- Split section: Map + Contact form-->
    <div class="container rtl" style="text-align: {{Session::get('direction') === "rtl" ? 'right' : 'left'}};">
        <div class="row no-gutters py-5">
            <div class="col-lg-6 iframe-full-height-wrap ">
                <img class="for-contac-image" src="{{asset("assets/front-end/png/contact.png")}}" alt="">
            </div>
            <div class="col-lg-6">
                <div class="card">
                    <div class="card-body for-send-message">
                        <h2 class="h4 mb-4 text-center font-semibold text-black">{{translate('send_us_a_message')}}</h2>
                        <form action="{{route('contact.store')}}" method="POST" id="getResponse">
                            @csrf
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label >{{translate('your_name')}}</label>
                                        <input class="form-control name" name="name" type="text"
                                               value="{{ old('name') }}" placeholder="John Doe" required>

                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label for="cf-email">{{translate('email_address')}}</label>
                                        <input class="form-control email" name="email" type="email"
                                               value="{{ old('email') }}"
                                               placeholder="johndoe@email.com" required >

                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label for="cf-phone">{{translate('your_phone')}}</label>
                                        <input class="form-control mobile_number"  type="text" name="mobile_number"
                                               value="{{ old('mobile_number') }}"  placeholder="{{translate('contact_number')}}" required>

                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label for="cf-subject">{{translate('subject')}}:</label>
                                        <input class="form-control subject" type="text" name="subject"
                                               value="{{ old('subject') }}"   placeholder="{{translate('short_title')}}" required>

                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="cf-message">{{translate('message')}}</label>
                                        <textarea class="form-control message" name="message"   rows="6" required>{{ old('subject') }}</textarea>
                                    </div>
                                </div>
                            </div>
                            <div class=" ">
                                <button class="btn btn--primary" type="submit" >{{translate('send')}}</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection


@push('script')
@endpush

