@extends('layouts.back-end.app')

@section('title', translate('blog_posts'))

@section('content')
    <div class="content container-fluid">
        <!-- Page Title -->
        <div class="mb-3 d-flex justify-content-between align-items-center">
            <h2 class="h1 mb-0 text-capitalize d-flex align-items-center gap-2">
                <img width="20" src="{{asset('assets/back-end/img/order.png')}}" alt="">
                {{translate('blog_posts')}}
            </h2>
            <div class="d-flex gap-2">
                <a href="{{ route('admin.blog.category.list') }}" class="btn btn-outline-info d-flex align-items-center gap-1">
                    <i class="tio-category"></i>
                    {{ translate('manage_categories') }}
                </a>
                <a href="{{ route('admin.blog.create') }}" class="btn btn--primary d-flex align-items-center gap-1">
                    <i class="tio-add"></i>
                    {{ translate('add_new_post') }}
                </a>
            </div>
        </div>

        <div class="row mt-20">
            <div class="col-md-12">
                <div class="card">
                    <div class="px-3 py-4">
                        <div class="row align-items-center">
                            <div class="col-sm-4 col-md-5 col-lg-6 mb-2 mb-sm-0">
                                <h5 class="mb-0 text-capitalize d-flex gap-2 align-items-center">
                                    {{ translate('all_posts') }}
                                    <span class="badge badge-soft-dark radius-50 fz-12">{{ $blogs->total() }}</span>
                                </h5>
                            </div>
                            <div class="col-sm-8 col-md-7 col-lg-6">
                                <form action="{{ url()->current() }}" method="GET">
                                    <div class="d-flex gap-2">
                                        <select name="category_id" class="form-control js-select2-custom" onchange="this.form.submit()">
                                            <option value="">{{ translate('all_categories') }}</option>
                                            @foreach($categories as $cat)
                                                <option value="{{ $cat->id }}" {{ $category_id == $cat->id ? 'selected' : '' }}>{{ $cat->name }}</option>
                                            @endforeach
                                        </select>
                                        <div class="input-group input-group-merge input-group-flush">
                                            <input id="datatableSearch_" type="search" name="search" class="form-control"
                                                placeholder="{{ translate('search_by_title') }}" value="{{ $search }}">
                                            <button type="submit" class="btn btn--primary">{{ translate('search') }}</button>
                                        </div>
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
                                    <th>{{ translate('image') }}</th>
                                    <th>{{ translate('title') }}</th>
                                    <th>{{ translate('category') }}</th>
                                    <th>{{ translate('tags') }}</th>
                                    <th>{{ translate('views') }}</th>
                                    <th>{{ translate('status') }}</th>
                                    <th class="text-center">{{ translate('action') }}</th>
                                </tr>
                            </thead>
                            <tbody>
                            @forelse($blogs as $key => $blog)
                                <tr>
                                    <td>{{ $blogs->firstItem() + $key }}</td>
                                    <td>
                                        <img width="80" height="50" class="rounded object-cover"
                                             src="{{ $blog->image ? asset('storage/app/public/blog/'.$blog->image) : asset('assets/back-end/img/400x400/img2.jpg') }}" 
                                             onerror="this.src='{{ asset('assets/back-end/img/400x400/img2.jpg') }}'"
                                             alt="{{ $blog->title }}">
                                    </td>
                                    <td>
                                        <div class="font-weight-bold text-dark text-wrap" style="max-width: 250px;">
                                            {{ $blog->title }}
                                            @if($blog->is_featured)
                                                <span class="badge badge-soft-warning ml-1"><i class="tio-star"></i> {{ translate('featured') }}</span>
                                            @endif
                                        </div>
                                        <small class="text-muted"><code>/{{ $blog->slug }}</code></small>
                                    </td>
                                    <td>
                                        @if($blog->category)
                                            <span class="badge badge-soft-info">{{ $blog->category->name }}</span>
                                        @else
                                            <span class="text-muted fz-12">{{ translate('uncategorized') }}</span>
                                        @endif
                                    </td>
                                    <td>
                                        @forelse($blog->tags as $t)
                                            <span class="badge badge-light border mb-1">{{ $t->name }}</span>
                                        @empty
                                            <span class="text-muted fz-12">-</span>
                                        @endforelse
                                    </td>
                                    <td>
                                        <span class="badge badge-soft-secondary"><i class="tio-visible"></i> {{ $blog->views_count }}</span>
                                    </td>
                                    <td>
                                        <label class="switcher">
                                            <input type="checkbox" class="switcher_input"
                                                onclick="location.href='{{ route('admin.blog.status', [$blog->id, $blog->status ? 0 : 1]) }}'"
                                                {{ $blog->status ? 'checked' : '' }}>
                                            <span class="switcher_control"></span>
                                        </label>
                                    </td>
                                    <td>
                                        <div class="d-flex justify-content-center gap-2">
                                            <a href="{{ route('blog.show', $blog->slug) }}" target="_blank" class="btn btn-outline-info btn-sm"
                                               title="{{ translate('preview_on_website') }}">
                                               <i class="tio-visible"></i>
                                            </a>
                                            <a href="{{ route('admin.blog.edit', [$blog->id]) }}" class="btn btn-outline--primary btn-sm edit"
                                               title="{{ translate('edit') }}">
                                               <i class="tio-edit"></i>
                                            </a>
                                            <form action="{{ route('admin.blog.delete') }}" method="POST" id="blog-{{$blog->id}}">
                                                @csrf
                                                <input type="hidden" name="id" value="{{$blog->id}}">
                                            </form>
                                            <button class="btn btn-outline-danger btn-sm delete"
                                                title="{{ translate('delete') }}"
                                                onclick="form_alert('blog-{{$blog->id}}', '{{ translate('want_to_delete_this_blog_post') }}?')">
                                                <i class="tio-delete"></i>
                                            </button>
                                        </div>
                                    </td>
                                </tr>
                            @empty
                                <tr>
                                    <td colspan="8" class="text-center p-4">
                                        <img class="mb-3 w-160" src="{{ asset('assets/back-end/svg/illustrations/sorry.svg') }}" alt="">
                                        <p class="mb-0">{{ translate('no_blog_posts_found') }}</p>
                                    </td>
                                </tr>
                            @endforelse
                            </tbody>
                        </table>
                    </div>

                    <div class="table-responsive mt-4">
                        <div class="px-4 w-100">
                            {!! $blogs->links() !!}
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
