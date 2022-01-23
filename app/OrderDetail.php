<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class OrderDetail extends Model
{
    protected $guarded = [];
    public function User()
    {
        return $this->belongsTo('App\User', 'user_id');
    }
    public function Plan()
    {
        return $this->belongsTo('App\Plan', 'plan_id');
    }

    public function Category()
    {
        return $this->belongsTo('App\Category', 'category_id');
    }
}
