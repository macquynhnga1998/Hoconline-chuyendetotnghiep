<?php

namespace App\Http\Controllers;
use App\khoahoc;
use App\giaovien;
use App\baihoc;
use App\loaikh;
use App\User;
use App\vietnam;
use App\khoahocdadangki;
use Hash;
use Session;
use Auth;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\DB;

class pageController extends Controller
{
     public function getIndex()
    {

        $new_khoahoc = DB::table('khoahoc')->join('giaovien', 'khoahoc.ma_gv', '=', 'giaovien.ma_gv')->paginate(8);
         
    	return view('page.trang-chu',compact('new_khoahoc'));

    }
     public function getTrangCon(Request $req)
    {

        $khoahoc_noibat = DB::table('khoahoc')
                ->join('giaovien', 'khoahoc.ma_gv', '=', 'giaovien.ma_gv')
                ->where('ma_loai',$req->ma_loai)
                ->Where('sosao','>=',4)
                ->orderBy('sosao', 'DESC')
                ->paginate(4);
        $khoahoc_theoloai = DB::table('khoahoc')
                ->join('giaovien', 'khoahoc.ma_gv', '=', 'giaovien.ma_gv')
                ->where('ma_loai',$req->ma_loai)
                ->orderBy('sosao', 'DESC')
                ->paginate(4);
        $loai_kh = DB::table('loaikh')
                ->where('ma_loai',$req->ma_loai)             
                ->get();


    	return view('page.trangcon',compact('khoahoc_theoloai','khoahoc_noibat','loai_kh'));
    }
    public function getTrangchitiet(Request $req){
        $khoahoc = khoahoc::where('ma_kh',$req->ma_kh)
                ->join('giaovien', 'khoahoc.ma_gv', '=', 'giaovien.ma_gv')
                ->where('ma_loai',$req->ma_loai)
                ->first();

        $baihoc =   baihoc::where('ma_kh',$req->ma_kh)->get();

        $khoahoc_lienquan = DB::table('khoahoc')
                ->join('giaovien', 'khoahoc.ma_gv', '=', 'giaovien.ma_gv')
                ->where('ma_loai',$req->ma_loai)
                ->paginate(4);
        $dem = 0;
        if(Auth::check())
        {
            $khoahocddk = khoahocdadangki::where('ma_kh',$req->ma_kh)
                        ->where('email',Auth::user()->email)
                        ->get();
            $dem = count($khoahocddk);
        }

    	return view('page.trang-chi-tiet',compact('khoahoc','baihoc','khoahoc_lienquan','dem'));
    }

    public function getLogin(){
        return view('page.dangnhap');
    }

    public function getDangki(){

        

        return view('page.dangky');
    }


    public function postAddUser(Request $req)
    {
        $this->validate($req,
            [
                'email'=>'required|email|unique:users,email',
                'password'=>'required|min:6|max:20',
                'name'=>'required',
                're_password'=>'required|same:password'
            ],
            [
                'email.required'=>'Vui lòng nhập email',
                'email.email'=>'Không đúng định dạng email',
                'email.unique'=>'Email đã có người sử dụng',
                'password.required'=>'Vui lòng nhập mật khẩu',
                're_password.same'=>'Mật khẩu không giống nhau',
                'password.min'=>'Mật khẩu tối thiểu 6 kí tự',
                'password.max'=>'Mật khẩu tối đa 20 kí tự'

            ]);

        $user = new User();
        $user->name = $req->name;
        $user->email = $req->email;
        $user->password = Hash::make($req->password);
        $user->phone = $req->phone;
        $user->save();
        return redirect()->back()->with('thanhcong','Tạo tài khoản thành công');
    }

    public function postLogin(Request $req)
    {
        $this->validate($req,
            [
                'email'=>'required|email',
                'password'=>'required|min:6|max:20'
            ],
            [
                'email.required'=>'Vui lòng nhập email',
                'email.email'=>'Vui lòng nhập đúng định dạng',
                'password.required'=>'Vui lòng nhập mật khẩu',
                'password.min'=>'Mật khẩu ít nhất 6 kí tự',
                'password.max'=>'Mật khẩu tối đa 20 kí tự'
            ]);
        $credentials = array('email'=>$req->email,'password'=>$req->password);
        if(Auth::attempt($credentials)){
            if(Auth::user()->quyen == 0)
            {
                 return redirect()->route('trang-chu')->with(['flag'=>'success','message'=>'Đăng nhập thành công']);
            }
            else
                return redirect()->route('admin');
           
        }
        else
        {
            return redirect()->back()->with(['flag'=>'danger','message'=>'Đăng nhập không thành công']);
        }
    }

