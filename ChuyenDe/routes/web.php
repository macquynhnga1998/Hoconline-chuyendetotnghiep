<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/',[
	'as'=>'trang-chu',
	'uses'=>'pageController@getIndex']);


Route::get('trangcon/{ma_kh}',[
	'as'=>'trang-con',
	'uses'=>'pageController@getTrangcon']);

Route::get('trangchitiet/{ma_kh}/{ma_loai}',[
	'as'=>'trang-chi-tiet',
	'uses'=>'pageController@getTrangchitiet']);

Route::get('dangnhap',[
	'as'=>'login',
	'uses'=>'pageController@getLogin']);

Route::post('dang-nhap',[
	'as'=>'login1',
	'uses'=>'pageController@postLogin']);


Route::get('dangki',[
	'as'=>'dang-ki',
	'uses'=>'pageController@getDangki']);

Route::get('lol',function()
{
	return view('page.lol');
});

Route::get('dautrang/{ma_loai}',[
	'as'=>'header',
	'uses'=>'pageController@getTrangcon']);


Route::post('add-dang-ki',[
	'as'=>'sigin',
	'uses'=>'pageController@postAddUser'	
]);

Route::get('dang-xuat',[
	'as'=>'logout',
	'uses'=>'pageController@postLogout'
]);

Route::get('dang-ki-khoa-hoc/{ma_kh}',[
	'as'=>'dangkikhoahoc',
	'uses'=>'pageController@getDangkikhoahoc'
]);

Route::get('hoc-online/{ma_kh}',[
	'as'=>'hoconline',
	'uses'=>'pageController@getHoconline'
]);

Route::get('mo-bai-hoc/{ma_kh}/{link_bh}',[
	'as'=>'mobaihoc',
	'uses'=>'pageController@getMobaihoc'
]);


Route::get('mo-hoc-thu/{ma_kh}/{link_bh}',[
	'as'=>'mohocthu',
	'uses'=>'pageController@getHocthu'
]);

Route::get('mo-hoc-thux/{ma_kh}/{link_bh}',[
	'as'=>'mohocthux',
	'uses'=>'pageController@getMohocthu'
]);



Route::get('trang-ca-nhan',[
	'as'=>'trangcanhan',
	'uses'=>'pageController@getTrangcanhan'
]);



Route::get('khoa-hoc-cua-toi',[
	'as'=>'khoahoccuatoi',
	'uses'=>'pageController@getKhoahoccuatoi'
]);

Route::get('sua-thong-tin-ca-nhan',[
	'as'=>'suathongtincanhan',
	'uses'=>'pageController@getSuathongtincanhan'
]);



Route::post('luu-thong-tin-ca-nhan',[
	'as'=>'luuthongtincanhan',
	'uses'=>'pageController@postLuuthongtincanhan'
]);



Route::get('delete',[
	'as'=>'dele',
	'uses'=>'pageController@deletefile'
]);






/////////////////////////

Route::get('up-file',[
	'as'=>'upfile',
	'uses'=>'pageController@getUpfile'
]);

Route::post('up-file',[
	'as'=>'upfile',
	'uses'=>'pageController@postUpfile'
]);


/////////////////////////////////////////////////////////////////////////////////

Route::get('Admin',[
	'as'=>'admin',
	'uses'=>'pageController@getAdmin'
]);








Route::get('quan-ly-khoa-hoc',[
	'as'=>'quanlykhoahoc',
	'uses'=>'pageController@getQuanlykhoahoc'
]);

Route::get('quan-ly-giao-vien',[
	'as'=>'quanlygiaovien',
	'uses'=>'pageController@getQuanlygiaovien'
]);

Route::get('quan-ly-bai-hoc',[
	'as'=>'quanlybaihoc',
	'uses'=>'pageController@getQuanlybaihoc'
]);

Route::get('quan-ly-users',[
	'as'=>'quanlyusers',
	'uses'=>'pageController@getQuanlyusers'
]);


///////////////////////////////////////////////////////////////////
Route::get('tim-kiem',[
	'as'=>'timkiem',
	'uses'=>'pageController@getTimkiem'
]);

Route::get('tim-kiem-ql-kh',[
	'as'=>'timkiemqlkh',
	'uses'=>'pageController@getTimkiemqlkh'
]);

Route::get('tim-kiem-ql-gv',[
	'as'=>'timkiemqlgv',
	'uses'=>'pageController@getTimkiemqlgv'
]);

Route::get('tim-kiem-ql-bh',[
	'as'=>'timkiemqlbh',
	'uses'=>'pageController@getTimkiemqlbh'
]);

Route::get('tim-kiem-ql-users',[
	'as'=>'timkiemqlusers',
	'uses'=>'pageController@getTimkiemqlusers'
]);


////////////////////////////////////////

Route::get('update-giao-vien/{ma_gv}',[
	'as'=>'updategiaovien',
	'uses'=>'pageController@getUpdategiaovien'
]);

Route::post('update-giao-viens',[
	'as'=>'updategiaoviens',
	'uses'=>'pageController@postUpdategiaovien'
]);

Route::get('xoa-giao-vien/{ma_gv}',[
	'as'=>'xoagiaovien',
	'uses'=>'pageController@getXoagiaovien'
]);
///////////////////////////////////////////////////////////////
Route::get('update-khoa-hoc/{ma_kh}',[
	'as'=>'updatekhoahoc',
	'uses'=>'pageController@getUpdatekhoahoc'
]);

Route::post('update-khoa-hoc',[
	'as'=>'updatekhoahocs',
	'uses'=>'pageController@postUpdatekhoahoc'
]);

Route::get('xoa-khoa-hoc/{ma_kh}',[
	'as'=>'xoakhoahoc',
	'uses'=>'pageController@getXoakhoahoc'
]);

/////////////////////////////////////////////////////////////////
Route::get('update-bai-hoc/{ma_bh}/{ma_kh}',[
	'as'=>'updatebaihoc',
	'uses'=>'pageController@getUpdatebaihoc'
]);

Route::post('update-bai-hoc',[
	'as'=>'updatebaihocs',
	'uses'=>'pageController@postUpdatebaihoc'
]);

Route::get('xoa-bai-hoc/{ma_bh}',[
	'as'=>'xoabaihoc',
	'uses'=>'pageController@getXoabaihoc'
]);
///////////////////////////////////////////////////////////////////////

Route::get('cap-quyen/{id}',[
	'as'=>'capquyen',
	'uses'=>'pageController@getCapquyen'
]);

Route::post('update-cap-quyen',[
	'as'=>'updatecapquyen',
	'uses'=>'pageController@postUpdatecapquyen'
]);

Route::get('xoa-user/{id}',[
	'as'=>'xoauser',
	'uses'=>'pageController@getXoauser'
]);


/////////////////////////////////////////////////////////////////////
Route::get('doi-mat-khau',[
	'as'=>'doimatkhau',
	'uses'=>'pageController@getDoimatkhau'
]);

Route::post('doi-mat-khaus',[
	'as'=>'doimatkhaus',
	'uses'=>'pageController@postDoimatkhau'
]);