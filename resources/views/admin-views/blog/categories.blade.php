@extends('layouts.back-end.app')

@section('title', translate('blog_categories'))

@section('content')
<div class="content container-fluid">
    <!-- Page Title -->
    <div class="mb-3 d-flex flex-wrap gap-2 align-items-center justify-content-between">
        <h2 class="h1 mb-0 d-flex align-items-center gap-2">
            <img width="20" src="{{asset('assets/back-end/img/brand.png')}}" alt="">
            {{translate('blog_categories')}}
        </h2>
    </div>

    <!-- Content Row -->
    <div class="row">
        <!-- Add Category Form -->
        <div class="col-md-4 mb-3">
            <div class="card">
                <div class="card-header">
                    <h5 class="mb-0">{{ translate('add_new_category') }}</h5>
                </div>
                <div class="card-body">
                    <form action="{{ route('admin.blog.category.store') }}" method="post">
                        @csrf
                        <div class="form-group mb-3">
                            <label class="title-color">{{ translate('category_name') }} <span class="text-danger">*</span></label>
                            <input type="text" name="name" class="form-control" placeholder="{{ translate('ex') }}: {{ translate('Tech News') }}" required>
                        </div>
                        <div class="form-group mb-3">
                            <label class="title-color">{{ translate('parent_category') }}</label>
                            <select name="parent_id" class="form-control js-select2-custom">
                                <option value="0">{{ translate('none_top_level') }}</option>
                                @foreach($main_categories as $main_cat)
                                    <option value="{{ $main_cat->id }}">{{ $main_cat->name }}</option>
                                @endforeach
                            </select>
                        </div>
                        <div class="form-group mb-3">
                            <label class="title-color">{{ translate('description') }}</label>
                            <textarea name="description" class="form-control" rows="3" placeholder="{{ translate('description...') }}"></textarea>
                        </div>
                        <div class="d-flex justify-content-end gap-2">
                            <button type="submit" class="btn btn--primary px-4">{{ translate('submit') }}</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <!-- Category List -->
        <div class="col-md-8">
            <div class="card">
                <div class="px-3 py-4">
                    <div class="row align-items-center">
                        <div class="col-sm-4 col-md-6 col-lg-8 mb-2 mb-sm-0">
                            <h5 class="mb-0 d-flex align-items-center gap-2">
                                {{ translate('category_list') }}
                                <span class="badge badge-soft-dark radius-50 fz-12">{{ $categories->total() }}</span>
                            </h5>
                        </div>
                        <div class="col-sm-8 col-md-6 col-lg-4">
                            <form action="{{ url()->current() }}" method="GET">
                                <div class="input-group input-group-merge input-group-custom">
                                    <input id="datatableSearch_" type="search" name="search" class="form-control"
                                        placeholder="{{ translate('search_by_name') }}" value="{{ $search }}">
                                    <button type="submit" class="btn btn--primary">{{ translate('search') }}</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>

                <div class="table-responsive">
                    <table class="table table-hover table-borderless table-thead-bordered table-nowrap table-align-middle card-table">
                        <thead class="thead-light">
                            <tr>
                                <th>{{ translate('SL') }}</th>
                                <th>{{ translate('name') }}</th>
                                <th>{{ translate('slug') }}</th>
                                <th>{{ translate('parent') }}</th>
                                <th>{{ translate('status') }}</th>
                                <th class="text-center">{{ translate('action') }}</th>
                            </tr>
                        </thead>
                        <tbody>
                            @forelse($categories as $key => $category)
                            <tr>
                                <td>{{ $categories->firstItem() + $key }}</td>
                                <td><span class="font-weight-bold">{{ $category->name }}</span></td>
                                <td><code>{{ $category->slug }}</code></td>
                                <td>{{ $category->parent ? $category->parent->name : translate('top_level') }}</td>
                                <td>
                                    <label class="switcher">
                                        <input type="checkbox" class="switcher_input status-change"
                                            data-id="{{ $category->id }}"
                                            {{ $category->status == 1 ? 'checked' : '' }}>
                                        <span class="switcher_control"></span>
                                    </label>
                                </td>
                                <td>
                                    <div class="d-flex justify-content-center gap-2">
                                        <button class="btn btn-outline-info btn-sm square-btn edit-category-btn"
                                            data-id="{{ $category->id }}"
                                            data-name="{{ $category->name }}"
                                            data-description="{{ $category->description }}"
                                            data-parent="{{ $category->parent_id }}"
                                            data-toggle="modal" data-target="#editModal">
                                            <i class="tio-edit"></i>
                                        </button>
                                        <a class="btn btn-outline-danger btn-sm square-btn delete-data-btn"
                                            data-id="{{ $category->id }}">
                                            <i class="tio-delete"></i>
                                        </a>
                                    </div>
                                    <form action="{{ route('admin.blog.category.delete') }}" method="post" id="delete-{{ $category->id }}">
                                        @csrf
                                        <input type="hidden" name="id" value="{{ $category->id }}">
                                    </form>
                                </td>
                            </tr>
                            @empty
                            <tr>
                                <td colspan="6" class="text-center p-4">
                                    <img class="mb-3 w-160" src="{{ asset('assets/back-end/svg/illustrations/sorry.svg') }}" alt="">
                                    <p class="mb-0">{{ translate('no_data_found') }}</p>
                                </td>
                            </tr>
                            @endforelse
                        </tbody>
                    </table>
                </div>

                <div class="table-responsive mt-4 px-3">
                    <div class="d-flex justify-content-lg-end">
                        {!! $categories->links() !!}
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Edit Category Modal -->
<div class="modal fade" id="editModal" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">{{ translate('edit_category') }}</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form action="" id="edit-form" method="post">
                @csrf
                <div class="modal-body">
                    <div class="form-group mb-3">
                        <label class="title-color">{{ translate('category_name') }} <span class="text-danger">*</span></label>
                        <input type="text" name="name" id="edit-name" class="form-control" required>
                    </div>
                    <div class="form-group mb-3">
                        <label class="title-color">{{ translate('parent_category') }}</label>
                        <select name="parent_id" id="edit-parent" class="form-control">
                            <option value="0">{{ translate('none_top_level') }}</option>
                            @foreach($main_categories as $main_cat)
                                <option value="{{ $main_cat->id }}">{{ $main_cat->name }}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="form-group mb-3">
                        <label class="title-color">{{ translate('description') }}</label>
                        <textarea name="description" id="edit-description" class="form-control" rows="3"></textarea>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">{{ translate('close') }}</button>
                    <button type="submit" class="btn btn--primary">{{ translate('update') }}</button>
                </div>
            </form>
        </div>
    </div>
</div>
@endsection

@push('script')
<script>
    $(document).on('click', '.edit-category-btn', function () {
        let id = $(this).data('id');
        let name = $(this).data('name');
        let description = $(this).data('description');
        let parent = $(this).data('parent');

        $('#edit-name').val(name);
        $('#edit-description').val(description);
        $('#edit-parent').val(parent);
        $('#edit-form').attr('action', '{{ url("admin/blog/category/update") }}/' + id);
    });

    $(document).on('click', '.delete-data-btn', function () {
        let id = $(this).data('id');
        Swal.fire({
            title: '{{ translate("are_you_sure") }}?',
            text: "{{ translate('you_will_not_be_able_to_revert_this') }}!",
            type: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: '{{ translate("yes_delete_it") }}!'
        }).then((result) => {
            if (result.value) {
                $('#delete-' + id).submit();
            }
        });
    });

    $(document).on('change', '.status-change', function () {
        let id = $(this).data('id');
        let status = $(this).prop('checked') ? 1 : 0;
        location.href = '{{ url("admin/blog/category/status") }}/' + id + '/' + status;
    });
</script>
@endpush
