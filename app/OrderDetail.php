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
}
