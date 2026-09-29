@extends('layouts.front-end.app')

@section('title', $blog->meta_title ?: $blog->title)

@push('css_or_js')
    <!-- Yoast SEO Dynamic Meta Tags -->
    @if($blog->meta_description || $blog->excerpt)
        <meta name="description" content="{{ $blog->meta_description ?: strip_tags($blog->excerpt) }}">
    @endif
    @if($blog->focus_keyword)
        <meta name="keywords" content="{{ $blog->focus_keyword }}">
    @endif
    @if($blog->canonical_url)
        <link rel="canonical" href="{{ $blog->canonical_url }}">
    @else
        <link rel="canonical" href="{{ url()->current() }}">
    @endif

    <!-- OpenGraph Social Meta Tags -->
    <meta property="og:locale" content="en_US">
    <meta property="og:type" content="article">
    <meta property="og:title" content="{{ $blog->og_title ?: ($blog->meta_title ?: $blog->title) }}">
    <meta property="og:description" content="{{ $blog->og_description ?: ($blog->meta_description ?: strip_tags($blog->excerpt)) }}">
    <meta property="og:url" content="{{ url()->current() }}">
    @if($blog->og_image)
        <meta property="og:image" content="{{ asset('storage/app/public/blog/og/'.$blog->og_image) }}">
    @elseif($blog->image)
        <meta property="og:image" content="{{ asset('storage/app/public/blog/'.$blog->image) }}">
    @endif

    <!-- Twitter Card Meta Tags -->
    <meta name="twitter:card" content="summary_large_image">
    <meta name="twitter:title" content="{{ $blog->og_title ?: ($blog->meta_title ?: $blog->title) }}">
    <meta name="twitter:description" content="{{ $blog->og_description ?: ($blog->meta_description ?: strip_tags($blog->excerpt)) }}">

    <!-- Schema.org JSON-LD Structured Data for Yoast Rich Snippet -->
    <script type="application/ld+json">
    {
      "@context": "https://schema.org",
      "@type": "BlogPosting",
      "mainEntityOfPage": {
        "@type": "WebPage",
        "@id": "{{ url()->current() }}"
      },
      "headline": "{{ addslashes($blog->title) }}",
      "description": "{{ addslashes($blog->meta_description ?: strip_tags($blog->excerpt)) }}",
      "image": "{{ $blog->image ? asset('storage/app/public/blog/'.$blog->image) : '' }}",
      "datePublished": "{{ $blog->published_at ? $blog->published_at->toIso8601String() : $blog->created_at->toIso8601String() }}",
      "dateModified": "{{ $blog->updated_at->toIso8601String() }}",
      "author": {
        "@type": "Person",
        "name": "Admin"
      }
    }
    </script>
@endpush

