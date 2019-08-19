

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
		function xacnhan1(){
			var result = confirm('Bạn có chắc chắn muốn xóa');
		}
		
		
	</script>
	
					<!-- menu-profile -->
 		
		<div id="main-content">

		<br>
			<div class="container">
				@if(Session::has('thanhcong'))
                  <div style="text-align: center;" class="alert alert-success container">{{Session::get('thanhcong')}}</div>
                @endif
				<h2>Quản lý bài học</h2>
				<form action="{{route('timkiemqlbh')}}" method="get">
                                <div class="input-group" style="margin-top: 10px;margin-bottom: 10px;">

                                    <input type="text" name="key" class="form-control" placeholder="Nhập từ khóa tìm kiếm ">
                                    <span class="input-group-btn">
                                    <button class="btn btn-default" type="submit"><i class="fas fa-search"></i></button>
                                    
                                </span>
                                </div>
                            </form>
                             <a href="{{route('updatebaihoc',[-1,-1])}}" class="btn btn-success" style="margin-bottom: 10px;">Thêm khóa học mới</a>
				<div class="panel panel-default">
    				<div class="panel-heading">
    		 			<span style="font-weight: bold;"> <i class="fa fa-history" aria-hidden="true"></i> Bài học</span>

 					</div>
 					<div class="panel-body">
    				<div class="table-responsive"></div>
          			
					


	

										<p>Tìm thấy {{count($key)}} Bài học</p>
										
						                 <div class="row">

						               
										<ul style="list-style: none; padding: none">
											@foreach($key as $new)
											<li style="border-bottom: 1px solid #808080; padding-top: 5px;padding-bottom: 5px">
												<div class="row">
													<div class="img col-md-2 col-xs-6 col-sm-6">
														<video style="width: 100%;" controls="" src="public/source/video/{{$new->link_bh}}"></video>
													</div>
													<div class="col-md-6 col-xs-6 col-sm-6">
														<p style="font-size: 12pt">{{$new->ten_bh}}</p>
													</div>
													<div class="col-md-4 col-xs-12 col-sm-12">
														<a href="{{route('updatebaihoc',[$new->ma_bh,-1])}}" class="btn btn-success">Sửa</a>
														<a href="{{route('xoabaihoc',$new->ma_bh)}}" title="BCDONLINE CONFIRM YES/NO" onclick="return xacnhan1()"  class="btn btn-danger">Xóa</a>
													</div>
												</div>
												
											</li>
											@endforeach
										</ul>

						                




									</div>
									<div class="row container">{{$key->links()}}</div>
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