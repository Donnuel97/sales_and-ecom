<?php

namespace App\Http\Controllers\Web;

use App\Http\Controllers\Controller;
use App\Model\BlogCategory;
use App\Model\BlogPost;
use App\Model\BlogTag;
use Illuminate\Http\Request;

class BlogController extends Controller
{
    public function index(Request $request)
    {
        $search = $request->input('search');
        $category_slug = $request->input('category');
        $tag_slug = $request->input('tag');

        $query = BlogPost::with(['category', 'tags'])->published();

        if ($search) {
            $key = explode(' ', $search);
            $query->where(function ($q) use ($key) {
                foreach ($key as $value) {
                    $q->orWhere('title', 'like', "%{$value}%")
                      ->orWhere('content', 'like', "%{$value}%")
                      ->orWhere('excerpt', 'like', "%{$value}%");
                }
            });
        }

        if ($category_slug) {
            $category = BlogCategory::where('slug', $category_slug)->first();
            if ($category) {
                $query->where('category_id', $category->id);
            }
        }

        if ($tag_slug) {
            $tag = BlogTag::where('slug', $tag_slug)->first();
            if ($tag) {
                $query->whereHas('tags', function ($q) use ($tag) {
                    $q->where('blog_tags.id', $tag->id);
                });
            }
        }

        $blogs = $query->latest()->paginate(9);
        $categories = BlogCategory::where('status', 1)->withCount('posts')->get();
        $tags = BlogTag::withCount('posts')->get();
        $featured_posts = BlogPost::published()->where('is_featured', 1)->take(3)->get();

        return view(VIEW_FILE_NAMES['blog_list'], compact('blogs', 'categories', 'tags', 'featured_posts', 'search', 'category_slug', 'tag_slug'));
    }

    public function show($slug)
    {
        $blog = BlogPost::with(['category', 'tags', 'author'])
            ->where('slug', $slug)
            ->published()
            ->firstOrFail();

        // Increment view count
        $blog->increment('views_count');

        // Fetch recent posts for sidebar
        $recent_posts = BlogPost::published()
            ->where('id', '!=', $blog->id)
            ->latest()
            ->take(5)
            ->get();

        $categories = BlogCategory::where('status', 1)->withCount('posts')->get();
        $tags = BlogTag::all();

        return view(VIEW_FILE_NAMES['blog_details'], compact('blog', 'recent_posts', 'categories', 'tags'));
    }
}