@section('content')
    <div class="container py-5">
        <!-- Breadcrumb -->
        <div class="mb-4 d-flex align-items-center gap-2" style="font-size: 14px;">
            <a href="{{ route('blog.index') }}" class="text-decoration-none text-muted">
                {{ translate('blog') }}
            </a>
            <span class="text-muted">/</span>
            @if($blog->category)
                <a href="{{ route('blog.index', ['category' => $blog->category->slug]) }}" class="text-decoration-none text-muted">
                    {{ $blog->category->name }}
                </a>
                <span class="text-muted">/</span>
            @endif
            <span class="text-dark font-weight-bold truncate" style="max-width: 300px;">{{ $blog->title }}</span>
        </div>

        <div class="row g-5">
            <!-- Blog Content (Left Column) -->
            <div class="col-lg-8">
                <article class="bg-white p-4 p-md-5 rounded-3 shadow-sm">
                    <!-- Category Badge -->
                    @if($blog->category)
                        <div class="mb-2">
                            <a href="{{ route('blog.index', ['category' => $blog->category->slug]) }}" class="badge badge-primary px-3 py-2 text-decoration-none" style="background-color: {{ $web_config['primary_color'] }};">
                                {{ $blog->category->name }}
                            </a>
                        </div>
                    @endif

                    <!-- Post Title -->
                    <h1 class="mb-3" style="font-weight: 800; color: #1a202c; line-height: 1.3; font-size: 32px;">{{ $blog->title }}</h1>
                    
                    <!-- Post Meta -->
                    <div class="d-flex flex-wrap align-items-center gap-3 mb-4 text-muted pb-3 border-bottom" style="font-size: 14px;">
                        <span><i class="tio-calendar"></i> {{ $blog->published_at ? $blog->published_at->format('M d, Y') : $blog->created_at->format('M d, Y') }}</span>
                        <span>•</span>
                        <span><i class="tio-time"></i> {{ $blog->reading_time ?? 1 }} {{ translate('min_read') }}</span>
                        <span>•</span>
                        <span><i class="tio-visible"></i> {{ $blog->views_count }} {{ translate('views') }}</span>
                    </div>

                    <!-- Post Featured Image -->
                    @if($blog->image)
                        <div class="mb-4 rounded-3 overflow-hidden" style="box-shadow: 0 10px 25px rgba(0,0,0,0.05);">
                            <img class="w-100" style="max-height: 480px; object-fit: cover;" 
                                 src="{{ asset('storage/app/public/blog/'.$blog->image) }}" 
                                 alt="{{ $blog->title }}">
                        </div>
                    @endif

                    <!-- Post Content -->
                    <div class="blog-post-content mt-4" style="color: #2d3748; line-height: 1.8; font-size: 17px;">
                        {!! $blog->content !!}
                    </div>

                    <!-- Post Tags -->
                    @if($blog->tags->count() > 0)
                        <div class="mt-5 pt-3 border-top d-flex align-items-center gap-2">
                            <span class="font-weight-bold text-dark"><i class="tio-label"></i> {{ translate('tags') }}:</span>
                            <div class="d-flex flex-wrap gap-1">
                                @foreach($blog->tags as $t)
                                    <a href="{{ route('blog.index', ['tag' => $t->slug]) }}" class="badge badge-light border text-decoration-none px-3 py-2">
                                        #{{ $t->name }}
                                    </a>
                                @endforeach
                            </div>
                        </div>
                    @endif
                </article>
            </div>

            <!-- Sidebar (Right Column) -->
            <div class="col-lg-4">
                <div class="position-sticky" style="top: 20px;">
                    <!-- Search Widget -->
                    <div class="card border-0 p-4 mb-4 shadow-sm" style="border-radius: 12px;">
                        <h5 class="mb-3 font-weight-bold" style="color: #2d3748;">{{ translate('search_blog') }}</h5>
                        <form action="{{ route('blog.index') }}" method="GET">
                            <div class="input-group">
                                <input type="text" name="search" class="form-control px-3 py-2" placeholder="{{ translate('search_articles...') }}">
                                <button class="btn text-white px-3" type="submit" style="background-color: {{ $web_config['primary_color'] }}">
                                    <i class="tio-search"></i>
                                </button>
                            </div>
                        </form>
                    </div>

                    <!-- Categories Widget -->
                    @if(isset($categories) && $categories->count() > 0)
                        <div class="card border-0 p-4 mb-4 shadow-sm" style="border-radius: 12px;">
                            <h5 class="mb-3 font-weight-bold" style="color: #2d3748;">{{ translate('categories') }}</h5>
                            <div class="list-group list-group-flush">
                                @foreach($categories as $cat)
                                    <a href="{{ route('blog.index', ['category' => $cat->slug]) }}" class="list-group-item list-group-item-action d-flex justify-content-between align-items-center px-0 py-2 border-0">
                                        <span>{{ $cat->name }}</span>
                                        <span class="badge badge-soft-secondary radius-50">{{ $cat->posts_count }}</span>
                                    </a>
                                @endforeach
                            </div>
                        </div>
                    @endif

                    <!-- Recent Posts Widget -->
                    @if($recent_posts->count() > 0)
                        <div class="card border-0 p-4 shadow-sm" style="border-radius: 12px;">
                            <h5 class="mb-4 font-weight-bold" style="color: #2d3748;">{{ translate('recent_posts') }}</h5>
                            <div class="d-flex flex-column gap-3">
                                @foreach($recent_posts as $recent)
                                    <div class="d-flex align-items-center gap-3">
                                        <div style="width: 70px; height: 60px; overflow: hidden; border-radius: 6px; flex-shrink: 0;">
                                            <img class="w-100 h-100" style="object-fit: cover;"
                                                 onerror="this.src='{{asset('assets/front-end/img/image-place-holder.png')}}'"
                                                 src="{{ $recent->image ? asset('storage/app/public/blog/'.$recent->image) : asset('assets/front-end/img/image-place-holder.png') }}" 
                                                 alt="{{ $recent->title }}">
                                        </div>
                                        <div>
                                            <h6 class="mb-1" style="font-size: 14px; font-weight: 600; line-height: 1.4; max-height: 38px; overflow: hidden;">
                                                <a href="{{ route('blog.show', [$recent->slug]) }}" class="text-decoration-none text-dark hover-primary">
                                                    {{ $recent->title }}
                                                </a>
                                            </h6>
                                            <span class="text-muted" style="font-size: 12px;">{{ $recent->published_at ? $recent->published_at->format('M d, Y') : $recent->created_at->format('M d, Y') }}</span>
                                        </div>
                                    </div>
                                @endforeach
                            </div>
                        </div>
                    @endif
                </div>
            </div>
        </div>
    </div>

    <style>
        .blog-post-content p { margin-bottom: 1.5rem; }
        .blog-post-content h2, .blog-post-content h3, .blog-post-content h4 {
            color: #1a202c;
            font-weight: 700;
            margin-top: 2rem;
            margin-bottom: 1rem;
        }
        .blog-post-content img {
            max-width: 100%;
            height: auto;
            border-radius: 8px;
            margin: 1.5rem 0;
        }
        .blog-post-content blockquote {
            border-left: 4px solid {{ $web_config['primary_color'] }};
            padding: 1rem 1.2rem;
            margin: 1.5rem 0;
            background-color: #f7fafc;
            color: #4a5568;
            font-style: italic;
            border-radius: 0 8px 8px 0;
        }
    </style>
@endsection
