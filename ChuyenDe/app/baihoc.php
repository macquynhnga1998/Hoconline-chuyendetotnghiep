<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class baihoc extends Model
{
    //
    protected $table = "baihoc";

    public function bh_khoahoc()
    {
    	return $this->belongTo('App\khoahoc','ma_kh','ma_bh');
    }
}
