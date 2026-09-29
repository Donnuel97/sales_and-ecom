@extends('layouts.back-end.app')
@section('title', translate('kitchen_Inquiry_List'))
@push('css_or_js')
    <!-- Custom styles for this page -->
    <link href="{{asset('assets/back-end')}}/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
@endpush

@section('content')
    <div class="content container-fluid">
        <!-- Page Title -->
        <div class="mb-3">
            <h2 class="h1 mb-0 text-capitalize d-flex align-items-center gap-2">
                <img width="20" src="{{asset('assets/back-end/img/message.png')}}" alt="">
                {{translate('kitchen_Inquiries')}}
            </h2>
        </div>
        <!-- End Page Title -->

        <div class="row mt-20">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <div class="row justify-content-between align-items-center flex-grow-1">
                            <div class="col-sm-4 col-md-6 col-lg-8 mb-2 mb-sm-0">
                                <h5 class="d-flex gap-2 align-items-center">
                                    {{translate('kitchen_Inquiry_Table')}}
                                    <span
                                        class="badge badge-soft-dark radius-50 fz-12">{{ $inquiries->total() }}</span>
                                </h5>
                            </div>
                            <div class="col-sm-8 col-md-6 col-lg-4">
                                <!-- Search -->
                                <form action="{{ url()->current() }}" method="GET">
                                    <div class="input-group input-group-merge input-group-custom">
                                        <div class="input-group-prepend">
                                            <div class="input-group-text">
                                                <i class="tio-search"></i>
                                            </div>
                                        </div>
                                        <input id="datatableSearch_" type="search" name="search" class="form-control"
                                               placeholder="{{translate('search_by_Name_or_Phone_or_Email')}}"
                                               aria-label="Search inquiries" value="{{ $search }}">
                                        <button type="submit"
                                                class="btn btn--primary">{{translate('search')}}</button>
                                    </div>
                                </form>
                                <!-- End Search -->
                            </div>
                        </div>
                    </div>

                    <div class="table-responsive">
                        <table id="datatable"
                               style="text-align: {{Session::get('direction') === "rtl" ? 'right' : 'left'}};"
                               class="table table-hover table-borderless table-thead-bordered table-nowrap table-align-middle card-table w-100">
                            <thead class="thead-light thead-50 text-capitalize">
                            <tr>
                                <th>{{translate('SL')}}</th>
                                <th>{{translate('customer_Name')}}</th>
                                <th>{{translate('contact_Info')}}</th>
                                <th>{{translate('project_Details')}}</th>
                                <th>{{translate('Date')}}</th>
                                <th class="text-center">{{translate('action')}}</th>
                            </tr>
                            </thead>
                            <tbody>
                            @foreach($inquiries as $k=>$inquiry)
                                <tr>
                                    <td>{{$inquiries->firstItem()+$k}}</td>
                                    <td>{{$inquiry['name']}}</td>
                                    <td>
                                        <div>
                                            <div>{{$inquiry['phone']}}</div>
                                            <div>{{$inquiry['email']}}</div>
                                        </div>
                                    </td>
                                    <td class="text-wrap" style="max-width: 300px;">{{$inquiry['project_details']}}</td>
                                    <td>{{ $inquiry->created_at->format('d M, Y') }}</td>
                                    <td>
                                        <div class="d-flex gap-10 justify-content-center">
                                            <a class="btn btn-outline-danger btn-sm delete"
                                               id="{{$inquiry['id']}}"
                                               title="{{ translate('delete')}}">
                                                <i class="tio-delete"></i>
                                            </a>
                                        </div>
                                    </td>
                                </tr>
                            @endforeach
                            </tbody>
                        </table>
                    </div>

                    <div class="table-responsive mt-4">
                        <div class="px-4 d-flex justify-content-lg-end">
                            <!-- Pagination -->
                            {{$inquiries->links()}}
                        </div>
                    </div>

                    @if(count($inquiries)==0)
                        <div class="text-center p-4">
                            <img class="mb-3 w-160"
                                 src="{{asset('assets/back-end')}}/svg/illustrations/sorry.svg"
                                 alt="Image Description">
                            <p class="mb-0">{{translate('no_data_to_show')}}</p>
                        </div>
                    @endif
                </div>
            </div>
        </div>

    </div>
@endsection

@push('script')
    <script>
        $(document).on('click', '.delete', function () {
            var id = $(this).attr("id");
            Swal.fire({
                title: "{{translate('are_you_sure_delete_this')}}?",
                text: "{{translate('you_will_not_be_able_to_revert_this')}}!",
                showCancelButton: true,
                confirmButtonColor: '#3085d6',
                cancelButtonColor: '#d33',
                confirmButtonText: "{{translate('yes_delete_it')}}!",
                cancelButtonText: '{{ translate("cancel") }}',
                type: 'warning',
                reverseButtons: true
            }).then((result) => {
                if (result.value) {
                    $.ajaxSetup({
                        headers: {
                            'X-CSRF-TOKEN': $('meta[name="_token"]').attr('content')
                        }
                    });
                    $.ajax({
                        url: "{{route('admin.kitchen-inquiry.delete')}}",
                        method: 'POST',
                        data: {id: id},
                        success: function () {
                            toastr.success("{{translate('inquiry_deleted_successfully')}}");
                            location.reload();
                        }
                    });
                }
            })
        });
    </script>
@endpush
