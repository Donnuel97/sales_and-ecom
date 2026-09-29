@extends('layouts.back-end.app')

@section('title', translate('testimonial_list'))

@section('content')
    <div class="content container-fluid">
        <!-- Page Title -->
        <div class="mb-3">
            <h2 class="h1 mb-0 text-capitalize d-flex align-items-center gap-2">
                <img width="20" src="{{asset('assets/back-end/img/order.png')}}" alt="">
                {{translate('testimonials')}}
            </h2>
        </div>

        <div class="row mt-20">
            <div class="col-md-12">
                <div class="card">
                    <div class="px-3 py-4">
                        <div class="row align-items-center">
                            <div class="col-sm-4 col-md-6 col-lg-8 mb-2 mb-sm-0">
                                <h5 class="mb-0 text-capitalize d-flex gap-2">
                                    {{ translate('testimonial_list') }}
                                    <span class="badge badge-soft-dark radius-50 fz-12">{{ $testimonials->total() }}</span>
                                </h5>
                            </div>
                            <div class="col-sm-8 col-md-6 col-lg-4">
                                <form action="{{ url()->current() }}" method="GET">
                                    <div class="input-group input-group-merge input-group-flush">
                                        <div class="input-group-prepend">
                                            <div class="input-group-text">
                                                <i class="tio-search"></i>
                                            </div>
                                        </div>
                                        <input id="datatableSearch_" type="search" name="search" class="form-control"
                                            placeholder="{{ translate('search_by_testimonial') }}" aria-label="Search orders" value="{{ $search }}" required>
                                        <button type="submit" class="btn btn--primary">{{ translate('search') }}</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>

                    <div class="table-responsive">
                        <table class="table table-hover table-borderless table-thead-bordered table-nowrap table-align-middle card-table w-100">
                            <thead class="thead-light thead-50 text-capitalize">
                                <tr>
                                    <th>{{ translate('SL') }}</th>
                                    <th>{{ translate('customer_name') }}</th>
                                    <th>{{ translate('testimonial') }}</th>
                                    <th>{{ translate('rating') }}</th>
                                    <th>{{ translate('status') }}</th>
                                    <th class="text-center">{{ translate('action') }}</th>
                                </tr>
                            </thead>
                            <tbody>
                            @foreach($testimonials as $key => $testimonial)
                                <tr>
                                    <td>{{ $testimonials->firstItem() + $key }}</td>
                                    <td>
                                        @if($testimonial->customer)
                                            <a href="{{ route('admin.customer.view', [$testimonial->customer->id]) }}" class="title-color hover-c1">
                                                {{ $testimonial->customer->f_name }} {{ $testimonial->customer->l_name }}
                                            </a>
                                        @else
                                            <label class="badge badge-soft-danger">{{ translate('customer_not_found') }}</label>
                                        @endif
                                    </td>
                                    <td>
                                        <div class="text-wrap" style="width: 300px;">
                                            {{ $testimonial->testimonial }}
                                        </div>
                                    </td>
                                    <td>
                                        <label class="badge badge-soft-info">
                                            {{ $testimonial->rating }} <i class="tio-star"></i>
                                        </label>
                                    </td>
                                    <td>
                                        <label class="switcher">
                                            <input type="checkbox" class="switcher_input"
                                                onclick="location.href='{{ route('admin.testimonials.status', [$testimonial->id, $testimonial->status ? 0 : 1]) }}'"
                                                {{ $testimonial->status ? 'checked' : '' }}>
                                            <span class="switcher_control"></span>
                                        </label>
                                    </td>
                                    <td>
                                        <div class="d-flex justify-content-center gap-2">
                                            <form action="{{ route('admin.testimonials.delete', [$testimonial->id]) }}" method="POST" id="testimonial-{{$testimonial->id}}">
                                                @csrf @method('delete')
                                                <input type="hidden" name="id" value="{{$testimonial->id}}">
                                            </form>
                                            <button class="btn btn-outline-danger btn-sm delete"
                                                title="{{ translate('delete') }}"
                                                onclick="form_alert('testimonial-{{$testimonial->id}}', '{{ translate('want_to_delete_this_testimonial') }}?')">
                                                <i class="tio-delete"></i>
                                            </button>
                                        </div>
                                    </td>
                                </tr>
                            @endforeach
                            </tbody>
                        </table>
                    </div>

                    <div class="table-responsive mt-4">
                        <div class="px-4 w-100">
                            {!! $testimonials->links() !!}
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
