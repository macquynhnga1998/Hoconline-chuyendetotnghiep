<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class giaovien extends Model
{
    //
    protected $table = "giaovien";
    public function gv_khoahoc(){
    	return $this->hasMany('App\khoahoc','ma_gv','ma_gv');
    }
}
