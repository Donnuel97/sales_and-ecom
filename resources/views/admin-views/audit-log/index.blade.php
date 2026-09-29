@extends('layouts.back-end.app')

@section('title', translate('Audit_Logs'))

@push('css_or_js')
    <!-- Custom styles for this page -->
    <link href="{{asset('assets/back-end')}}/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
@endpush

@section('content')
    <div class="content container-fluid">
        <!-- Page Title -->
        <div class="mb-3">
            <h2 class="h1 mb-0 text-capitalize d-flex align-items-center gap-2">
                <img width="20" src="{{asset('assets/back-end/img/order.png')}}" alt="">
                {{translate('Audit_Logs')}}
                <span class="badge badge-soft-dark radius-50 fz-14">{{ $logs->total() }}</span>
            </h2>
        </div>
        <!-- End Page Title -->

        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="px-3 py-4">
                        <div class="row align-items-center">
                            <div class="col-sm-4 col-md-6 col-lg-8 mb-2 mb-sm-0">
                                <h5 class="mb-0 text-capitalize d-flex gap-2">
                                    {{ translate('Audit_Log_Table') }}
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
                                            placeholder="{{translate('Search_by_module_action_or_IP')}}" aria-label="Search" value="{{ $search }}">
                                        <button type="submit" class="btn btn--primary">{{translate('search')}}</button>
                                    </div>
                                </form>
                                <!-- End Search -->
                            </div>
                        </div>
                    </div>

                    <!-- Table -->
                    <div class="table-responsive">
                        <table id="datatable"
                               class="table table-hover table-borderless table-thead-bordered table-nowrap table-align-middle card-table w-100"
                               style="text-align: {{Session::get('direction') === "rtl" ? 'right' : 'left'}}">
                            <thead class="thead-light thead-50 text-capitalize">
                            <tr>
                                <th>{{translate('SL')}}</th>
                                <th>{{translate('Admin')}}</th>
                                <th>{{translate('Module')}}</th>
                                <th>{{translate('Action')}}</th>
                                <th>{{translate('Description')}}</th>
                                <th>{{translate('IP_Address')}}</th>
                                <th>{{translate('Date')}}</th>
                                <th>{{translate('Action')}}</th>
                            </tr>
                            </thead>
                            <tbody>
                            @foreach($logs as $key => $log)
                                <tr>
                                    <td>{{$logs->firstItem()+$key}}</td>
                                    <td>
                                        @if($log->admin)
                                            <a class="title-color hover-c1" href="{{route('admin.employee.view',[$log->admin['id']])}}">
                                                {{$log->admin->name}}
                                            </a>
                                        @else
                                            <label class="badge badge-soft-danger">{{translate('Admin_not_found')}}</label>
                                        @endif
                                    </td>
                                    <td>{{$log->module}}</td>
                                    <td>
                                        @if($log->action == 'POST' || $log->action == 'CREATE' || $log->action == 'Created')
                                            <label class="badge badge-soft-success">{{$log->action}}</label>
                                        @elseif($log->action == 'PUT' || $log->action == 'PATCH' || $log->action == 'UPDATE' || $log->action == 'Updated')
                                            <label class="badge badge-soft-info">{{$log->action}}</label>
                                        @elseif($log->action == 'DELETE' || $log->action == 'Deleted')
                                            <label class="badge badge-soft-danger">{{$log->action}}</label>
                                        @else
                                            <label class="badge badge-soft-secondary">{{$log->action}}</label>
                                        @endif
                                    </td>
                                    <td class="text-wrap" style="max-width: 300px;">
                                        <span class="d-block">
                                            {{Str::limit($log->description, 100)}}
                                        </span>
                                    </td>
                                    <td>{{$log->ip_address}}</td>
                                    <td>{{date('d M Y, h:i A',strtotime($log->created_at))}}</td>
                                    <td>
                                        <div class="d-flex justify-content-center">
                                            <button type="button" class="btn btn-outline--primary btn-sm btn-icon" 
                                                title="{{translate('View_Details')}}"
                                                onclick="showLogDetails('{{$log->id}}', '{{addslashes($log->description)}}', {{json_encode($log->payload)}})">
                                                <i class="tio-invisible"></i>
                                            </button>
                                        </div>
                                    </td>
                                </tr>
                            @endforeach
                            </tbody>
                        </table>
                    </div>
                    <!-- End Table -->

                    <div class="table-responsive mt-4">
                        <div class="px-4 d-flex justify-content-lg-end">
                            <!-- Pagination -->
                            {{$logs->links()}}
                        </div>
                    </div>

                    @if(count($logs)==0)
                        <div class="text-center p-4">
                            <img class="mb-3 w-160" src="{{asset('assets/back-end/svg/illustrations/sorry.svg')}}" alt="Image Description">
                            <p class="mb-0">{{translate('no_data_to_show')}}</p>
                        </div>
                    @endif
                </div>
            </div>
        </div>
    </div>

    <!-- Modal -->
    <div class="modal fade" id="logDetailsModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">{{translate('Log_Details')}}</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label class="title-color font-weight-bold">{{translate('Description')}}</label>
                        <div id="log-description-content" class="bg-light p-3 rounded mb-3"></div>
                    </div>
                    <div id="payload-section" style="display: none;">
                        <label class="title-color font-weight-bold">{{translate('Changes_/_Data')}}</label>
                        <div class="table-responsive">
                            <table class="table table-bordered table-striped">
                                <thead class="thead-light">
                                    <tr>
                                        <th>{{translate('Field')}}</th>
                                        <th>{{translate('Value')}}</th>
                                    </tr>
                                </thead>
                                <tbody id="payload-content">
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">{{translate('Close')}}</button>
                </div>
            </div>
        </div>
    </div>

@endsection

@push('script')
    <script>
        $(function () {
            $('[data-toggle="tooltip"]').tooltip()
        })

        function showLogDetails(id, description, payload) {
            $('#log-description-content').text(description);
            
            let payloadContent = $('#payload-content');
            payloadContent.empty();
            
            if (payload && Object.keys(payload).length > 0) {
                $('#payload-section').show();
                for (let key in payload) {
                    if (payload.hasOwnProperty(key)) {
                        let value = payload[key];
                        
                        // Humanize the key
                        let displayKey = key.replace(/_/g, ' ').replace(/\b\w/g, l => l.toUpperCase());
                        
                        // Handle objects/arrays for value
                        let displayValue = typeof value === 'object' && value !== null ? JSON.stringify(value) : (value === null ? 'N/A' : value);
                        
                        payloadContent.append(`
                            <tr>
                                <td class="font-weight-bold" style="width: 30%">${displayKey}</td>
                                <td>${displayValue}</td>
                            </tr>
                        `);
                    }
                }
            } else {
                $('#payload-section').hide();
            }
            
            $('#logDetailsModal').modal('show');
        }
    </script>
@endpush
