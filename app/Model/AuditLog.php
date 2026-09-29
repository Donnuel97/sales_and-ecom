<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class AuditLog extends Model
{
    protected $fillable = [
        'admin_id',
        'module',
        'action',
        'description',
        'ip_address',
        'user_agent',
        'url',
        'payload',
    ];

    protected $casts = [
        'payload' => 'array',
    ];

    public function admin()
    {
        return $this->belongsTo(Admin::class, 'admin_id');
    }
}
