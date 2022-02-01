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
        if(session('lang')){
            $lang = session('lang');
        }else{
            $lang = app()->getLocale() ;
        }
        return $this->belongsTo('App\Plan', 'plan_id')->select('id','title_'.$lang.' as title','price');
    }
    public function Web_Plan()
    {
        return $this->belongsTo('App\Plan', 'plan_id');
    }

    public function Category()
    {
        if(session('lang')){
            $lang = session('lang');
        }else{
            $lang = app()->getLocale() ;
        }
        return $this->belongsTo('App\Category', 'category_id')->select('id','title_'.$lang.' as title');
    }

    public function SubCategory()
    {
        if(session('lang')){
            $lang = session('lang');
        }else{
            $lang = app()->getLocale() ;
        }
        return $this->belongsTo('App\SubCategory', 'sub_category_id')->select('id','title_'.$lang.' as title');
    }
}
