@extends('layouts.back-end.app')

@section('title', translate('edit_blog_post'))

@push('css_or_js')
<link href="{{ asset('assets/back-end/css/tags-input.min.css') }}" rel="stylesheet">
<style>
    .yoast-card {
        border: 1px solid #e2e8f0;
        border-radius: 12px;
        background: #ffffff;
        box-shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.05), 0 2px 4px -1px rgba(0, 0, 0, 0.03);
    }
    .yoast-nav-tabs .nav-link {
        color: #64748b;
        font-weight: 600;
        border: none;
        padding: 12px 18px;
        border-bottom: 3px solid transparent;
        transition: all 0.2s ease;
    }
    .yoast-nav-tabs .nav-link.active {
        color: #2563eb;
        background: transparent;
        border-bottom-color: #2563eb;
    }
    .serp-preview-box {
        background: #f8fafc;
        border: 1px solid #cbd5e1;
        border-radius: 8px;
        padding: 16px;
        font-family: Arial, sans-serif;
    }
    .serp-title {
        color: #1a0dab;
        font-size: 20px;
        line-height: 1.3;
        text-decoration: none;
        cursor: pointer;
        word-break: break-word;
    }
    .serp-title:hover {
        text-decoration: underline;
    }
    .serp-url {
        color: #202124;
        font-size: 14px;
        line-height: 1.3;
        margin-top: 2px;
    }
    .serp-description {
        color: #4d5156;
        font-size: 14px;
        line-height: 1.58;
        margin-top: 4px;
        word-break: break-word;
    }
    .analysis-item {
        display: flex;
        align-items: flex-start;
        gap: 12px;
        padding: 10px 0;
        border-bottom: 1px solid #f1f5f9;
    }
    .analysis-item:last-child {
        border-bottom: none;
    }
    .analysis-bullet {
        width: 14px;
        height: 14px;
        border-radius: 50%;
        margin-top: 4px;
        flex-shrink: 0;
    }
    .bullet-good { background-color: #22c55e; }
    .bullet-ok { background-color: #eab308; }
    .bullet-bad { background-color: #ef4444; }
    .progress-bar-seo {
        height: 6px;
        border-radius: 3px;
        transition: width 0.3s ease, background-color 0.3s ease;
    }
    .seo-score-badge {
        font-weight: 700;
        padding: 4px 12px;
        border-radius: 20px;
        font-size: 13px;
        display: inline-flex;
        align-items: center;
        gap: 6px;
    }
    .badge-good { background: #dcfce7; color: #15803d; }
    .badge-ok { background: #fef9c3; color: #a16207; }
    .badge-bad { background: #fee2e2; color: #b91c1c; }
    .meta-box-header {
        background: #f8fafc;
        border-bottom: 1px solid #e2e8f0;
        padding: 12px 16px;
        font-weight: 600;
        border-radius: 8px 8px 0 0;
    }
</style>
@endpush

@section('content')
<div class="content container-fluid">
    <!-- Page Title -->
    <div class="d-flex flex-wrap gap-2 align-items-center justify-content-between mb-3">
        <h2 class="h1 mb-0 d-flex align-items-center gap-2">
            <img width="22" src="{{asset('assets/back-end/img/brand.png')}}" alt="">
            {{translate('edit_blog_post')}}
        </h2>
        <a href="{{ route('admin.blog.list') }}" class="btn btn--primary px-4">
            <i class="tio-back-ui mr-1"></i> {{ translate('back_to_blog_list') }}
        </a>
    </div>

    <form action="{{ route('admin.blog.update', $blog->id) }}" method="post" enctype="multipart/form-data" id="blog-form">
        @csrf
        <div class="row">
            <!-- Main Content Area (8 Columns) -->
            <div class="col-lg-8">
                <!-- Title & Slug Card -->
                <div class="card mb-3">
                    <div class="card-body">
                        <div class="form-group mb-3">
                            <label for="title" class="title-color font-weight-bold">{{ translate('post_title') }} <span class="text-danger">*</span></label>
                            <input type="text" name="title" id="post-title" class="form-control form-control-lg"
                                value="{{ old('title', $blog->title) }}" placeholder="{{ translate('enter_post_title_here...') }}" required>
                        </div>
                        <div class="form-group mb-0">
                            <label class="title-color text-muted fz-12 mb-1">{{ translate('permalink_slug') }}:</label>
                            <div class="input-group input-group-sm">
                                <div class="input-group-prepend">
                                    <span class="input-group-text bg-light text-muted">{{ url('/blog') }}/</span>
                                </div>
                                <input type="text" name="slug" id="post-slug" class="form-control" value="{{ old('slug', $blog->slug) }}">
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Rich Content Editor Card -->
                <div class="card mb-3">
                    <div class="card-body">
                        <div class="form-group mb-2">
                            <label for="editor" class="title-color font-weight-bold">{{ translate('post_content') }} <span class="text-danger">*</span></label>
                            <textarea name="content" id="editor" class="form-control">{{ old('content', $blog->content) }}</textarea>
                        </div>
                        <div class="d-flex justify-content-between align-items-center text-muted fz-12 pt-2">
                            <div>{{ translate('word_count') }}: <span id="word-count-badge" class="font-weight-bold">0</span> words</div>
                            <div>{{ translate('reading_time') }}: ~<span id="reading-time-badge" class="font-weight-bold">{{ $blog->reading_time ?? 1 }}</span> min</div>
                        </div>
                    </div>
                </div>

                <!-- Excerpt Card -->
                <div class="card mb-3">
                    <div class="meta-box-header d-flex justify-content-between align-items-center">
                        <span>{{ translate('excerpt') }}</span>
                        <small class="text-muted">{{ translate('short_summary_for_post_lists') }}</small>
                    </div>
                    <div class="card-body">
                        <textarea name="excerpt" id="post-excerpt" class="form-control" rows="3" placeholder="{{ translate('write_an_optional_excerpt_here...') }}">{{ old('excerpt', $blog->excerpt) }}</textarea>
                    </div>
                </div>

                <!-- YOAST SEO & READABILITY STUDIO WIDGET -->
                <div class="yoast-card mb-4">
                    <div class="meta-box-header d-flex justify-content-between align-items-center bg-white border-bottom">
                        <div class="d-flex align-items-center gap-2">
                            <span class="font-weight-bold text-dark">{{ translate('Yoast_SEO_&_Readability_Studio') }}</span>
                        </div>
                        <div class="d-flex align-items-center gap-3">
                            <span id="seo-score-overall" class="seo-score-badge badge-bad">
                                <span class="analysis-bullet bullet-bad"></span> SEO: {{ translate('Needs_Improvement') }}
                            </span>
                            <span id="readability-score-overall" class="seo-score-badge badge-bad">
                                <span class="analysis-bullet bullet-bad"></span> {{ translate('Readability') }}: {{ translate('Needs_Improvement') }}
                            </span>
                        </div>
                    </div>

                    <!-- Nav Tabs -->
                    <ul class="nav nav-tabs yoast-nav-tabs px-3 pt-2" id="yoastTab" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active" id="seo-tab" data-toggle="tab" href="#seo-content" role="tab">
                                <i class="tio-search mr-1"></i> {{ translate('SEO_Analysis') }}
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="readability-tab" data-toggle="tab" href="#readability-content" role="tab">
                                <i class="tio-document-text mr-1"></i> {{ translate('Readability') }}
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="social-tab" data-toggle="tab" href="#social-content" role="tab">
                                <i class="tio-share mr-1"></i> {{ translate('Social_OpenGraph') }}
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="advanced-tab" data-toggle="tab" href="#advanced-content" role="tab">
                                <i class="tio-settings mr-1"></i> {{ translate('Advanced') }}
                            </a>
                        </li>
                    </ul>

                    <div class="tab-content p-4" id="yoastTabContent">
                        <!-- TAB 1: SEO Analysis -->
                        <div class="tab-pane fade show active" id="seo-content" role="tabpanel">
                            <!-- Focus Keyphrase -->
                            <div class="form-group mb-4">
                                <label for="focus_keyword" class="title-color font-weight-bold">{{ translate('focus_keyphrase') }}</label>
                                <input type="text" name="focus_keyword" id="focus_keyword" class="form-control"
                                    value="{{ old('focus_keyword', $blog->focus_keyword) }}" placeholder="{{ translate('e.g._best_kitchen_appliances') }}">
                                <small class="text-muted">{{ translate('enter_the_keyword_or_phrase_you_want_this_post_to_rank_for.') }}</small>
                            </div>

                            <!-- Google Search Snippet Preview -->
                            <div class="mb-4">
                                <div class="d-flex justify-content-between align-items-center mb-2">
                                    <label class="title-color font-weight-bold mb-0">{{ translate('Google_Search_Snippet_Preview') }}</label>
                                    <div class="btn-group btn-group-toggle" data-toggle="buttons">
                                        <label class="btn btn-xs btn-outline-primary active">
                                            <input type="radio" name="preview_device" id="preview_mobile" checked> <i class="tio-mobile"></i> {{ translate('Mobile') }}
                                        </label>
                                        <label class="btn btn-xs btn-outline-primary">
                                            <input type="radio" name="preview_device" id="preview_desktop"> <i class="tio-laptop"></i> {{ translate('Desktop') }}
                                        </label>
                                    </div>
                                </div>
                                <div class="serp-preview-box" id="serp-box">
                                    <div class="serp-url" id="serp-url-display">{{ url('/blog') }}/<span id="serp-slug-text">{{ $blog->slug }}</span></div>
                                    <div class="serp-title" id="serp-title-display">{{ $blog->meta_title ?: $blog->title }}</div>
                                    <div class="serp-description" id="serp-desc-display">{{ $blog->meta_description ?: translate('Please_provide_a_meta_description...') }}</div>
                                </div>
                            </div>

                            <!-- SEO Title Input -->
                            <div class="form-group mb-3">
                                <div class="d-flex justify-content-between">
                                    <label for="meta_title" class="title-color">{{ translate('SEO_Title') }}</label>
                                    <small class="text-muted"><span id="seo-title-count">0</span> / 60 {{ translate('chars') }}</small>
                                </div>
                                <input type="text" name="meta_title" id="meta_title" class="form-control"
                                    value="{{ old('meta_title', $blog->meta_title) }}" placeholder="{{ translate('leave_blank_to_use_post_title') }}">
                                <div class="progress mt-1" style="height: 4px;">
                                    <div id="seo-title-bar" class="progress-bar-seo bg-secondary" style="width: 0%;"></div>
                                </div>
                            </div>

                            <!-- Meta Description Input -->
                            <div class="form-group mb-4">
                                <div class="d-flex justify-content-between">
                                    <label for="meta_description" class="title-color">{{ translate('Meta_Description') }}</label>
                                    <small class="text-muted"><span id="seo-desc-count">0</span> / 160 {{ translate('chars') }}</small>
                                </div>
                                <textarea name="meta_description" id="meta_description" class="form-control" rows="3"
                                    placeholder="{{ translate('enter_a_compelling_meta_description...') }}">{{ old('meta_description', $blog->meta_description) }}</textarea>
                                <div class="progress mt-1" style="height: 4px;">
                                    <div id="seo-desc-bar" class="progress-bar-seo bg-secondary" style="width: 0%;"></div>
                                </div>
                            </div>

                            <!-- Realtime SEO Analysis Checklist -->
                            <h6 class="font-weight-bold mb-3 border-bottom pb-2">{{ translate('Yoast_SEO_Analysis_Checklist') }}</h6>
                            <div id="seo-analysis-checklist">
                                <div class="analysis-item" id="check-keyphrase-title">
                                    <span class="analysis-bullet bullet-bad"></span>
                                    <div><strong>{{ translate('Keyphrase_in_SEO_title') }}:</strong> <span class="check-msg">...</span></div>
                                </div>
                                <div class="analysis-item" id="check-keyphrase-desc">
                                    <span class="analysis-bullet bullet-bad"></span>
                                    <div><strong>{{ translate('Keyphrase_in_meta_description') }}:</strong> <span class="check-msg">...</span></div>
                                </div>
                                <div class="analysis-item" id="check-keyphrase-slug">
                                    <span class="analysis-bullet bullet-bad"></span>
                                    <div><strong>{{ translate('Keyphrase_in_slug') }}:</strong> <span class="check-msg">...</span></div>
                                </div>
                                <div class="analysis-item" id="check-keyphrase-intro">
                                    <span class="analysis-bullet bullet-bad"></span>
                                    <div><strong>{{ translate('Keyphrase_in_introduction') }}:</strong> <span class="check-msg">...</span></div>
                                </div>
                                <div class="analysis-item" id="check-keyphrase-density">
                                    <span class="analysis-bullet bullet-bad"></span>
                                    <div><strong>{{ translate('Keyphrase_density') }}:</strong> <span class="check-msg">...</span></div>
                                </div>
                                <div class="analysis-item" id="check-text-length">
                                    <span class="analysis-bullet bullet-bad"></span>
                                    <div><strong>{{ translate('Text_length') }}:</strong> <span class="check-msg">...</span></div>
                                </div>
                            </div>
                        </div>

                        <!-- TAB 2: Readability Analysis -->
                        <div class="tab-pane fade" id="readability-content" role="tabpanel">
                            <h6 class="font-weight-bold mb-3 border-bottom pb-2">{{ translate('Yoast_Readability_Analysis_Checklist') }}</h6>
                            <div id="readability-analysis-checklist">
                                <div class="analysis-item" id="check-flesch-score">
                                    <span class="analysis-bullet bullet-bad"></span>
                                    <div><strong>{{ translate('Flesch_Reading_Ease') }}:</strong> <span class="check-msg">...</span></div>
                                </div>
                                <div class="analysis-item" id="check-sentence-length">
                                    <span class="analysis-bullet bullet-bad"></span>
                                    <div><strong>{{ translate('Sentence_length') }}:</strong> <span class="check-msg">...</span></div>
                                </div>
                                <div class="analysis-item" id="check-paragraph-length">
                                    <span class="analysis-bullet bullet-good"></span>
                                    <div><strong>{{ translate('Paragraph_length') }}:</strong> <span class="check-msg">...</span></div>
                                </div>
                            </div>
                        </div>

                        <!-- TAB 3: Social OpenGraph -->
                        <div class="tab-pane fade" id="social-content" role="tabpanel">
                            <div class="form-group mb-3">
                                <label for="og_title" class="title-color">{{ translate('Facebook_/_Twitter_Title') }}</label>
                                <input type="text" name="og_title" id="og_title" class="form-control"
                                    value="{{ old('og_title', $blog->og_title) }}" placeholder="{{ translate('custom_title_for_social_sharing') }}">
                            </div>
                            <div class="form-group mb-3">
                                <label for="og_description" class="title-color">{{ translate('Facebook_/_Twitter_Description') }}</label>
                                <textarea name="og_description" id="og_description" class="form-control" rows="3"
                                    placeholder="{{ translate('custom_description_for_social_sharing...') }}">{{ old('og_description', $blog->og_description) }}</textarea>
                            </div>
                            <div class="form-group mb-3">
                                <label class="title-color">{{ translate('Social_Share_Image_(OpenGraph)') }}</label>
                                <div class="custom-file text-left">
                                    <input type="file" name="og_image" id="ogFileUpload" class="custom-file-input" accept="image/*">
                                    <label class="custom-file-label" for="ogFileUpload">{{ translate('choose_file') }}</label>
                                </div>
                                <div class="text-center mt-2">
                                    <img class="upload-img-view" id="ogViewer"
                                        src="{{ $blog->og_image ? asset('storage/app/public/blog/og/'.$blog->og_image) : asset('assets/back-end/img/400x400/img2.jpg') }}"
                                        alt="social image" style="max-height: 150px; border-radius: 8px; border: 1px solid #ddd; {{ $blog->og_image ? '' : 'display:none;' }}" />
                                </div>
                            </div>
                        </div>

                        <!-- TAB 4: Advanced -->
                        <div class="tab-pane fade" id="advanced-content" role="tabpanel">
                            <div class="form-group mb-3">
                                <label for="canonical_url" class="title-color">{{ translate('Canonical_URL') }}</label>
                                <input type="url" name="canonical_url" id="canonical_url" class="form-control"
                                    value="{{ old('canonical_url', $blog->canonical_url) }}" placeholder="https://example.com/original-article">
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Right Sidebar Area (4 Columns) -->
            <div class="col-lg-4">
                <!-- WordPress Publish Widget Box -->
                <div class="card mb-3">
                    <div class="meta-box-header d-flex justify-content-between align-items-center">
                        <span class="font-weight-bold">{{ translate('Publish') }}</span>
                        <i class="tio-publish"></i>
                    </div>
                    <div class="card-body">
                        <div class="form-group mb-3">
                            <label class="title-color d-flex justify-content-between align-items-center">
                                <span>{{ translate('publish_status') }}</span>
                                <label class="switcher mb-0">
                                    <input type="checkbox" class="switcher_input" name="status" {{ $blog->status == 1 ? 'checked' : '' }}>
                                    <span class="switcher_control"></span>
                                </label>
                            </label>
                        </div>
                        <div class="form-group mb-3">
                            <label class="title-color d-flex justify-content-between align-items-center">
                                <span>{{ translate('featured_sticky_post') }}</span>
                                <label class="switcher mb-0">
                                    <input type="checkbox" class="switcher_input" name="is_featured" {{ $blog->is_featured ? 'checked' : '' }}>
                                    <span class="switcher_control"></span>
                                </label>
                            </label>
                        </div>
                        <div class="form-group mb-3">
                            <label for="published_at" class="title-color">{{ translate('publish_date_&_time') }}</label>
                            <input type="datetime-local" name="published_at" id="published_at" class="form-control"
                                value="{{ $blog->published_at ? date('Y-m-d\TH:i', strtotime($blog->published_at)) : date('Y-m-d\TH:i') }}">
                        </div>
                        <hr>
                        <div class="d-flex justify-content-between align-items-center">
                            <a href="{{ route('admin.blog.list') }}" class="btn btn-secondary px-3">{{ translate('cancel') }}</a>
                            <button type="submit" class="btn btn--primary px-4">{{ translate('update_post') }}</button>
                        </div>
                    </div>
                </div>

                <!-- WordPress Categories Widget Box -->
                <div class="card mb-3">
                    <div class="meta-box-header d-flex justify-content-between align-items-center">
                        <span class="font-weight-bold">{{ translate('Category') }}</span>
                        <a href="javascript:" class="text-primary fz-12" data-toggle="modal" data-target="#quickAddCategoryModal">
                            <i class="tio-add"></i> {{ translate('add_new') }}
                        </a>
                    </div>
                    <div class="card-body" style="max-height: 250px; overflow-y: auto;">
                        <div class="form-group mb-0" id="categories-checkbox-list">
                            @forelse($categories as $category)
                                <div class="custom-control custom-radio mb-2">
                                    <input type="radio" id="cat-{{ $category->id }}" name="category_id" value="{{ $category->id }}"
                                        class="custom-control-input" {{ $blog->category_id == $category->id ? 'checked' : '' }}>
                                    <label class="custom-control-label" for="cat-{{ $category->id }}">{{ $category->name }}</label>
                                </div>
                            @empty
                                <p class="text-muted fz-12 mb-0">{{ translate('no_categories_found.') }}</p>
                            @endforelse
                        </div>
                    </div>
                </div>

                <!-- WordPress Tags Widget Box -->
                <div class="card mb-3">
                    <div class="meta-box-header">
                        <span class="font-weight-bold">{{ translate('Tags') }}</span>
                    </div>
                    <div class="card-body">
                        <div class="form-group mb-0">
                            @php $selected_tag_ids = $blog->tags->pluck('id')->toArray(); @endphp
                            <select name="tags[]" id="tags-select" class="form-control js-select2-custom" multiple="multiple">
                                @foreach($tags as $tag)
                                    <option value="{{ $tag->id }}" {{ in_array($tag->id, $selected_tag_ids) ? 'selected' : '' }}>{{ $tag->name }}</option>
                                @endforeach
                            </select>
                        </div>
                    </div>
                </div>

                <!-- Featured Image Box -->
                <div class="card mb-3">
                    <div class="meta-box-header">
                        <span class="font-weight-bold">{{ translate('Featured_Image') }}</span>
                    </div>
                    <div class="card-body">
                        <div class="form-group mb-3">
                            <div class="custom-file text-left">
                                <input type="file" name="image" id="customFileUpload" class="custom-file-input" accept="image/*">
                                <label class="custom-file-label" for="customFileUpload">{{ translate('choose_file') }}</label>
                            </div>
                        </div>
                        <div class="text-center">
                            <img class="upload-img-view" id="viewer"
                                src="{{ $blog->image ? asset('storage/app/public/blog/'.$blog->image) : asset('assets/back-end/img/400x400/img2.jpg') }}"
                                alt="blog image" style="max-height: 200px; width: 100%; object-fit: cover; border-radius: 8px; border: 1px solid #ddd;" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</div>

<!-- Quick Add Category Modal -->
<div class="modal fade" id="quickAddCategoryModal" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">{{ translate('add_new_blog_category') }}</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="form-group mb-3">
                    <label class="title-color">{{ translate('category_name') }} <span class="text-danger">*</span></label>
                    <input type="text" id="quick-cat-name" class="form-control" placeholder="{{ translate('e.g._Technology') }}">
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">{{ translate('cancel') }}</button>
                <button type="button" id="quick-cat-submit-btn" class="btn btn--primary">{{ translate('add_category') }}</button>
            </div>
        </div>
    </div>
</div>
@endsection

@push('script')
<script src="https://cdn.ckeditor.com/ckeditor5/41.2.1/classic/ckeditor.js"></script>
<script>
    let editorInstance = null;

    ClassicEditor
        .create(document.querySelector('#editor'))
        .then(editor => {
            editorInstance = editor;
            editor.model.document.on('change:data', () => {
                runYoastAnalysis();
            });
            document.querySelector('#blog-form').addEventListener('submit', () => {
                editor.updateSourceElement();
            });
            setTimeout(runYoastAnalysis, 300);
        })
        .catch(error => console.error(error));

    // Slug & Titles
    $('#post-title').on('keyup input', function () {
        runYoastAnalysis();
    });

    $('#post-slug, #meta_title, #meta_description, #focus_keyword').on('keyup input', function () {
        runYoastAnalysis();
    });

    function readURL(input, targetViewer) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();
            reader.onload = function (e) {
                $(targetViewer).attr('src', e.target.result).show();
            }
            reader.readAsDataURL(input.files[0]);
        }
    }
    $("#customFileUpload").change(function () { readURL(this, '#viewer'); });
    $("#ogFileUpload").change(function () { readURL(this, '#ogViewer'); });

    // Quick Category
    $('#quick-cat-submit-btn').on('click', function () {
        let catName = $('#quick-cat-name').val();
        if (!catName) return;

        $.ajax({
            url: "{{ route('admin.blog.category.store-ajax') }}",
            method: "POST",
            data: {
                _token: "{{ csrf_token() }}",
                name: catName
            },
            success: function (res) {
                if (res.status) {
                    let newRadio = `
                        <div class="custom-control custom-radio mb-2">
                            <input type="radio" id="cat-${res.id}" name="category_id" value="${res.id}" class="custom-control-input" checked>
                            <label class="custom-control-label" for="cat-${res.id}">${res.name}</label>
                        </div>`;
                    $('#categories-checkbox-list').prepend(newRadio);
                    $('#quick-cat-name').val('');
                    $('#quickAddCategoryModal').modal('hide');
                    toastr.success(res.message);
                }
            }
        });
    });

    $(document).ready(function() {
        $('#tags-select').select2({
            tags: true,
            tokenSeparators: [','],
            placeholder: "{{ translate('select_or_add_tags') }}"
        });
    });

    // =========================================================================
    // YOAST REALTIME SEO ENGINE
    // =========================================================================
    function runYoastAnalysis() {
        let title = $('#post-title').val() || '';
        let slug = $('#post-slug').val() || '';
        let metaTitle = $('#meta_title').val() || title;
        let metaDesc = $('#meta_description').val() || '';
        let focusKey = ($('#focus_keyword').val() || '').toLowerCase().trim();
        let contentHtml = editorInstance ? editorInstance.getData() : ($('#editor').val() || '');
        
        let tmpDiv = document.createElement("DIV");
        tmpDiv.innerHTML = contentHtml;
        let plainText = tmpDiv.textContent || tmpDiv.innerText || "";
        
        $('#serp-title-display').text(metaTitle.length > 0 ? metaTitle : "{{ translate('Please_enter_a_post_title') }}");
        $('#serp-slug-text').text(slug.length > 0 ? slug : 'post-slug-sample');
        $('#serp-desc-display').text(metaDesc.length > 0 ? metaDesc : "{{ translate('Please_provide_a_meta_description...') }}");

        let titleLen = metaTitle.length;
        $('#seo-title-count').text(titleLen);
        let titleBarColor = (titleLen >= 35 && titleLen <= 60) ? '#22c55e' : (titleLen > 60 ? '#ef4444' : '#eab308');
        $('#seo-title-bar').css({'width': Math.min(100, (titleLen / 60) * 100) + '%', 'background-color': titleBarColor});

        let descLen = metaDesc.length;
        $('#seo-desc-count').text(descLen);
        let descBarColor = (descLen >= 120 && descLen <= 160) ? '#22c55e' : (descLen > 160 ? '#ef4444' : '#eab308');
        $('#seo-desc-bar').css({'width': Math.min(100, (descLen / 160) * 100) + '%', 'background-color': descBarColor});

        let words = plainText.trim().split(/\s+/).filter(w => w.length > 0);
        let wordCount = words.length;
        $('#word-count-badge').text(wordCount);
        $('#reading-time-badge').text(Math.max(1, Math.ceil(wordCount / 200)));

        let passedSeoRules = 0;
        let totalSeoRules = 6;

        if (focusKey && metaTitle.toLowerCase().includes(focusKey)) {
            setCheckStatus('#check-keyphrase-title', 'good', "{{ translate('Keyphrase_appears_in_SEO_title.') }}");
            passedSeoRules++;
        } else {
            setCheckStatus('#check-keyphrase-title', 'bad', focusKey ? "{{ translate('Keyphrase_does_not_appear_in_SEO_title.') }}" : "{{ translate('No_focus_keyphrase_set.') }}");
        }

        if (focusKey && metaDesc.toLowerCase().includes(focusKey)) {
            setCheckStatus('#check-keyphrase-desc', 'good', "{{ translate('Keyphrase_appears_in_meta_description.') }}");
            passedSeoRules++;
        } else {
            setCheckStatus('#check-keyphrase-desc', 'bad', focusKey ? "{{ translate('Keyphrase_does_not_appear_in_meta_description.') }}" : "{{ translate('No_focus_keyphrase_set.') }}");
        }

        let cleanSlug = slug.replace(/-/g, ' ');
        if (focusKey && cleanSlug.toLowerCase().includes(focusKey)) {
            setCheckStatus('#check-keyphrase-slug', 'good', "{{ translate('Keyphrase_appears_in_URL_slug.') }}");
            passedSeoRules++;
        } else {
            setCheckStatus('#check-keyphrase-slug', 'bad', focusKey ? "{{ translate('Keyphrase_does_not_appear_in_URL_slug.') }}" : "{{ translate('No_focus_keyphrase_set.') }}");
        }

        let first100Words = words.slice(0, 100).join(' ').toLowerCase();
        if (focusKey && first100Words.includes(focusKey)) {
            setCheckStatus('#check-keyphrase-intro', 'good', "{{ translate('Keyphrase_appears_in_the_first_paragraph.') }}");
            passedSeoRules++;
        } else {
            setCheckStatus('#check-keyphrase-intro', 'bad', focusKey ? "{{ translate('Keyphrase_does_not_appear_in_the_first_paragraph.') }}" : "{{ translate('No_focus_keyphrase_set.') }}");
        }

        if (focusKey && wordCount > 0) {
            let matches = (plainText.toLowerCase().match(new RegExp(focusKey, "g")) || []).length;
            let density = ((matches * focusKey.split(' ').length) / wordCount) * 100;
            if (density >= 0.5 && density <= 2.5) {
                setCheckStatus('#check-keyphrase-density', 'good', `${density.toFixed(1)}% (${matches} {{ translate('times') }}). {{ translate('Optimal_density.') }}`);
                passedSeoRules++;
            } else {
                setCheckStatus('#check-keyphrase-density', 'ok', `${density.toFixed(1)}% (${matches} {{ translate('times') }}). {{ translate('Target_between_0.5%_and_2.5%.') }}`);
            }
        } else {
            setCheckStatus('#check-keyphrase-density', 'bad', "0% (0 {{ translate('times') }}).");
        }

        if (wordCount >= 300) {
            setCheckStatus('#check-text-length', 'good', `${wordCount} {{ translate('words._Good_job!') }}`);
            passedSeoRules++;
        } else {
            setCheckStatus('#check-text-length', 'bad', `${wordCount} {{ translate('words._(Below_recommended_300_words)') }}`);
        }

        updateBadge('#seo-score-overall', passedSeoRules, totalSeoRules, 'SEO');

        let passedReadability = 0;
        let totalReadability = 3;

        if (wordCount > 10) {
            let sentences = plainText.split(/[.!?]+/).filter(s => s.trim().length > 0).length || 1;
            let syllables = countSyllablesInText(plainText);
            let fleschScore = 206.835 - (1.015 * (wordCount / sentences)) - (84.6 * (syllables / wordCount));
            fleschScore = Math.min(100, Math.max(0, fleschScore));

            if (fleschScore >= 60) {
                setCheckStatus('#check-flesch-score', 'good', `${Math.round(fleschScore)}/100 - {{ translate('Easy_to_read.') }}`);
                passedReadability++;
            } else if (fleschScore >= 40) {
                setCheckStatus('#check-flesch-score', 'ok', `${Math.round(fleschScore)}/100 - {{ translate('Fairly_difficult_to_read.') }}`);
            } else {
                setCheckStatus('#check-flesch-score', 'bad', `${Math.round(fleschScore)}/100 - {{ translate('Very_difficult_to_read.') }}`);
            }

            let avgSentenceLen = wordCount / sentences;
            if (avgSentenceLen <= 20) {
                setCheckStatus('#check-sentence-length', 'good', `Avg ${Math.round(avgSentenceLen)} {{ translate('words_per_sentence._Great!') }}`);
                passedReadability++;
            } else {
                setCheckStatus('#check-sentence-length', 'bad', `Avg ${Math.round(avgSentenceLen)} {{ translate('words_per_sentence.') }}`);
            }
        } else {
            setCheckStatus('#check-flesch-score', 'bad', "{{ translate('Add_more_content_to_calculate_readability.') }}");
            setCheckStatus('#check-sentence-length', 'bad', "{{ translate('Add_content_to_analyze_sentence_length.') }}");
        }

        let paragraphs = contentHtml.split(/<\/p>|<br\s*\/?>/i).filter(p => p.trim().length > 0);
        let longParagraphs = 0;
        paragraphs.forEach(p => {
            let pWords = p.replace(/<[^>]+>/g, '').trim().split(/\s+/).length;
            if (pWords > 150) longParagraphs++;
        });

        if (longParagraphs === 0) {
            setCheckStatus('#check-paragraph-length', 'good', "{{ translate('Paragraph_lengths_are_well_balanced.') }}");
            passedReadability++;
        } else {
            setCheckStatus('#check-paragraph-length', 'bad', `${longParagraphs} {{ translate('paragraph(s)_contain_over_150_words.') }}`);
        }

        updateBadge('#readability-score-overall', passedReadability, totalReadability, "{{ translate('Readability') }}");
    }

    function setCheckStatus(selector, type, message) {
        let bullet = $(selector).find('.analysis-bullet');
        bullet.removeClass('bullet-good bullet-ok bullet-bad').addClass('bullet-' + type);
        $(selector).find('.check-msg').text(message);
    }

    function updateBadge(selector, passed, total, label) {
        let el = $(selector);
        el.removeClass('badge-good badge-ok badge-bad');
        let bullet = el.find('.analysis-bullet');
        bullet.removeClass('bullet-good bullet-ok bullet-bad');

        if (passed >= total - 1) {
            el.addClass('badge-good');
            bullet.addClass('bullet-good');
            el.contents().filter(function() { return this.nodeType == 3; }).replaceWith(` ${label}: {{ translate('Good') }}`);
        } else if (passed >= Math.floor(total / 2)) {
            el.addClass('badge-ok');
            bullet.addClass('bullet-ok');
            el.contents().filter(function() { return this.nodeType == 3; }).replaceWith(` ${label}: {{ translate('OK') }}`);
        } else {
            el.addClass('badge-bad');
            bullet.addClass('bullet-bad');
            el.contents().filter(function() { return this.nodeType == 3; }).replaceWith(` ${label}: {{ translate('Needs_Improvement') }}`);
        }
    }

    function countSyllablesInText(text) {
        text = text.toLowerCase();
        let words = text.match(/[a-z]+/g) || [];
        let count = 0;
        words.forEach(word => {
            if (word.length <= 3) { count += 1; return; }
            word = word.replace(/(?:ended|ing|e)$/, '');
            let matches = word.match(/[aeiouy]{1,2}/g);
            count += matches ? matches.length : 1;
        });
        return count;
    }
</script>
@endpush
