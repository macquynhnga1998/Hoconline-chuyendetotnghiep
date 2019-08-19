<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class loaikh extends Model
{
    //
    protected $table = "loaikh";
    public function lkh_khoahoc(){
    	return $this->hasMany('App\khoahoc','ma_loai','ma_loai');
    }
}