    public function postLogout()
    {
        Auth::logout();
        return redirect()->route('trang-chu');
    }

    public function getDangkikhoahoc(Request $req)
    {
       
        if(Auth::check())
        {
            $dangkikh = new khoahocdadangki();
            $dangkikh->email = Auth::user()->email; 
            $dangkikh->ma_kh = $req->ma_kh;
            $dangkikh->save();
            return redirect()->back()->with(['flag'=>'success','message'=>'Đăng nhập thành công']);
        }
        else
            return redirect()->route('login');
        
    }



    public function getHoconline(Request $req)
    {
        if(Auth::check())
        {
            $dem = 0;
            $khoahocddk = khoahocdadangki::where('ma_kh',$req->ma_kh)
                        ->where('email',Auth::user()->email)
                        ->get();
             $dem = count($khoahocddk);
             if($dem == 1)
             {
                $baihoc =   baihoc::where('ma_kh',$req->ma_kh)
                    ->orderBy('link_bh', 'ASC')
                    ->get();
                $khoahoc = khoahoc::where('ma_kh',$req->ma_kh)
                    ->first();
                 if(count($baihoc) == 0)
                 {
                    $baihoc_dangchieu = 'chua-co-bai.mp4';
                 }  
                 else
                 {
                    $baihoc_dangchieu = $baihoc->first()->link_bh;
                 } 
                     
                return view('page.hoc-online',compact('baihoc','khoahoc','baihoc_dangchieu'));
             }
             else
                return redirect()->route('logout');
        }
        else
            return redirect()->route('login');
        
    }


    public function getMobaihoc(Request $req)
    {
        

        if(Auth::check())
        {


                    $dem = 0;
                    $khoahocddk = khoahocdadangki::where('ma_kh',$req->ma_kh)
                        ->where('email',Auth::user()->email)
                        ->get();
                    $dem = count($khoahocddk);
                    if($dem == 1)
                    {
                    $baihoc = baihoc::where('ma_kh',$req->ma_kh)
                        ->orderBy('link_bh', 'ASC')
                        ->get();
                    $khoahoc = khoahoc::where('ma_kh',$req->ma_kh)
                    ->first();
                    $baihoc_dangchieu = $req->link_bh;
                    return view('page.hoc-online',compact('baihoc','khoahoc','baihoc_dangchieu'));
               }
             else
                return redirect()->route('logout');
        }
        else
            return redirect()->route('login');
    }

    public function getHocthu(Request $req){

        $khoahoc = khoahoc::where('ma_kh',$req->ma_kh)
                ->first();
      
        $baihoc = baihoc::where('ma_kh', $req->ma_kh)
                ->get();
        $baihoc_dangchieu = $req->link_bh;

        return view('page.hoc-thu',compact('khoahoc','baihoc_dangchieu','baihoc'));
    }


    public function getMohocthu(Request $req)
    {
        
                                
                    $baihoc = baihoc::where('ma_kh',$req->ma_kh)
                        ->orderBy('link_bh', 'ASC')
                        ->get();
                    $khoahoc = khoahoc::where('ma_kh',$req->ma_kh)
                    ->first();
                    $baihoc_dangchieu = $req->link_bh;
                    return view('page.hoc-thu',compact('baihoc','khoahoc','baihoc_dangchieu'));
                   
    }

    public function getTrangcanhan(Request $req)
    {
        if(Auth::check())
        {
            $tinh_thanh = DB::table('vietnam')
                ->where('ma_tinhthanh',Auth::user()->ma_tinhthanh)
                ->first();
            return view('page.profile',compact('tinh_thanh'));
        }
        else
            return redirect()->route('trang-chu');
    }


    public function getKhoahoccuatoi()
    {
        $khoahoc = DB::table('khoahocdadangki')
                ->join('khoahoc', 'khoahoc.ma_kh', '=', 'khoahocdadangki.ma_kh')
                ->join('giaovien', 'khoahoc.ma_gv', '=', 'giaovien.ma_gv')
                ->where('email',Auth::user()->email)
                ->get();
        return view('page.khoa-hoc-cua-toi',compact('khoahoc'));
    }


