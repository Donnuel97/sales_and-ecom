@extends('theme-views.layouts.app')

@section('title', translate('My_Address').' | '.$web_config['name']->value.' '.translate('ecommerce'))
@push('css_or_js')
    <link rel="stylesheet" href="{{ theme_asset('assets/plugins/select2/css/select2.min.css') }}">
    <style>
        .select2{
            max-width: 100%;
            border-radius: 0.375rem;
            border: 1px solid #ced4da;
        }
    </style>
@endpush

@section('content')
    <!-- Main Content -->
    <main class="main-content d-flex flex-column gap-3 py-3 mb-5">
        <div class="container">
            <div class="row g-3">
                <!-- Sidebar-->
                @include('theme-views.partials._profile-aside')
                <div class="col-lg-9">
                    <div class="card h-100">
                        <div class="card-body p-lg-4">
                            <div class="mt-4">
                                <form action="{{route('address-store')}}" method="post">
                                    @csrf
                                    <div class="row gy-4">
                                        <div class="col-md-6">
                                            <div class="">
                                                <h6 class="fw-semibold text-muted mb-3">{{translate('Choose_Label')}}</h6>
                                                <ul class="option-select-btn flex-wrap style--two gap-4 mb-4">
                                                    <li>
                                                        <label>
                                                            <input type="radio" name="addressAs" value="home" hidden checked>
                                                            <span><i class="bi bi-house"></i></span>
                                                        </label>
                                                        {{translate('Home')}}
                                                    </li>
                                                    <li>
                                                        <label>
                                                            <input type="radio" name="addressAs" value="permanent" hidden="">
                                                            <span><i class="bi bi-paperclip"></i></span>
                                                        </label>
                                                        {{translate('Permanent')}}
                                                    </li>
                                                    <li>
                                                        <label>
                                                            <input type="radio" name="addressAs" value="office" hidden="">
                                                            <span><i class="bi bi-briefcase"></i></span>
                                                        </label>
                                                        {{translate('Office')}}
                                                    </li>
                                                </ul>
                                            </div>

                                            <div class="form-group mb-3">
                                                <label for="name">{{translate('Contact_Person')}}</label>
                                                <input type="text" id="name" class="form-control" name="name" placeholder="{{translate('Ex:_Jhon_Doe')}}" required>
                                            </div>

                                            <div class="form-group mb-3">
                                                <label for="phone">{{translate('Phone')}}</label>
                                                <input type="tel" id="phone" class="form-control " name="phone" required placeholder="{{translate('Ex:_01xxxxxxxxx')}}">
                                            </div>

                                            <div class="form-group mb-3 ">
                                                <label for="country">{{translate('Country')}}</label>
                                                <select name="country" id="country" class="form-control select_picker" required>
                                                    <option value="" disabled selected>{{translate('Select_Country')}}</option>
                                                    @foreach($countries as $d)
                                                        <option value="{{ $d['name'] }}">{{ $d['name'] }}</option>
                                                    @endforeach
                                                </select>
                                            </div>

                                            <div class="form-group mb-3">
                                                <label for="city">{{translate('City')}}</label>
                                                <input class="form-control" type="text" id="address-city" name="city" required>
                                            </div>

                                            <div class="form-group">
                                                <label for="zip-code">{{translate('Zip_Code')}}</label>
                                                @if($zip_restrict_status)
                                                    <select name="zip" id="" class="form-control select2 select_picker"  data-live-search="true" required>
                                                        @foreach($zip_codes as $code)
                                                            <option value="{{ $code->zipcode }}">{{ $code->zipcode }}</option>
                                                        @endforeach
                                                    </select>
                                                @else
                                                    <input class="form-control" type="text" id="zip" name="zip" required>
                                                @endif
                                            </div>
                                        </div>
                                        <div class="col-md-6 mt-5 mt-md-0">
                                            <div class="d-flex justify-content-end mb-5">
                                                <a href="{{ route('user-profile') }}" class="btn-link text-secondary d-flex align-items-baseline">
                                                    <i class="bi bi-chevron-left fs-12"></i> {{translate('Go_back')}}
                                                </a>
                                            </div>

                                            <h6 class="fw-semibold text-muted mb-3">{{translate('Choose_Address_Type')}}</h6>
                                            <div class="d-flex flex-wrap style--two gap-4 mb-3">
                                                <div>
                                                    <label class="d-flex align-items-center gap-2 cursor-pointer">
                                                        <input type="radio" name="is_billing" checked="" value="1">
                                                        {{translate('Billing_Address')}}
                                                    </label>
                                                </div>
                                                <div>
                                                    <label class="d-flex align-items-center gap-2 cursor-pointer">
                                                        <input type="radio" name="is_billing" value="0">
                                                        {{translate('Shipping_Address')}}
                                                    </label>
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <label for="address">{{translate('Address')}}</label>
                                                <textarea name="address" id="address" rows="5" class="form-control" placeholder="{{translate('Ex:_1216_Dhaka')}}" required></textarea>
                                            </div>
                                        </div>
                                        
                                        <div class="col-12">
                                            <div class="d-flex flex-wrap gap-3 justify-content-between align-items-center">
                                                <label class="custom-checkbox"></label>
                                                <div class="d-flex justify-content-end gap-3">
                                                    <button type="reset" class="btn btn-secondary">{{translate('Reset')}}</button>
                                                    <button type="submit" class="btn btn-primary">{{translate('Add_Address')}}</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>


    <!-- End Main Content -->
@endsection
@push('script')
    <script src="{{ theme_asset('assets/plugins/select2/js/select2.min.js') }}"></script>

    <script>
        $(document).ready(function() {
            $('.select_picker').select2();

        });

    </script>
@endpush
