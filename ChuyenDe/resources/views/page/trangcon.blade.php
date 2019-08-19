 @extends('master')
@section('conten')

			  <!--menu-->


<div class="container" style = "padding:15px 0">
  <div class="row content">
    <div class="col-sm-2 sidenav hidden-xs" style = "border:1px solid #d7d7d7; margin-top:30px">
      <h3 style = "border-bottom:1px solid #d7d7d7;padding-bottom:13px" align = "center">Danh Mục</h3>
      <ul class="nav nav-pills nav-stacked" style="display: none;">
        <li><a href="#section1">Ngoại ngữ</a></li>
        <li><a href="#section2">Tin học</a></li>
        <li><a href="#section3">Marketing</a></li>
        <li><a href="#section3">Thiết kế</a></li>
		<li><a href="#section3">Kinh doanh</a></li>
		<li><a href="#section3">Nghệ thuật</a></li>
		<li><a href="#section3">Nhiếp ảnh</a></li>
		<li><a href="#section3">Sức khỏe</a></li>
      </ul><br>
    </div>
    <br>
    <!--end menu-->
	
	<!--row 1-->
    <div class="col-sm-9" style = "width: 83%">
      <div>
        <h3>Khóa học nổi bật</p>
      </div>
        
        <h4>Tìm thấy {{count($khoahoc_noibat)}} khóa học</h4>
      <div class="row">

        @foreach($khoahoc_noibat as $new)

        @if($new->sosao >= 4 )
        <a href="{{route('trang-chi-tiet',[$new->ma_kh,$new->ma_loai])}}" style="text-decoration: none">
                <div  class="col-xs-12 col-sm-4 col-md-3" style="margin-bottom: 20px;" >
                        <div style="border-radius: 10px;height: 269px;background-color: white;">
                            <img style="width: 100%;    border-radius: 10px 10px 0 0;height: 108.5px; " src="public/source/anh-khoa-hoc/{{$new->anh_kh}}">
                            </a>
                            <div style="padding-left: 10px;" >
                                 <h3 class="title-course" style="font-size:15px;font-weight: 600;overflow: hidden;margin-top: 8px;overflow: hidden;white-space: nowrap; text-overflow: ellipsis; width: 100%;">
                                    <span>
                                        {{$new->ten_kh}}
                                    </span>
                                </h3>
                                <div style="font-size: 12px; color: #555;  min-height: 18px;">
                                    <b>
                                         {{$new->ten_gv}}
                                         
                                    </b>
                                </div>
                           <span class="star-rate" style="   color: #f26c4f;">
                               
                                    @for ($x = 0; $x < $new->sosao; $x++) 
                                        <i class="fa fa-star co-or" aria-hidden="true"></i>
                                    @endfor
                                
                                                                                    
                                 </span>
                                <div style="margin: 0 7px;padding-top: 35px;">
                                                    @if($new->gia_giam == 0)
                                                        

                                                            <span style="font-size: 18px; font-weight: bold; float: right;">
                                                                 {{number_format($new->gia_ban)}}
                                                            <sup>
                                                                đ
                                                            </sup> 

                                                        
                                                    @else
                                                    

                                                        <span style="font-size: 18px; font-weight: bold; float: right;">
                                                                 {{number_format($new->gia_fiam)}}
                                                            <sup>
                                                                đ
                                                            </sup> 
                                                        </span>
                                                         <span style="text-decoration: line-through;float: right;margin: 5px;color: #888;">
                                                         {{number_format($new->gia_ban)}}                                                   
                                                        <sup>
                                                            đ
                                                        </sup>
                                                    </span>

                                                    @endif
                                                     
                                                    
                                </div>
                            </div>
                        </div>
                        
                        
                    </div>
        @endif
        @endforeach
      </div>
	  <!--end row1-->
	  <div class="row container">{{$khoahoc_noibat->links()}}</div>
	  <!--row2-->
      <div>
        
        <h4></h4>
        <h3>Tất cả [{{count($khoahoc_theoloai)}} khóa học]</h3>
        
        <div class="row">

        @foreach($khoahoc_theoloai as $new)

       
        <a href="{{route('trang-chi-tiet',[$new->ma_kh,$new->ma_loai])}}" style="text-decoration: none">
                <div  class="col-xs-12 col-sm-4 col-md-3" style="margin-bottom: 20px;" >
                        <div style="border-radius: 10px;height: 269px;background-color: white;">
                            <img style="width: 100%;    border-radius: 10px 10px 0 0;height: 108.5px; " src="public/source/anh-khoa-hoc/{{$new->anh_kh}}">
                            </a>
                            <div style="padding-left: 10px;" >
                                 <h3 class="title-course" style="font-size:15px;font-weight: 600;overflow: hidden;margin-top: 8px;overflow: hidden;white-space: nowrap; text-overflow: ellipsis; width: 100%;">
                                    <span>
                                        {{$new->ten_kh}}
                                    </span>
                                </h3>
                                <div style="font-size: 12px; color: #555;  min-height: 18px;">
                                    <b>
                                         {{$new->ten_gv}}
                                         
                                    </b>
                                </div>
                           <span class="star-rate" style="   color: #f26c4f;">
                               
                                    @for ($x = 0; $x < $new->sosao; $x++) 
                                        <i class="fa fa-star co-or" aria-hidden="true"></i>
                                    @endfor
                                
                                                                                    
                                 </span>
                                <div style="margin: 0 7px;padding-top: 35px;">
                                                    @if($new->gia_giam == 0)
                                                        

                                                            <span style="font-size: 18px; font-weight: bold; float: right;">
                                                                 {{number_format($new->gia_ban)}}
                                                            <sup>
                                                                đ
                                                            </sup> 

                                                        
                                                    @else
                                                    

                                                        <span style="font-size: 18px; font-weight: bold; float: right;">
                                                                 {{number_format($new->gia_fiam)}}
                                                            <sup>
                                                                đ
                                                            </sup> 
                                                        </span>
                                                         <span style="text-decoration: line-through;float: right;margin: 5px;color: #888;">
                                                         {{number_format($new->gia_ban)}}                                                   
                                                        <sup>
                                                            đ
                                                        </sup>
                                                    </span>

                                                    @endif
                                                     
                                                    
                                </div>
                            </div>
                        </div>
                        
                        
                    </div>
  
        @endforeach
      </div>
      <div class="row col-md-12">{{$khoahoc_theoloai->links()}}</div>
	  <!--end row2-->
      </div>
    </div>
  </div>
</div>






  @endsection