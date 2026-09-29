@extends('layouts.front-end.app')

@section('title', translate('kitchen_solutions'))

@push('css_or_js')
    @php($kitchen_ui = \App\CPU\Helpers::get_business_settings('kitchen_solutions_ui'))
    <style>
        .kitchen-hero {
            background: linear-gradient({{ $kitchen_ui['header_bg_color'] ?? 'rgba(0,0,0,0.6)' }}80, {{ $kitchen_ui['header_bg_color'] ?? 'rgba(0,0,0,0.6)' }}80), url('{{ $kitchen_ui && isset($kitchen_ui['header_bg_image']) ? asset('assets/kitchen-solutions/'.$kitchen_ui['header_bg_image']) : asset('assets/front-end/img/kitchen-bg.jpg') }}');
            background-size: cover;
            background-position: center;
            height: 400px;
            display: flex;
            align-items: center;
            justify-content: center;
            color: {{ $kitchen_ui['header_text_color'] ?? 'white' }};
            text-align: center;
        }
        .inquiry-form-card {
            border: none;
            box-shadow: 0 10px 30px rgba(0,0,0,0.1);
            border-radius: 15px;
            margin-top: -100px;
            background: white;
            padding: 40px;
        }
        .btn--primary {
            background: {{$web_config['primary_color']}};
            color: white;
        }
    </style>
@endpush

@section('content')
    <div class="kitchen-hero">
        <div class="container">
            <h1 class="display-3 font-bold mb-3" style="color: {{ $kitchen_ui['header_text_color'] ?? 'white' }}">{{ $kitchen_ui['header_title'] ?? translate('kitchen_solutions') }}</h1>
            <p class="h3 font-weight-light">{{ $kitchen_ui['header_subtitle'] ?? translate('we_design_and_equip_complete_kitchens') }}</p>
        </div>
    </div>

    <div class="container mb-5">
        <div class="row justify-content-center">
            <div class="col-lg-8">
                <div class="inquiry-form-card">
                    <h3 class="text-center mb-4">{{ $kitchen_ui['form_title'] ?? translate('request_a_consultation') }}</h3>
                    <p class="text-center text-muted mb-5">{{ $kitchen_ui['form_subtitle'] ?? translate('share_your_project_details_and_our_experts_will_get_back_to_you') . '.' }}</p>

                    <form action="{{route('kitchen-solutions.store')}}" method="POST">
                        @csrf
                        <div class="row">
                            <div class="col-md-6 mb-3">
                                <label class="form-label font-bold">{{translate('full_Name')}}</label>
                                <input type="text" name="name" class="form-control" placeholder="{{translate('enter_your_full_name')}}" required>
                            </div>
                            <div class="col-md-6 mb-3">
                                <label class="form-label font-bold">{{translate('email_Address')}}</label>
                                <input type="email" name="email" class="form-control" placeholder="{{translate('enter_your_email')}}" required>
                            </div>
                            <div class="col-md-12 mb-3">
                                <label class="form-label font-bold">{{translate('phone_Number')}}</label>
                                <input type="text" name="phone" class="form-control" placeholder="{{translate('enter_your_phone_number')}}" required>
                            </div>
                            <div class="col-md-12 mb-4">
                                <label class="form-label font-bold">{{translate('project_Details')}}</label>
                                <textarea name="project_details" class="form-control" rows="5" placeholder="{{translate('tell_us_about_your_kitchen_needs')}}..." required></textarea>
                            </div>
                            <div class="col-12">
                                <button type="submit" class="btn btn--primary btn-lg w-100 font-bold py-3 uppercase tracking-wider">
                                    {{translate('send_Inquiry')}}
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <div class="container my-5 py-5">
        <div class="row align-items-center">
            <div class="col-md-6 mb-4 mb-md-0">
                <img src="{{ $kitchen_ui && isset($kitchen_ui['secondary_image']) ? asset('assets/kitchen-solutions/'.$kitchen_ui['secondary_image']) : asset('assets/front-end/img/kitchen-design.jpg') }}" onerror="this.src='{{asset('assets/front-end/img/image-place-holder.png')}}'" class="img-fluid rounded-10 shadow" alt="Kitchen Design">
            </div>
            <div class="col-md-6 px-lg-5">
                <h2 class="font-bold mb-4">{{ $kitchen_ui['secondary_title'] ?? translate('expert_Kitchen_Design') }}</h2>
                <p class="text-muted fs-16 mb-4">
                    {{ $kitchen_ui['secondary_description'] ?? translate('from_commercial_kitchens_to_premium_residential_spaces_we_provide_end_to_end_solutions_that_combine_functionality_with_style') }}.
                </p>
                <ul class="list-unstyled">
                    <li class="mb-2 d-flex align-items-center gap-2">
                        <i class="fa fa-check-circle" style="color: {{$web_config['primary_color']}};"></i>
                        {{translate('custom_layout_design')}}
                    </li>
                    <li class="mb-2 d-flex align-items-center gap-2">
                        <i class="fa fa-check-circle" style="color: {{$web_config['primary_color']}};"></i>
                        {{translate('premium_equipment_selection')}}
                    </li>
                    <li class="mb-2 d-flex align-items-center gap-2">
                        <i class="fa fa-check-circle" style="color: {{$web_config['primary_color']}};"></i>
                        {{translate('professional_installation')}}
                    </li>
                </ul>
            </div>
        </div>
    </div>
@endsection
