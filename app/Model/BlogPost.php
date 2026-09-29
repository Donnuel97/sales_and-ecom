<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class BlogPost extends Model
{
    protected $table = 'blog_posts';

    protected $fillable = [
        'title',
        'slug',
        'content',
        'excerpt',
        'image',
        'category_id',
        'author_id',
        'status',
        'meta_title',
        'meta_description',
        'focus_keyword',
        'canonical_url',
        'og_title',
        'og_description',
        'og_image',
        'is_featured',
        'views_count',
        'reading_time',
        'published_at',
    ];

    protected $casts = [
        'is_featured' => 'boolean',
        'views_count' => 'integer',
        'reading_time' => 'integer',
        'published_at' => 'datetime',
    ];

    public function category()
    {
        return $this->belongsTo(BlogCategory::class, 'category_id');
    }

    public function tags()
    {
        return $this->belongsToMany(BlogTag::class, 'blog_post_tag', 'blog_post_id', 'blog_tag_id');
    }

    public function author()
    {
        return $this->belongsTo(Admin::class, 'author_id');
    }

    public function scopePublished($query)
    {
        return $query->where('status', 1)
                     ->where(function ($q) {
                         $q->whereNull('published_at')
                           ->orWhere('published_at', '<=', now());
                     });
    }

    /**
     * Estimate reading time based on word count
     */
    public static function calculateReadingTime($content)
    {
        $words = str_word_count(strip_tags($content));
        $minutes = ceil($words / 200); // Average reading speed ~200 wpm
        return max(1, $minutes);
    }
}
