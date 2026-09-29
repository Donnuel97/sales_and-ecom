<?php

namespace App\Model;

use App\CPU\Helpers;
use App\Model\Tag;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\DB;

class ReviewRatings extends Model {

    protected $guarded = [];

    public function reviewText () {

        return $this->belongsTo(Review::class);
    }

    public static function reviewTypes () {

        return [
            "product_quality", "pricing", "customer_service", "delivery_timeline",

            "order_accuracy", "packaging"
        ];
    }
}
