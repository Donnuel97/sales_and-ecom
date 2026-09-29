<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;

class Seller extends Authenticatable
{
    use Notifiable;

    public const STATUS_PENDING = "pending", STATUS_SUSPENDED = 'suspended',

    STATUS_APPROVED_1 = "approved-1", STATUS_APPROVED_2 = "approved-2",

    STATUS_REJECTED = "rejected";

    protected $casts = [
        'id' => 'integer',
        'orders_count' => 'integer',
        'product_count' => 'integer',
        'pos+status' => 'integer'
    ];

    protected $guarded = [];

    public function scopeApproved($query)
    {
        return $query->where([

            ['status', "like", "approved%"]
        ]); // don't know where this is used -- disadvantage of magic scopes
    }

    public function shop()
    {
        return $this->hasOne(Shop::class, 'seller_id');
    }

    public function shops()
    {
        return $this->hasMany(Shop::class, 'seller_id');
    }

    public function orders()
    {
        return $this->hasMany(Order::class, 'seller_id');
    }

    public function product()
    {
        return $this->hasMany(Product::class, 'user_id')->where(['added_by'=>'seller']);
    }

    public function wallet()
    {
        return $this->hasOne(SellerWallet::class);
    }

    public function coupon(){
        return $this->hasMany(Coupon::class, 'seller_id')
            ->where(['coupon_bearer'=>'seller', 'status'=>1])
            ->whereDate('start_date','<=',date('Y-m-d'))
            ->whereDate('expire_date','>=',date('Y-m-d'));
    }

    public function credentials () {

        return $this->hasMany(SellerCredentials::class);
    }

    public function isLevelReg (int $level):bool {

        return $this->reg_level_completed == $level;
    }

}
