<?php

namespace App\Http\Controllers\Admin;

use App\CPU\Helpers;
use App\CPU\ImageManager;
use App\Http\Controllers\Controller;
use App\Model\BlogCategory;
use App\Model\BlogPost;
use App\Model\BlogTag;
use Brian2694\Toastr\Facades\Toastr;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

class BlogController extends Controller
{
    public function list(Request $request)
    {
        $query_param = [];
        $search = $request['search'];
        $category_id = $request['category_id'];

        $query = BlogPost::with(['category', 'tags']);

        if ($request->has('search') && !empty($request['search'])) {
            $key = explode(' ', $request['search']);
            $query->where(function ($q) use ($key) {
                foreach ($key as $value) {
                    $q->orWhere('title', 'like', "%{$value}%")
                      ->orWhere('content', 'like', "%{$value}%");
                }
            });
            $query_param['search'] = $request['search'];
        }

        if ($category_id) {
            $query->where('category_id', $category_id);
            $query_param['category_id'] = $category_id;
        }

        $blogs = $query->latest()->paginate(Helpers::pagination_limit())->appends($query_param);
        $categories = BlogCategory::where('status', 1)->get();

        return view('admin-views.blog.list', compact('blogs', 'categories', 'search', 'category_id'));
    }

    public function create()
    {
        $categories = BlogCategory::where('status', 1)->get();
        $tags = BlogTag::all();
        return view('admin-views.blog.create', compact('categories', 'tags'));
    }

    public function store(Request $request)
    {
        $request->validate([
            'title' => 'required|max:255',
            'content' => 'required',
            'image' => 'image|mimes:jpeg,png,jpg,gif,webp|max:2048',
            'og_image' => 'image|mimes:jpeg,png,jpg,gif,webp|max:2048',
        ], [
            'title.required' => translate('Title_is_required'),
            'content.required' => translate('Content_is_required'),
        ]);

        $slug = $request->slug ? Str::slug($request->slug) : Str::slug($request->title);
        $original_slug = $slug;
        $count = 1;
        while (BlogPost::where('slug', $slug)->exists()) {
            $slug = $original_slug . '-' . $count;
            $count++;
        }

        $image_name = null;
        if ($request->hasFile('image')) {
            $image_name = ImageManager::upload('blog/', 'webp', $request->file('image'));
        }

        $og_image_name = null;
        if ($request->hasFile('og_image')) {
            $og_image_name = ImageManager::upload('blog/og/', 'webp', $request->file('og_image'));
        }

        $reading_time = BlogPost::calculateReadingTime($request->content);
        $author_id = auth('admin')->id();

        $blog = BlogPost::create([
            'title' => $request->title,
            'slug' => $slug,
            'content' => $request->content,
            'excerpt' => $request->excerpt,
            'image' => $image_name,
            'category_id' => $request->category_id,
            'author_id' => $author_id,
            'status' => $request->has('status') ? 1 : 0,
            'meta_title' => $request->meta_title,
            'meta_description' => $request->meta_description,
            'focus_keyword' => $request->focus_keyword,
            'canonical_url' => $request->canonical_url,
            'og_title' => $request->og_title,
            'og_description' => $request->og_description,
            'og_image' => $og_image_name,
            'is_featured' => $request->has('is_featured') ? 1 : 0,
            'reading_time' => $reading_time,
            'published_at' => $request->published_at ? $request->published_at : now(),
        ]);

        // Process Tags
        if ($request->has('tags') && is_array($request->tags)) {
            $tag_ids = [];
            foreach ($request->tags as $tag_name) {
                if (is_numeric($tag_name)) {
                    $tag_ids[] = $tag_name;
                } else {
                    $tag = BlogTag::firstOrCreate(
                        ['name' => trim($tag_name)],
                        ['slug' => Str::slug($tag_name)]
                    );
                    $tag_ids[] = $tag->id;
                }
            }
            $blog->tags()->sync($tag_ids);
        }

        Toastr::success(translate('blog_post_created_successfully'));
        return redirect()->route('admin.blog.list');
    }

