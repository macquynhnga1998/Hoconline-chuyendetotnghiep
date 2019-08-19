<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class khoahocdadangki extends Model
{
    //
    protected $table = "khoahocdadangki";
    public function khddk_user()
    {
    	return $this->belongTo('App\User','email','id_khddk');
    }
     public function khddk_khoahoc(){
    	return $this->hasMany('App\khoahoc','ma_kh','ma_loai');
    }
}
