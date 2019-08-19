<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class khoahoc extends Model
{
    //
    protected $table = "khoahoc";
    public function kh_loaikh()
    {
    	return $this->belongTo('App\loaikh','ma_loai','ma_kh');
    }
    public function kh_giaovien()
    {
    	return $this->belongTo('App\giaovien','ma_gv','ma_kh');
    }
    
    public function kh_khddk()
    {
    	return $this->belongTo('App\khoahocdadangki','ma_kh','ma_kh');
    }

    public function kh_baihoc(){
    	return $this->hasMany('App\baihoc','ma_kh','ma_kh');
    }

}
