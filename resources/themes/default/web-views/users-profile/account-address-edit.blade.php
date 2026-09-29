@extends('layouts.front-end.app')

@section('title', translate('my_Address'))

@push('css_or_js')
    <link rel="stylesheet" media="screen"
          href="{{asset('assets/front-end')}}/vendor/nouislider/distribute/nouislider.min.css"/>
    <link rel="stylesheet" href="{{ asset('assets/front-end/css/bootstrap-select.min.css') }}">

    <style>
        .cz-sidebar-body h3:hover + .divider-role {
            border-bottom: 3px solid {{$web_config['primary_color']}} !important;
        }
        .nav-pills .nav-link.active, .nav-pills .show > .nav-link {
            background-color: {{$web_config['primary_color']}};
        }

        .iconHad {
            color: {{$web_config['primary_color']}};
        }
        .namHad {
            padding-{{Session::get('direction') === "rtl" ? 'right' : 'left'}}: 13px;
        }
        .donate-now li {
            margin: {{Session::get('direction') === "rtl" ? '0 0 0 5px' : '0 5px 0 0'}};
        }
        .donate-now input[type="radio"]:checked + label,
        .Checked + label {
            background: {{$web_config['primary_color']}};
        }
        .filter-option{
            display: block;
            width: 100%;
            height: calc(1.5em + 1.25rem + 2px);
            padding: 0.625rem 1rem;
            font-size: .9375rem;
            font-weight: 400;
            line-height: 1.5;
            color: #4b566b;
            background-color: #fff;
            background-clip: padding-box;
            border: 1px solid #dae1e7;
            border-radius: 0.3125rem;
            box-shadow: 0 0 0 0 transparent;
            transition: border-color 0.2s ease-in-out, box-shadow 0.2s ease-in-out;
        }

        .btn-light + .dropdown-menu{
            transform: none !important;
            top: 41px !important;
        }
    </style>
@endpush

@section('content')
<div class="container py-4 rtl __account-address" style="text-align: {{Session::get('direction') === "rtl" ? 'right' : 'left'}};">
    
    <div class="row g-3">
        <!-- Sidebar-->
        @include('web-views.partials._profile-aside')
        <section class="col-lg-9 col-md-8">

            <div class="card">
                <div class="card-body">
                    <h5 class="mb-0">{{translate('UPDATE_ADDRESSES')}}</h5>
                    <form action="{{route('address-update')}}" method="post">
                        @csrf
                        <div class="row pb-1">
                            <div class="col-md-6">
                                <!-- Nav pills -->
                                <input type="hidden" name="id" value="{{$shippingAddress->id}}">
                                <ul class="donate-now">
                                    <li class="address_type_li">
                                        <input type="radio" class="address_type" id="a25" name="addressAs" value="permanent"  {{ $shippingAddress->address_type == 'permanent' ? 'checked' : ''}} />
                                        <label for="a25" class="component">{{translate('permanent')}}</label>
                                    </li>
                                    <li class="address_type_li">
                                        <input type="radio" class="address_type" id="a50" name="addressAs" value="home" {{ $shippingAddress->address_type == 'home' ? 'checked' : ''}} />
                                        <label for="a50" class="component">{{translate('home')}}</label>
                                    </li>
                                    <li class="address_type_li">
                                        <input type="radio" class="address_type" id="a75" name="addressAs" value="office" {{ $shippingAddress->address_type == 'office' ? 'checked' : ''}}/>
                                        <label for="a75" class="component">{{translate('office')}}</label>
                                    </li>
                                </ul>
                            </div>
                            <div class="col-md-6">
                                <!-- Nav pills -->
                                <input type="hidden" id="is_billing" value="{{$shippingAddress->is_billing}}">
                                <ul class="donate-now">
                                    <li class="address_type_bl">
                                        <input type="radio" class="bill_type" id="b25" name="is_billing" value="0"  {{ $shippingAddress->is_billing == '0' ? 'checked' : ''}} />
                                        <label for="b25" class="component">{{translate('shipping')}}</label>
                                    </li>
                                    <li class="address_type_bl">
                                        <input type="radio" class="bill_type" id="b50" name="is_billing" value="1" {{ $shippingAddress->is_billing == '1' ? 'checked' : ''}} />
                                        <label for="b50" class="component">{{translate('billing')}}</label>
                                    </li>

                                </ul>
                            </div>
                        </div>
                        <!-- Tab panes -->
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="person_name">{{translate('contact_person_name')}}</label>
                                <input class="form-control" type="text" id="person_name"
                                    name="name"
                                    value="{{$shippingAddress->contact_person_name}}"
                                    required>
                            </div>
                            <div class="form-group col-md-6">
                                <label for="own_phone">{{translate('phone')}}</label>
                                <input class="form-control" type="text" id="own_phone" name="phone" value="{{$shippingAddress->phone}}" required="required">
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="city">{{translate('city')}}</label>

                                <input class="form-control" type="text" id="city" name="city" value="{{$shippingAddress->city}}" required>
                            </div>
                            <div class="form-group col-md-6">
                                <label for="zip_code">{{translate('zip_code')}}</label>
                                @if($zip_restrict_status)
                                    <select name="zip" class="form-control selectpicker" data-live-search="true" id="" required>
                                        @foreach($delivery_zipcodes as $zip)
                                            <option value="{{ $zip->zipcode }}" {{ $zip->zipcode == $shippingAddress->zip? 'selected' : ''}}>{{ $zip->zipcode }}</option>
                                        @endforeach
                                    </select>
                                @else
                                    <input class="form-control" type="text" id="zip_code" name="zip" value="{{$shippingAddress->zip}}" required>
                                @endif
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-12">
                                <label for="city">{{translate('country')}}</label>
                                <select name="country" class="form-control selectpicker" data-live-search="true" id="" required>
                                    @if($country_restrict_status)
                                        @foreach($delivery_countries as $country)
                                            <option value="{{$country['name']}}" {{ $country['name'] == $shippingAddress->country? 'selected' : ''}}>{{$country['name']}}</option>
                                        @endforeach
                                    @else
                                        @foreach(COUNTRIES as $country)
                                            <option value="{{ $country['name'] }}" {{ $shippingAddress->country == $country['name']? 'selected' : '' }}>{{ $country['name'] }}</option>
                                        @endforeach
                                    @endif
                                </select>
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-12">
                                <label for="own_address">{{translate('address')}}</label>
                                <textarea class="form-control" id="address"
                                    type="text"  name="address" required>{{$shippingAddress->address}}</textarea>
                            </div>
                        </div>
                        @php($shipping_latitude=$shippingAddress->latitude)
                        @php($shipping_longitude=$shippingAddress->longitude)
                        <input type="hidden" id="latitude"
                            name="latitude" class="form-control d-inline"
                            placeholder="{{ translate('ex')}} : -94.22213" value="{{$shipping_latitude??0}}" required readonly>
                        <input type="hidden"
                            name="longitude" class="form-control"
                            placeholder="{{ translate('ex')}} : 103.344322" id="longitude" value="{{$shipping_longitude??0}}" required readonly>
                        <div class="modal-footer">
                            <a href="{{ route('account-address') }}" class="closeB btn btn-secondary">{{translate('close')}}</a>
                            <button type="submit" class="btn btn--primary">{{translate('update')}}  </button>
                        </div>
                    </form>
                </div>
            </div>

        </section>
    </div>
</div>
@endsection