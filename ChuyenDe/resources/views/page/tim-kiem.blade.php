

    @extends('master')
    @section('conten')
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

  	
    <link rel="shortcut icon" href="https://static.unica.vn/icon/favicon.ico">
	
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" type="text/css" href="public/source/css/profile.css">
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
  
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
    <link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">



	<script type="text/javascript">
		function xacnhan(){
			var result = confirm('Bạn có chắc chắn muốn xóa');
		}
		
		
	</script>
	
					<!-- menu-profile -->
 		
		<div id="main-content">

		<br>
			<div class="container">
				<a href="{{route('trang-chu')}}" style="text-decoration: none; color: black;font-weight: bold;">Trang chủ</a><span> >> Tìm kiếm</span>
				<h2>Khóa học được tìm kiếm</h2>
				<div class="panel panel-default">
    				<div class="panel-heading">
    		 			

 					</div>
 					<div class="panel-body">
    				<div class="table-responsive"></div>
          			
					


	

										<p>Tìm thấy {{count($key)}} khóa học</p>
										
						                 <div class="row">

						                @foreach($key as $new)
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
						                                                                 {{number_format($new->gia_giam)}}
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











					</div>
				</div>
				</div>
			</div>
		</div>

	

	
	<!-- jQuery -->
    <script type="text/javascript" src="js/app.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js "></script>
    <!-- Bootstrap JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js "></script>								

	@endsection