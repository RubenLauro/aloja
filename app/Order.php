<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    public $timestamps = false;
    //
    public function products()
    {
        return $this->belongsToMany('App\Order', 'orders_products', 'order_id', 'product_id')->withPivot('quantity');
    }
}
