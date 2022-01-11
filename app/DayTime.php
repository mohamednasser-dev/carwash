<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class DayTime extends Model
{
    protected $guarded = [];
    protected $table = 'day_times';

    public function getTimeFromAttribute($time)
    {
        return date('g:i a', strtotime($time));;
    }
    public function getTimeToAttribute($time)
    {
        return date('g:i a', strtotime($time));;
    }
}
