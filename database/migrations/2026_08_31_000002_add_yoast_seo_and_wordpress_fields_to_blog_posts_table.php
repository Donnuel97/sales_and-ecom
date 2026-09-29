<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddYoastSeoAndWordpressFieldsToBlogPostsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('blog_posts', function (Blueprint $table) {
            $table->unsignedBigInteger('category_id')->nullable()->after('id');
            $table->text('excerpt')->nullable()->after('content');
            $table->unsignedBigInteger('author_id')->nullable()->after('excerpt');
            
            // Yoast SEO & Meta fields
            $table->string('meta_title')->nullable()->after('status');
            $table->text('meta_description')->nullable()->after('meta_title');
            $table->string('focus_keyword')->nullable()->after('meta_description');
            $table->string('canonical_url')->nullable()->after('focus_keyword');
            
            // OpenGraph Social meta
            $table->string('og_title')->nullable()->after('canonical_url');
            $table->text('og_description')->nullable()->after('og_title');
            $table->string('og_image')->nullable()->after('og_description');
            
            // Stats & WordPress attributes
            $table->boolean('is_featured')->default(0)->after('og_image');
            $table->integer('views_count')->default(0)->after('is_featured');
            $table->integer('reading_time')->default(1)->after('views_count');
            $table->timestamp('published_at')->nullable()->after('reading_time');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('blog_posts', function (Blueprint $table) {
            $table->dropColumn([
                'category_id',
                'excerpt',
                'author_id',
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
            ]);
        });
    }
}
