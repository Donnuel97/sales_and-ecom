<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class KitchenInquiry extends Model
{
    protected $table = 'kitchen_inquiries';

    protected $fillable = [
        'name',
        'email',
        'phone',
        'project_details',
        'status',
    ];
}
