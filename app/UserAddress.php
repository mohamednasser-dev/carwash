<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class UserAddress extends Model
{
    protected $fillable = [
        'latitude',
        'longitude',
        'title',
        'address_type',
        'area_id',
        'gaddah',
        'building',
        'floor',
        'apartment_number',
        'street',
        'extra_details',
        'user_id',
        'phone',
        'piece',
        'deleted'
    ];

    public function area() {
        return $this->belongsTo('App\Area', 'area_id');
    }

    public function area_with_select() {
        return $this->belongsTo('App\Area', 'area_id')->select('title_ar as title');
    }

    public function user() {
        return $this->belongsTo('App\User', 'user_id');
    }



}