    public function edit($id)
    {
        $blog = BlogPost::with('tags')->findOrFail($id);
        $categories = BlogCategory::where('status', 1)->get();
        $tags = BlogTag::all();
        return view('admin-views.blog.edit', compact('blog', 'categories', 'tags'));
    }

    public function update(Request $request, $id)
    {
        $blog = BlogPost::findOrFail($id);

        $request->validate([
            'title' => 'required|max:255',
            'content' => 'required',
            'image' => 'image|mimes:jpeg,png,jpg,gif,webp|max:2048',
            'og_image' => 'image|mimes:jpeg,png,jpg,gif,webp|max:2048',
        ], [
            'title.required' => translate('Title_is_required'),
            'content.required' => translate('Content_is_required'),
        ]);

        $slug = $blog->slug;
        if ($request->filled('slug') && $request->slug !== $blog->slug) {
            $slug = Str::slug($request->slug);
        } elseif ($blog->title !== $request->title && !$request->filled('slug')) {
            $slug = Str::slug($request->title);
        }
        
        $original_slug = $slug;
        $count = 1;
        while (BlogPost::where('slug', $slug)->where('id', '!=', $id)->exists()) {
            $slug = $original_slug . '-' . $count;
            $count++;
        }

        $image_name = $blog->image;
        if ($request->hasFile('image')) {
            $image_name = ImageManager::update('blog/', $blog->image, 'webp', $request->file('image'));
        }

        $og_image_name = $blog->og_image;
        if ($request->hasFile('og_image')) {
            $og_image_name = ImageManager::update('blog/og/', $blog->og_image, 'webp', $request->file('og_image'));
        }

        $reading_time = BlogPost::calculateReadingTime($request->content);

        $blog->update([
            'title' => $request->title,
            'slug' => $slug,
            'content' => $request->content,
            'excerpt' => $request->excerpt,
            'image' => $image_name,
            'category_id' => $request->category_id,
            'status' => $request->has('status') ? 1 : 0,
            'meta_title' => $request->meta_title,
            'meta_description' => $request->meta_description,
            'focus_keyword' => $request->focus_keyword,
            'canonical_url' => $request->canonical_url,
            'og_title' => $request->og_title,
            'og_description' => $request->og_description,
            'og_image' => $og_image_name,
            'is_featured' => $request->has('is_featured') ? 1 : 0,
            'reading_time' => $reading_time,
            'published_at' => $request->published_at ? $request->published_at : $blog->published_at,
        ]);

        // Sync Tags
        if ($request->has('tags') && is_array($request->tags)) {
            $tag_ids = [];
            foreach ($request->tags as $tag_name) {
                if (is_numeric($tag_name)) {
                    $tag_ids[] = $tag_name;
                } else {
                    $tag = BlogTag::firstOrCreate(
                        ['name' => trim($tag_name)],
                        ['slug' => Str::slug($tag_name)]
                    );
                    $tag_ids[] = $tag->id;
                }
            }
            $blog->tags()->sync($tag_ids);
        } else {
            $blog->tags()->detach();
        }

        Toastr::success(translate('blog_post_updated_successfully'));
        return redirect()->route('admin.blog.list');
    }

    public function delete(Request $request)
    {
        $blog = BlogPost::findOrFail($request->id);
        if ($blog->image) {
            ImageManager::delete('blog/' . $blog->image);
        }
        if ($blog->og_image) {
            ImageManager::delete('blog/og/' . $blog->og_image);
        }
        $blog->tags()->detach();
        $blog->delete();
        Toastr::success(translate('blog_post_deleted_successfully'));
        return back();
    }

    public function status(Request $request, $id, $status)
    {
        $blog = BlogPost::findOrFail($id);
        $blog->status = $status;
        $blog->save();
        Toastr::success(translate('status_updated_successfully'));
        return back();
    }
}
