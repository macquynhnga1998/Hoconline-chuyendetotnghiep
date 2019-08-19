


    @extends('master')
    @section('conten')
	    <!-- Required meta tags -->
	    <meta charset="utf-8">
	    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	    <!-- Bootstrap CSS -->
	     <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
	
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">

	<link rel="stylesheet" type="text/css" href="public/source/css/chi-tiets.css">
	<title>Chi tiết khóa học</title>	

	

		   <div class="top-dad container-fluid" style="font-family: inherit">
		   	
				<header class="container top " style="">
					<div class="tieude">
						<h1>{{$khoahoc->ten_kh}}</h1>
					</div>
					
					<div class="gioithieu col-md-6 col-sm-8">
						{{$khoahoc->mo_ta}}
					</div>
					<div class="danh-gia col-md-12 col-sm-12 col-xs-12" style="margin-top: 10px;padding-left: 0px;">
						
						<p>
							@for($i = 0; $i <  $khoahoc->sosao;$i++)
							<i class="fas fass fa-star"></i>
							@endfor

						</p>
					</div>
					<div class="anh-dai-dien col-md-12 col-sm-12 col-xs-12 ">
						
							<img src="public/source/anh-giao-vien/{{$khoahoc->anh_gv}}"  class="img-circle"><a href=""><span></span>{{$khoahoc->ten_gv}}</span></a>
				                   
			        </div>

				</header>
			</div>	

			<div class="container noidung" style="padding:5px;">
<!-- video gioi thieu -->			
				<div class="row" style="padding: 0;margin: 0">
					<div class="video-gioi-thieu col-md-8 col-12"  style="padding: 0;margin: 0;margin-bottom: 10px">
						<video width="100%" class="video-stream html5-main-video" controls="" controlslist="nodownload" autoplay>
							  <source src="public/source/video-gt/{{$khoahoc->link_gt}}" type="video/mp4" >
							
							Your browser does not support the video tag.
</video>
					</div>


<!-- div dang ki khoa hoc -->
					<div class="tai-khoa-hoc col-md-4 col-sm-12 col-xs-12" style=" padding: 0;margin: 0">
						@if($dem == 0)
							<div class="container box">
							<span style="font-weight: bold; font-size: 24pt">{{number_format($khoahoc->gia_ban)}}</span>
							<sup style="font-weight: bold; font-size: 18pt">đ</sup>
						
							<form action="{{route('dangkikhoahoc',$khoahoc->ma_kh)}}" method="get">			
						
							@csrf
												
								<button type="submit" class="btnx btn btn-danger">ĐĂNG KÍ</button>
							</form>
							<button type="button" class="btnx btn btn-giohang"> <i class="glyphicon glyphicon-shopping-cart"></i></button>
							<p><i class="far fa-clock"> </i>Thời lượng: <span>{{$khoahoc->thoi_luong}} phút</span></p>
							<p><i class="fa fa-play-circle"> </i>Giáo trình: <span>{{count($baihoc)}}</span></p>
							<p><i class="fa fa-history"></i>Sở hữu khóa học trọn đời</span></p>
							<p><i class="fa fa-percent" aria-hidden="true"></i>Giảm thêm <b>10%</b>khi thanh toán online</p>

						</div>
				
					
					</div>
					@else
					@if(Session::has('flag'))

										<script>
										function myFunction() {
										alert("Chúc mừng, bạn đã đăng kí thành công khóa học {{$khoahoc->ten_kh}}!");
												}
												myFunction();
										</script>	
				                	
				            @endif
						<div class="container box" style="text-align: center;">
							<span style="font-weight: bold; font-size: 24pt">Bạn đã sở hữu khóa học này</span>
							
										
						
			
						
								<a href="{{route('hoconline',$khoahoc->ma_kh)}}"><button type="submit" class="btnx btn btn-danger" style="margin-bottom:20px;margin-top:20px; ">HỌC NGAY</button></a>
							
							
						</div>

				
					
					</div>

					@endif


					
				</div>	
			</div>	

		<!-- het div dang ki khoa hoc -->
		
					
	<!-- noi dung gioi thieu cac thu -->		
				

			<div class="noidung container">

						
			
				

				<div class="gioi-thieu-khoa-hoc col-md-12 col-12">
					<h4 style="margin: 20px 0; border-bottom: 1px solid #d7d7d7">Bạn sẽ học được gì</h4>
					<p>
						{{$khoahoc->uudiem}}
					</p>
				</div>

				<div class="gioi-thieu-khoa-hoc col-md-12 col-12">
					<h4 style="margin: 20px 0; border-bottom: 1px solid #d7d7d7">Giới thiệu khóa học</h4>
					<p>
						{{$khoahoc->gioi_thieu}}
					</p>
				</div>

				<div class="gioi-thieu-khoa-hoc col-md-12 col-12">
					<h4 style="margin: 20px 0; border-bottom: 1px solid #d7d7d7">Thông tin giảng viên</h4>
					<div>
						<div class="avatar col-md-3 col-12" style="">
							<img style="width: 100%;border-radius: 50%" src="public/source/anh-giao-vien/{{$khoahoc->anh_gv}}">
						</div>
						<div class="thong-tin col-md-9 col-12" style="font-size: 13pt;line-height: 35px">{{$khoahoc->mota_gv}}</div>
					
					</div>
					

				</div>


				<div class="gioi-thieu-khoa-hoc noi-dung-khoa-hoc col-md-12 col-12">
					<h4 style="margin: 20px 0; border-bottom: 1px solid #d7d7d7">Nội dung khóa học</h4>
					
					<ul>
						 @foreach($baihoc as $news)
						<li>
							<i class="fa fa-play-circle"></i>{{$news->ten_bh}} 
						@if($news->hoc_thu == 1 && $dem == 0) 
						<a href="{{route('mohocthu',[$khoahoc->ma_kh,$news->link_bh])}}"><input type="button" style="float: right;margin-right: 20px" value="Học thử"></a>

						 @endif </li>
						 						

						@endforeach
					</ul>
				</div>



	
	<!-- goi y cac khoa hoc co lien quan -->
	
				
				




</div>
	
			<div class="container">
				<h2>Các khóa học có liên quan</h2>
				<p>Tìm thấy {{count($khoahoc_lienquan)}} khóa học</p>
				
                 <div class="row">

                @foreach($khoahoc_lienquan as $new)
                <a href="{{route('trang-chi-tiet',[$new->ma_kh,$new->ma_loai])}}" style="text-decoration: none">
                <div  class="col-xs-12 col-sm-4 col-md-3" style="margin-bottom: 20px;" >
                        <div style="border-radius: 10px;height: 269px;background-color: white;">
                            <img style="width: 100%;    border-radius: 10px 10px 0 0;height: 108.5px; " src="public/source/anh-khoa-hoc/{{$new->anh_kh}}">
                            </a>
                            <div style="padding-left: 10px;" >
                                 <h3 class="title-course" style="font-size:15px;font-weight: 600;margin-top: 8px;overflow: hidden;white-space: nowrap; text-overflow: ellipsis; width: 100%;}">
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
                        
                        <a href="{{route('trang-chi-tiet',[$new->ma_kh,$new->ma_loai])}}">Đăng kí khóa học</a>
                    </div>
              
              

                
              
                @endforeach
                   
            </div>
            <div class="row container">{{$khoahoc_lienquan->links()}}</div>
    
     		</div>


		



	    <!-- Optional JavaScript -->
	    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    @endsection
