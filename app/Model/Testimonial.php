<?php

namespace App\Model;

use App\User;
use Illuminate\Database\Eloquent\Model;

class Testimonial extends Model
{
    protected $casts = [
        'customer_id' => 'integer',
        'rating'      => 'integer',
        'status'      => 'integer',
        'created_at'  => 'datetime',
        'updated_at'  => 'datetime',
    ];

    protected $fillable = [
        'customer_id',
        'testimonial',
        'rating',
        'status',
    ];

    public function customer()
    {
        return $this->belongsTo(User::class, 'customer_id');
    }

    public function scopeActive($query)
    {
        return $query->where('status', 1);
    }
}