    public function getSuathongtincanhan()
    {
        $tinh_thanh = DB::table('vietnam')
            ->orderBy('name', 'ASC')
            ->get();
        return view('page.sua-thong-tin-ca-nhan',compact('tinh_thanh'));
    }


    public function postLuuthongtincanhan(Request $req)
    {
        $thong_tin = User::find(Auth::user()->id);

        if($req->hasFile('file'))
        {
            

                $myFile = 'public/source/anh-dai-dien/'.Auth::user()->link_anh;
                File::delete($myFile);
                $file = $req->file;
              
                $file->move('public/source/anh-dai-dien',Auth::user()->id.".".$file->getClientOriginalName());
                $thong_tin->link_anh = Auth::user()->id.".".$file->getClientOriginalName();
            
        }

        
        $thong_tin->ma_tinhthanh = $req->ma_tinhthanh;
        $thong_tin->dia_chi = $req->dia_chi;
        $thong_tin->name = $req->name;
        $thong_tin->phone = $req->phone;
        $thong_tin->ngay_sinh = $req->ngay_sinh;
        $thong_tin->save();
        return redirect()->route('trangcanhan')->with(['flag'=>'success','thanhcong'=>'Lưu thông tin thành công']);
    }





    public function getUpfile()
    {
        return view('page.test-upfile');
    }

    public function postUpfile(Request $req)
    {
        if($req->hasFile('file'))
        {
           echo $req->file->getClientOriginalExtension().".";
        }
        
       
           
    }



    public function deletefile()
    {
        $myFile = 'public/source/anh-dai-dien/lol.mp4';
        File::delete($myFile);
    }





    public function getAdmin()
    {
        if(Auth::check() && Auth::user()->quyen > 0)
            return view('page.admin');
        else
            return redirect()->route('trang-chu');
    }

    public function getQuanlykhoahoc()
    {
        if(Auth::check() && Auth::user()->quyen > 0)
            {
                 $key = DB::table('khoahoc')
                    ->join('giaovien', 'khoahoc.ma_gv', '=', 'giaovien.ma_gv')
                    ->get();
                return view('page.quan-ly-khoa-hoc',compact('key'));
            }
           
        else
            return redirect()->route('trang-chu');
    }


    public function getQuanlygiaovien()
    {
        if(Auth::check() && Auth::user()->quyen > 0)
            {
                 $key = DB::table('giaovien')                    
                    ->get();
                return view('page.quan-ly-giao-vien',compact('key'));
            }
           
        else
            return redirect()->route('trang-chu');
    }





    public function getQuanlybaihoc()
    {
        if(Auth::check() && Auth::user()->quyen  > 0)
            {
                
                $key = DB::table('baihoc')
                    ->paginate(8);
                return view('page.quan-ly-bai-hoc',compact('key'));
            }
           
        else
            return redirect()->route('trang-chu');
    }



    public function getQuanlyusers()
    {
        if(Auth::check() && Auth::user()->quyen  == 3)
            {
                
                $key = DB::table('users')
                    ->where('quyen','<',3)
                    ->paginate(8);
                return view('page.quan-ly-users',compact('key'));
            }
        elseif(Auth::check() && Auth::user()->quyen  > 0 && Auth::user()->quyen  < 3)
            {
                
                $key = DB::table('users')
                    ->where('quyen','<',1)
                    ->paginate(8);
                return view('page.quan-ly-users',compact('key'));
            }
           
        else
            return redirect()->route('trang-chu');
    }

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////











    public function getTimkiem(Request $req)
    {
        $key = DB::table('khoahoc')
            ->join('giaovien', 'khoahoc.ma_gv', '=', 'giaovien.ma_gv')
            ->where('ten_kh','like','%'.$req->key.'%')
            ->orWhere('gia_ban','like','%'.$req->key.'%')
            ->orWhere('ten_gv','like','%'.$req->key.'%')
            ->get();

         return view('page.tim-kiem',compact('key'));

    }


    public function getTimkiemqlkh(Request $req)
    {
        $key = DB::table('khoahoc')
            ->join('giaovien', 'khoahoc.ma_gv', '=', 'giaovien.ma_gv')
            ->where('ten_kh','like','%'.$req->key.'%')
            ->orWhere('gia_ban','like','%'.$req->key.'%')
            ->orWhere('ten_gv','like','%'.$req->key.'%')
            ->get();

         return view('page.quan-ly-khoa-hoc',compact('key'));
    }

