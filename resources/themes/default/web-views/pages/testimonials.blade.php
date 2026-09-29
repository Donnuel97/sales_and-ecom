@extends('layouts.front-end.app')

@section('title', translate('testimonials'))

@push('css_or_js')
    <style>
        .testimonial-card {
            border: none;
            box-shadow: 0 4px 15px rgba(0,0,0,0.05);
            transition: transform 0.3s ease;
            height: 100%;
        }
        .testimonial-card:hover {
            transform: translateY(-5px);
        }
        .testimonial-rating {
            color: #feb213;
        }
        .customer-avatar {
            width: 50px;
            height: 50px;
            border-radius: 50%;
            object-fit: cover;
        }
    </style>
@endpush

@section('content')
    <div class="container py-5">
        <div class="text-center mb-5">
            <h2 class="h1 text-capitalize">{{ translate('what_Our_Customers_Say') }}</h2>
            <p class="text-muted">{{ translate('hear_from_our_happy_customers_about_their_experience') }}</p>
        </div>

        <div class="row g-4">
            @forelse($testimonials as $testimonial)
                <div class="col-md-6 col-lg-4">
                    <div class="card testimonial-card p-4">
                        <div class="d-flex align-items-center gap-3 mb-3">
                            <img class="customer-avatar" 
                                 onerror="this.src='{{asset('assets/front-end/img/image-place-holder.png')}}'"
                                 src="{{asset('assets/profile')}}/{{$testimonial->customer ? $testimonial->customer->image : ''}}" 
                                 alt="{{ $testimonial->customer ? $testimonial->customer->f_name : 'Customer' }}">
                            <div>
                                <h6 class="mb-0">{{ $testimonial->customer ? $testimonial->customer->f_name . ' ' . $testimonial->customer->l_name : translate('customer_not_found') }}</h6>
                                <div class="testimonial-rating">
                                    @for($i=1; $i<=5; $i++)
                                        <i class="tio-star{{ $i <= $testimonial->rating ? '' : '-outlined' }}"></i>
                                    @endfor
                                </div>
                            </div>
                        </div>
                        <p class="mb-0 text-muted italic">
                            "{{ $testimonial->testimonial }}"
                        </p>
                    </div>
                </div>
            @empty
                <div class="col-12 text-center">
                    <p>{{ translate('no_testimonials_available_yet') }}</p>
                </div>
            @endforelse
        </div>

        <div class="mt-5 d-flex justify-content-center">
            {!! $testimonials->links() !!}
        </div>
    </div>
@endsection
