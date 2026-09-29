<?php

namespace App\Http\Controllers\Admin;

use App\CPU\Helpers;
use App\Http\Controllers\Controller;
use App\Model\BlogCategory;
use Brian2694\Toastr\Facades\Toastr;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

class BlogCategoryController extends Controller
{
    public function index(Request $request)
    {
        $query_param = [];
        $search = $request['search'];
        if ($request->has('search')) {
            $key = explode(' ', $request['search']);
            $categories = BlogCategory::where(function ($q) use ($key) {
                foreach ($key as $value) {
                    $q->orWhere('name', 'like', "%{$value}%");
                }
            });
            $query_param = ['search' => $request['search']];
        } else {
            $categories = new BlogCategory();
        }

        $categories = $categories->with('parent')->latest()->paginate(Helpers::pagination_limit())->appends($query_param);
        $main_categories = BlogCategory::whereNull('parent_id')->orWhere('parent_id', 0)->get();

        return view('admin-views.blog.categories', compact('categories', 'main_categories', 'search'));
    }

    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required|max:255',
        ]);

        $slug = Str::slug($request->name);
        $original_slug = $slug;
        $count = 1;
        while (BlogCategory::where('slug', $slug)->exists()) {
            $slug = $original_slug . '-' . $count;
            $count++;
        }

        BlogCategory::create([
            'name' => $request->name,
            'slug' => $slug,
            'description' => $request->description,
            'parent_id' => $request->parent_id ?? 0,
            'status' => $request->has('status') ? 1 : 0,
        ]);

        Toastr::success(translate('category_created_successfully'));
        return back();
    }

    public function storeAjax(Request $request)
    {
        $request->validate([
            'name' => 'required|max:255',
        ]);

        $slug = Str::slug($request->name);
        $original_slug = $slug;
        $count = 1;
        while (BlogCategory::where('slug', $slug)->exists()) {
            $slug = $original_slug . '-' . $count;
            $count++;
        }

        $category = BlogCategory::create([
            'name' => $request->name,
            'slug' => $slug,
            'parent_id' => $request->parent_id ?? 0,
            'status' => 1,
        ]);

        return response()->json([
            'status' => true,
            'id' => $category->id,
            'name' => $category->name,
            'message' => translate('category_added_successfully')
        ]);
    }

    public function update(Request $request, $id)
    {
        $category = BlogCategory::findOrFail($id);

        $request->validate([
            'name' => 'required|max:255',
        ]);

        $slug = $category->slug;
        if ($category->name !== $request->name) {
            $slug = Str::slug($request->name);
            $original_slug = $slug;
            $count = 1;
            while (BlogCategory::where('slug', $slug)->where('id', '!=', $id)->exists()) {
                $slug = $original_slug . '-' . $count;
                $count++;
            }
        }

        $category->update([
            'name' => $request->name,
            'slug' => $slug,
            'description' => $request->description,
            'parent_id' => $request->parent_id ?? 0,
            'status' => $request->has('status') ? 1 : 0,
        ]);

        Toastr::success(translate('category_updated_successfully'));
        return back();
    }

    public function delete(Request $request)
    {
        $category = BlogCategory::findOrFail($request->id);
        $category->delete();
        Toastr::success(translate('category_deleted_successfully'));
        return back();
    }

    public function status(Request $request, $id, $status)
    {
        $category = BlogCategory::findOrFail($id);
        $category->status = $status;
        $category->save();
        Toastr::success(translate('status_updated_successfully'));
        return back();
    }
}