    public function getTimkiemqlgv(Request $req)
    {
        $key = DB::table('khoahoc')
            ->join('giaovien', 'khoahoc.ma_gv', '=', 'giaovien.ma_gv')
            ->where('ten_kh','like','%'.$req->key.'%')
            ->orWhere('gia_ban','like','%'.$req->key.'%')
            ->orWhere('ten_gv','like','%'.$req->key.'%')
            ->get();

         return view('page.quan-ly-giao-vien',compact('key'));
    }


    public function getTimkiemqlbh(Request $req)
    {
        $key = DB::table('khoahoc')
            ->join('giaovien', 'khoahoc.ma_gv', '=', 'giaovien.ma_gv')
            ->join('baihoc', 'khoahoc.ma_kh', '=', 'baihoc.ma_kh')
            ->where('ten_kh','like','%'.$req->key.'%')
            ->orWhere('ten_gv','like','%'.$req->key.'%')
            ->orWhere('ten_bh','like','%'.$req->key.'%')
            ->paginate(8);

         return view('page.quan-ly-bai-hoc',compact('key'));
    }

     public function getTimkiemqlusers(Request $req)
    {
        if(Auth::check() && Auth::user()->quyen  == 3)
            {
                
                $key = User::Where('quyen','<',3)
                    ->where('name','like','%'.$req->key.'%')
                    ->paginate(8);
                return view('page.quan-ly-users',compact('key'));
            }
        elseif(Auth::check() && Auth::user()->quyen  > 0 && Auth::user()->quyen  < 3)
            {
                
                $key = User::Where('quyen','<',1)
                    ->where('name','like','%'.$req->key.'%')
                    ->paginate(8);
                return view('page.quan-ly-users',compact('key'));
            }
           
        else
            return redirect()->route('trang-chu');
    }




///////////////////////////////////////////////// them sua xoa

    public function getUpdategiaovien(Request $req)
    {

        if($req->ma_gv == -1)
        {
            $giao_vien = new giaovien();
            $giao_vien->ma_gv = -1;
            $giao_vien->ten_gv = '';
            $giao_vien->anh_gv = '';
            return view('page.them-sua-xoa.update-giao-vien',compact('giao_vien'));
        }
            
        else
        {
            $giao_vien = DB::table('giaovien')
                    ->where('ma_gv',$req->ma_gv)
                    ->first();
        
        return view('page.them-sua-xoa.update-giao-vien',compact('giao_vien'));
        }
        
    }



    public function postUpdategiaovien(Request $req)
    {


        if($req->hasFile('file'))
        {
                
                $myFile = 'public/source/anh-giao-vien/'.$req->anh_gv;
                File::delete($myFile);
                $file = $req->file;
                
                $file->move('public/source/anh-giao-vien',$file->getClientOriginalName());
                 
                DB::table('giaovien')
                        ->where('ma_gv', $req->ma_gv)
                        ->update(['anh_gv'=>$file->getClientOriginalName()]);
        }

        if($req->ma_gv == -1)
        {
            $giaovien = new giaovien();
            $giaovien->ten_gv = $req->name;
            $giaovien->mota_gv = $req->mota_gv;
            if($req->hasFile('file'))
                $giaovien->anh_gv = $file->getClientOriginalName();
            else
                $giaovien->anh_gv = '';
            $giaovien->save();
            return redirect()->back()->with(['flag'=>'success','thanhcong'=>'Thêm giáo viên thành công']);

        }
        else
        {
            DB::table('giaovien')
                ->where('ma_gv', $req->ma_gv)
                ->update(['ten_gv'=>$req->name, 'mota_gv'=>$req->mota_gv]);
            return redirect()->back()->with(['flag'=>'success','thanhcong'=>'Update giáo viên thành công']);
        }
    }

