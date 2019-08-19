<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class vietna, extends Model
{
    //
    protected $table = "vietnam";
    public function vietnam_user(){
    	return $this->hasMany('App\User','ma_tinhthanh','ma_tinhthanh');
    }
}
