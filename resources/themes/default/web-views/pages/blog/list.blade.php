@extends('layouts.front-end.app')

@section('title', translate('blog'))

@section('content')
    <div class="container py-5">
        <!-- Header Section -->
        <div class="d-flex flex-column flex-md-row justify-content-between align-items-center mb-4 gap-3">
            <div>
                <h1 class="h2 text-capitalize mb-2" style="font-weight: 700; color: #2d3748;">{{ translate('our_blog') }}</h1>
                <p class="text-muted mb-0">{{ translate('stay_updated_with_our_latest_news_and_articles') }}</p>
            </div>
            
            <div style="max-width: 400px; width: 100%;">
                <form action="{{ route('blog.index') }}" method="GET" class="w-100">
                    @if($category_slug)
                        <input type="hidden" name="category" value="{{ $category_slug }}">
                    @endif
                    <div class="input-group" style="box-shadow: 0 4px 10px rgba(0,0,0,0.05); border-radius: 30px; overflow: hidden; border: 1px solid #e2e8f0;">
                        <input type="text" name="search" class="form-control border-0 px-4 py-2" 
                               placeholder="{{ translate('search_articles...') }}" value="{{ $search }}">
                        <button class="btn px-4 py-2 text-white" type="submit" style="background-color: {{ $web_config['primary_color'] }}; font-weight: 600;">
                            <i class="tio-search"></i>
                        </button>
                    </div>
                </form>
            </div>
        </div>

        <!-- Category Filters Pill Bar -->
        @if(isset($categories) && $categories->count() > 0)
            <div class="d-flex flex-wrap gap-2 mb-4">
                <a href="{{ route('blog.index') }}" class="btn btn-sm {{ !$category_slug ? 'btn-primary' : 'btn-outline-secondary' }} radius-50 px-3"
                   style="{{ !$category_slug ? 'background-color:'.$web_config['primary_color'].'; border-color:'.$web_config['primary_color'].';' : '' }}">
                    {{ translate('all') }}
                </a>
                @foreach($categories as $cat)
                    <a href="{{ route('blog.index', ['category' => $cat->slug]) }}"
                       class="btn btn-sm {{ $category_slug == $cat->slug ? 'btn-primary' : 'btn-outline-secondary' }} radius-50 px-3"
                       style="{{ $category_slug == $cat->slug ? 'background-color:'.$web_config['primary_color'].'; border-color:'.$web_config['primary_color'].';' : '' }}">
                        {{ $cat->name }} ({{ $cat->posts_count }})
                    </a>
                @endforeach
            </div>
        @endif

        <!-- Blog Grid -->
        <div class="row g-4">
            @forelse($blogs as $blog)
                <div class="col-md-6 col-lg-4">
                    <div class="card h-100 border-0" style="box-shadow: 0 10px 25px rgba(0,0,0,0.05); border-radius: 12px; overflow: hidden; transition: all 0.3s ease;">
                        <div style="overflow: hidden; height: 220px; position: relative;">
                            <img class="w-100 h-100" style="object-fit: cover; transition: transform 0.5s ease;"
                                 onerror="this.src='{{asset('assets/front-end/img/image-place-holder.png')}}'"
                                 src="{{ $blog->image ? asset('storage/app/public/blog/'.$blog->image) : asset('assets/front-end/img/image-place-holder.png') }}" 
                                 alt="{{ $blog->title }}">
                            <div style="position: absolute; top: 15px; left: 15px; background-color: {{ $web_config['primary_color'] }}; color: #fff; padding: 4px 12px; border-radius: 20px; font-size: 12px; font-weight: 600;">
                                {{ $blog->published_at ? $blog->published_at->format('M d, Y') : $blog->created_at->format('M d, Y') }}
                            </div>
                            @if($blog->category)
                                <div style="position: absolute; bottom: 15px; left: 15px; background: rgba(0,0,0,0.7); color: #fff; padding: 3px 10px; border-radius: 4px; font-size: 11px;">
                                    {{ $blog->category->name }}
                                </div>
                            @endif
                        </div>
                        <div class="card-body d-flex flex-column p-4">
                            <h5 class="card-title mb-2" style="font-weight: 600; line-height: 1.4; height: 50px; overflow: hidden;">
                                <a href="{{ route('blog.show', [$blog->slug]) }}" style="color: #2d3748; text-decoration: none; transition: color 0.2s ease;">
                                    {{ $blog->title }}
                                </a>
                            </h5>
                            <p class="card-text text-muted mb-3" style="font-size: 14px; line-height: 1.6; height: 66px; overflow: hidden;">
                                {{ $blog->excerpt ?: Str::limit(strip_tags($blog->content), 110) }}
                            </p>
                            <div class="mt-auto d-flex justify-content-between align-items-center pt-2 border-top text-muted" style="font-size: 12px;">
                                <span><i class="tio-time"></i> {{ $blog->reading_time ?? 1 }} min</span>
                                <a href="{{ route('blog.show', [$blog->slug]) }}" class="d-inline-flex align-items-center gap-1 font-weight-bold" 
                                   style="color: {{ $web_config['primary_color'] }}; text-decoration: none; font-size: 13px;">
                                    {{ translate('read_more') }}
                                    <i class="tio-chevron-right" style="font-size: 12px;"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            @empty
                <div class="col-12 text-center py-5">
                    <img src="{{ asset('assets/front-end/img/no-data-found.png') }}" onerror="this.src='{{ asset('assets/front-end/img/image-place-holder.png') }}'" alt="No Blogs Found" style="max-width: 150px; margin-bottom: 20px;">
                    <h3 class="text-muted">{{ translate('no_blog_posts_found') }}</h3>
                    @if($search || $category_slug || $tag_slug)
                        <p class="text-muted">{{ translate('try_adjusting_your_search_terms_or_filters') }}</p>
                        <a href="{{ route('blog.index') }}" class="btn btn-sm text-white mt-2" style="background-color: {{ $web_config['primary_color'] }}">{{ translate('clear_filters') }}</a>
                    @endif
                </div>
            @endforelse
        </div>

        <!-- Pagination -->
        <div class="mt-5 d-flex justify-content-center">
            {!! $blogs->links() !!}
        </div>
    </div>

    <!-- Custom Styling for Hover Transitions -->
    <style>
        .card:hover {
            transform: translateY(-8px);
            box-shadow: 0 15px 35px rgba(0,0,0,0.1) !important;
        }
        .card:hover img {
            transform: scale(1.06);
        }
        .card-title a:hover {
            color: {{ $web_config['primary_color'] }} !important;
        }
    </style>
@endsection