    public function getXoagiaovien(Request $req)
    {
        if(Auth::check() && Auth::user()->quyen > 0)
        {

            

            $giaovienx  = DB::table('giaovien')
                ->where('ma_gv',$req->ma_gv)
                ->first();
            $khoahoc = khoahoc::where('ma_gv',$giaovienx->ma_gv)
                ->get();


            foreach ($khoahoc as $new_khoahoc) {

                    $khoahocdadangki = khoahocdadangki::where('ma_kh',$new_khoahoc->ma_kh)
                        ->delete();

                    $baihocx = baihoc::where('ma_kh',$new_khoahoc->ma_kh)
                        ->get();
                        foreach ($baihocx as $new_baihoc) {
                            $Filebh = 'public/source/video/'.$new_baihoc->link_bh;
                            File::delete($Filebh);
                        }
                   
                    $baihoc = baihoc::where('ma_kh',$new_khoahoc->ma_kh)
                        ->delete();


                    $Filekh = 'public/source/video-gt/'.$new_khoahoc->link_gt;
                    File::delete($Filekh);
                    $File_anh_kh = 'public/source/anh-khoa-hoc/'.$new_khoahoc->anh_kh;
                    File::delete($File_anh_kh);
                    
                    $khoahoc = khoahoc::where('ma_kh',$new_khoahoc->ma_kh)
                        ->delete();
                    
            }

            $giaovien = giaovien::where('ma_gv',$req->ma_gv)
                    ->delete();

            $myFile = 'public/source/anh-giao-vien/'.$giaovienx->anh_gv;
            File::delete($myFile);
            return redirect()->back()->with(['flag'=>'success','thanhcong'=>'Xóa giáo viên thành công']);

        }
        else
            return redirect()->route('trang-chu');
    }



    ///////////////////////////////////////////////////////////////////////////////////////////
    public function getUpdatekhoahoc(Request $req)
    {
        $giao_vien = DB::table('giaovien')
            ->get();
        $loai_kh = DB::table('loaikh')
            ->get();

        if($req->ma_kh == -1)
        {
            $khoa_hoc = new khoahoc();
            $khoa_hoc->ma_kh = -1;
            $khoa_hoc->ten_kh = '';
            $khoa_hoc->mo_ta = '';
            $khoa_hoc->gioi_thieu = '';
            $khoa_hoc->uudiem = '';
            $khoa_hoc->anh_kh = '';
            $khoa_hoc->thoi_luong = '';
            $khoa_hoc->link_gt = '';
            $khoa_hoc->sosao = '';
            $khoa_hoc->gia_ban = '';
            $khoa_hoc->gia_giam = '';
            $khoa_hoc->phan_tram = '';
            $khoa_hoc->ma_loai = '';

            return view('page.them-sua-xoa.update-khoa-hoc',compact('khoa_hoc','giao_vien','loai_kh'));
        }
            
        else
        {
            $khoa_hoc = DB::table('khoahoc')
                    ->where('ma_kh',$req->ma_kh)
                    ->first();
        
        return view('page.them-sua-xoa.update-khoa-hoc',compact('khoa_hoc','giao_vien','loai_kh'));
        }
        
    }



    public function postUpdatekhoahoc(Request $req)
    {


        if($req->hasFile('file_akh'))
        {
                
                $file_akhx = 'public/source/anh-khoa-hoc/'.$req->anh_kh;
                File::delete($file_akhx);
                $file_akh = $req->file_akh;
                
                $file_akh->move('public/source/anh-khoa-hoc',$file_akh->getClientOriginalName());
                 
                DB::table('khoahoc')
                        ->where('ma_kh', $req->ma_kh)
                        ->update(['anh_kh'=>$file_akh->getClientOriginalName()]);
        }
        if($req->hasFile('file_video_gt'))
        {
                
                $file_video_gtx = 'public/source/video-gt/'.$req->link_gt;
                File::delete($file_video_gtx);
                $file_video_gt = $req->file_video_gt;
                
                $file_video_gt->move('public/source/video-gt',$file_video_gt->getClientOriginalName());
                 
                DB::table('khoahoc')
                        ->where('ma_kh', $req->ma_kh)
                        ->update(['link_gt'=>$file_video_gt->getClientOriginalName()]);
        }

        if($req->ma_kh == -1)
        {
            $khoa_hoc = new khoahoc();
            $khoa_hoc->ten_kh = $req->ten_kh;
            $khoa_hoc->mo_ta = $req->mo_ta;
            $khoa_hoc->gioi_thieu = $req->gioi_thieu;
            $khoa_hoc->uudiem = $req->uudiem;            
            $khoa_hoc->thoi_luong = $req->thoi_luong;            
            $khoa_hoc->sosao = $req->sosao;
            $khoa_hoc->gia_ban = $req->gia_ban;
            $khoa_hoc->gia_giam = $req->gia_giam;
            $khoa_hoc->phan_tram = $req->phan_tram;
            $khoa_hoc->ma_loai = $req->ma_loai;
            $khoa_hoc->ma_gv = $req->ma_gv;
            if($req->hasFile('file_akh'))
                $khoa_hoc->anh_kh = $file_akh->getClientOriginalName();
            else
                $khoa_hoc->anh_kh = '';
            if($req->hasFile('file_video_gt'))
                $khoa_hoc->link_gt = $file_video_gt->getClientOriginalName();
            else
                $khoa_hoc->link_gt = '';
                $khoa_hoc->save();
            return redirect()->back()->with(['flag'=>'success','thanhcong'=>'Thêm khóa học thành công']);

        }
        else
        {
            DB::table('khoahoc')
                ->where('ma_gv', $req->ma_gv)
                ->update(['ten_kh'=>$req->ten_kh, 'mo_ta'=>$req->mo_ta, 'gioi_thieu'=>$req->gioi_thieu, 'uudiem'=>$req->uudiem, 'thoi_luong'=>$req->thoi_luong, 'sosao'=>$req->sosao, 'gia_ban'=>$req->gia_ban, 'gia_giam'=>$req->gia_giam, 'phan_tram'=>$req->phan_tram, 'ma_loai'=>$req->ma_loai, 'ma_gv'=>$req->ma_gv]);
            return redirect()->back()->with(['flag'=>'success','thanhcong'=>'Update khóa học thành công']);
        }
    }


    public function getXoakhoahoc(Request $req)
    {
        if(Auth::check() && Auth::user()->quyen > 0)
        {

                    $khoahocx = khoahoc::where('ma_kh',$req->ma_kh)
                            ->first();

                    

                    $khoahocdadangki = khoahocdadangki::where('ma_kh',$req->ma_kh)
                        ->delete();

                    $baihocx = baihoc::where('ma_kh',$req->ma_kh)
                        ->get();
                        foreach ($baihocx as $new_baihoc) {
                            $file_bh = 'public/source/video/'.$new_baihoc->link_bh;
                            File::delete($file_bh);
                        }
                   
                    $baihoc = baihoc::where('ma_kh',$req->ma_kh)
                        ->delete();

                    

                    $file_link_gt = 'public/source/video-gt/'.$khoahocx->link_gt;
                    File::delete($file_link_gt);
                    $file_anh_kh = 'public/source/anh-khoa-hoc/'.$khoahocx->anh_kh;
                    File::delete($file_anh_kh);
                    $khoahoc = khoahoc::where('ma_kh',$req->ma_kh)
                        ->delete();
            
            return redirect()->back()->with(['flag'=>'success','thanhcong'=>'Xóa khóa học thành công']);

        }
        else
            return redirect()->route('trang-chu');
    }



    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


    public function getUpdatebaihoc(Request $req)
    {
       
       $khoa_hoc = DB::table('khoahoc')
            ->get();

        if($req->ma_bh == -1)
        {
            $bai_hoc = new baihoc();
            $bai_hoc->ma_bh = -1;
            $bai_hoc->ten_bh = '';
            $bai_hoc->link_bh = '';
            $bai_hoc->ma_kh = '';
            $bai_hoc->thoi_luong = '';
            $bai_hoc->hoc_thu = 0;
            if($req->ma_kh != -1)
            {
                $bai_hoc->ma_kh = $req->ma_kh;
            }
            else
                $bai_hoc->ma_kh = -1;

            return view('page.them-sua-xoa.update-bai-hoc',compact('bai_hoc','khoa_hoc'));
        }
            
        else
        {
            $bai_hoc = DB::table('baihoc')
                    ->where('ma_bh',$req->ma_bh)
                    ->first();
        
        return view('page.them-sua-xoa.update-bai-hoc',compact('bai_hoc','khoa_hoc'));
        }
        
    }




        public function postUpdatebaihoc(Request $req)
    {


        if($req->hasFile('file_video'))
        {
                
                $file_videox = 'public/source/video/'.$req->anh_kh;
                File::delete($file_videox);
                $file_video = $req->file_video;
                
                $file_video->move('public/source/video',$file_video->getClientOriginalName());
                 
                DB::table('baihoc')
                        ->where('ma_bh', $req->ma_bh)
                        ->update(['link_bh'=>$file_video->getClientOriginalName()]);
        }
       

        if($req->ma_bh == -1)
        {

            $bai_hoc = new baihoc();


            $bai_hoc->ten_bh = $req->ten_bh;
            $bai_hoc->thoi_luong = $req->thoi_luong;
            $bai_hoc->ma_kh = $req->ma_kh;
            $bai_hoc->hoc_thu = (int)$req->hoc_thu;
            if($req->hasFile('file_video'))
                $bai_hoc->link_bh = $file_video->getClientOriginalName();
            else
                $bai_hoc->link_bh = '';
           
                $bai_hoc->save();
            return redirect()->back()->with(['flag'=>'success','thanhcong'=>'Thêm bài học thành công']);

        }
        else
        {
            DB::table('baihoc')
                ->where('ma_bh', $req->ma_bh)
                ->update(['ten_bh'=>$req->ten_bh, 'thoi_luong'=>$req->thoi_luong, 'ma_kh'=>$req->ma_kh, 'hoc_thu'=>(int)$req->hoc_thu]);
            return redirect()->back()->with(['flag'=>'success','thanhcong'=>'Update bài học thành công']);
        }
    }


     public function getXoabaihoc(Request $req)
    {
        if(Auth::check() && Auth::user()->quyen > 0)
        {

                    
                 

                    $baihocx = baihoc::where('ma_bh',$req->ma_bh)
                        ->first();
                        
                   
                    

                    

                    $file_video = 'public/source/video/'.$baihocx->link_bh;
                    File::delete($file_video);
                    
                   $baihoc = baihoc::where('ma_bh',$req->ma_bh)
                        ->delete();
            
            return redirect()->back()->with(['flag'=>'success','thanhcong'=>'Xóa bài học thành công']);

        }
        else
            return redirect()->route('trang-chu');
    }


    ////////////////////////////////////////////////////////////////////////////




    public function getCapquyen(Request $req)
    {
       if(Auth::check() && Auth::user()->quyen  == 3)
            {
                
                $user = User::where('id',$req->id)
                    ->first();
                
                return view('page.them-sua-xoa.cap-quyen',compact('user'));
            }
            else
                return redirect()->route('trang-chu');

        
        
    }



        public function postUpdatecapquyen(Request $req)
    {
 
            ;

            if(Auth::check() && Auth::user()->quyen  == 3)
            {
                
                DB::table('users')
                ->where('id', $req->id)
                ->update(['quyen'=>(int)$req->quyen]);
                return redirect()->back()->with(['flag'=>'success','thanhcong'=>'Update quyền người dùng thành công']);
            }
            else
                return redirect()->route('trang-chu');
        
    }



     public function getXoauser(Request $req)
    {
        if(Auth::check() && Auth::user()->quyen > 0)
        {

                    
                 

                    $userx = User::where('id',$req->id)
                        ->first();
                        
                     
                    $khoahocdadangki = khoahocdadangki::where('email',$userx->email)
                        ->delete();
                    

                    

                    $file = 'public/source/anh-dai-dien/'.$userx->link_anh;
                    File::delete($file);
                    
             


                   $user = User::where('id',$req->id)
                        ->delete();
            
            return redirect()->back()->with(['flag'=>'success','thanhcong'=>'Xóa người dùng thành công']);

        }
        else
            return redirect()->route('trang-chu');
    }



    /////////////////////////////////////////////////////////////////////////////////////////////////////////doi mk

    public function getDoimatkhau()
    {
        return view('page.them-sua-xoa.doi-mat-khau');
    }


    public function postDoimatkhau(Request $req)
    {
        if(Auth::check())
        {
            $this->validate($req,
                [
                    'password_old'=>'required',
                    'password'=>'required|min:6|max:20',
                    're_password'=>'required|same:password'
                ],
                [
                    'password_old.required'=>'Vui lòng nhập mật khẩu',
                    'password.required'=>'Vui lòng nhập mật khẩu',
                    're_password.same'=>'Mật khẩu không giống nhau',
                    'password.min'=>'Mật khẩu tối thiểu 6 kí tự',
                    'password.max'=>'Mật khẩu tối đa 20 kí tự'

                ]);

            if(Hash::check($req->password, Auth::user()->password))
            {
                 return redirect()->back()->with(['flag'=>'success','thanhcong'=>'Mật khẩu cũ không đúng']);
            }
            else
            {
                DB::table('users')
                ->where('id', Auth::user()->id)
                ->update(['password'=>Hash::make($req->password)]);
                return redirect()->back()->with(['flag'=>'success','thanhcong'=>'Thay đổi mật khẩu thành công']);
            }         
        }
        else
            return redirect()->route('trang-chu');
    }



}




