
	@extends('master')
    @section('conten')
	<meta charset="UTF-8">

 
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

 

    <link rel="stylesheet" type="text/css" href="public/source/css/profile.css">
   
	<title>Nga backend</title>
    <link rel="shortcut icon" href="https://static.unica.vn/icon/favicon.ico">

    <!-- Bootstrap CSS -->

    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="public/source/css/style.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">

	<div class="head" style="background-image:  url(https://unica.vn/media/img/bg-db.jpg);">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<p style="color: white;font-size: 40px; margin-left: 40px;">
						Học Viên: {{Auth::user()->name}}
					</p>
					
					<!-- menu-profile -->
                   		<nav class="navbart " role="navigation">
							 <div class="container-fluid">
							    <!-- Brand and toggle get grouped for better mobile display -->
							    <div class="navbar-header">
							      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
							        <span class="sr-only">Toggle navigation</span>
							        <span class="icon-bar"></span>
							        <span class="icon-bar"></span>
							        <span class="icon-bar"></span>
							      </button>
							      
							    </div>

							    <!-- Collect the nav links, forms, and other content for toggling -->
							    <div class="collapse navbar-collapse col md 4" id="bs-example-navbar-collapse-1">
							      <ul class="nav navbar-nav" >
							      <li style="padding-right: 10px;">
							        	<a style="padding-bottom: 5px;" href="{{route('trangcanhan')}}">
							        		<p>
							        			<i class="fa fa-user" aria-hidden="true" ></i>
							        			<span>
							        				Hồ sơ cá nhân
							        			</span>
							        		</p>	
							        	</a>
							        </li>
							        
							        
							        <li style="padding-right: 10px;">
							        	<a style="padding-bottom: 5px;" href="{{route('khoahoccuatoi')}}">
							        		<p>
							        			<i class="fa fa-book" aria-hidden="true"></i>
							        			<span>
							        				Khóa học của tôi
							        			</span>
							        		</p>	
							        	</a>
							        </li>

							      </ul>
							      
							      
							    </div><!-- /.navbar-collapse -->
							  </div><!-- /.container-fluid -->
							</nav>
						
    			    <!-- end-menu-profile -->
				</div>

			</div>

		</div>
	</div>
	<main>
	<form action="{{route('luuthongtincanhan')}}" enctype="multipart/form-data" method="post" class="">
		 @csrf
		<div class="container" style="padding-top: 20px;">
				<div >
					<div class="panel panel-default">

						<div class="panel-heading col-md-12">
							<span style="font-weight: bold;"><i class="fa fa-user"></i>Thông tin cá nhân</span>
							<a href="changepass.html" class="btn btn-warning margin-left pull-right "><i class="fa fa-lock"></i> Thay đổi mật khẩu</a>
						</div>
						  <div class="panel-body">
						  	<div class="row">
						  	
						  		<div class="col-md-6 col-sm-6">
						  			<div class="form-group " style="margin-bottom: 47px; ">
                        				<label style="margin-bottom: 10px;">Chọn ảnh đại diện</label>
                        					<br>
	                                    <img class="show_image" src="public/source/anh-dai-dien/{{Auth::user()->link_anh}}" style="width: 100px; height: 100px;">
		                                <div  class="absolute">
		                            		<div id="edit-avatar" role="button" class="GVb" style="-webkit-user-select: none;"></div>
		                            			<div class="form-group field-File">

													<img type="hidden" src="" name="anh_dai_dien"><input type="file" id="File" name="file">

													
												</div>                       			
										</div>
										 <p style="margin-top:10px;">(Ảnh vuông và &lt;500KB)</p>
									</div>

                                      
                                    <div class="form-group">
		                        		<label >Thành phố</label>
		                       			<div class="form-group field-muser-city">

											<select  class="form-control" name="ma_tinhthanh" style="padding-left: 0px;">
											@foreach($tinh_thanh as $new)
												@if(Auth::user()->ma_tinhthanh == $new->ma_tinhthanh)
													<option value="{{$new->ma_tinhthanh}}" selected="">{{$new->name}}</option>
												@else
													<option value="{{$new->ma_tinhthanh}}">{{$new->name}}</option>
												@endif
											@endforeach
											</select>
			
											
										</div>                    
									</div>
									<div class="form-group">
                        			<label>Địa chỉ</label>
                        				<div class="form-group field-muser-address">

											<input type="text"  class="form-control" name="dia_chi" value="{{Auth::user()->dia_chi}}" style="padding-left: 0;">

											
										</div>
										                    			
									</div>

						  		</div>
						  		<div class="col-md-6 col-sm-6">
						  			<div class="form-group">
							  			<label>Họ và tên</label>
							  			<div class="form-group field-muser-fullname ">

											<input type="text" class="form-control" name="name" value="{{Auth::user()->name}}">

										</div>
						  			</div>
						  			<div class="form-group">
							  			<label>Email</label>
							  			<div class="form-group field-muser-email ">

											<input disabled="disabled" type="email" class="form-control" name="" value="{{Auth::user()->email}}">

										</div>
						  			</div>
						  			<div class="form-group">
							  			<label>Số điện thoại</label>
							  			<div class="form-group field-muser-phone ">

											<input type="text" class="form-control" name="phone" value="{{Auth::user()->phone}}">

										</div>
						  			</div>
						  			<div class="form-group">
							  			<label>Ngày sinh</label>
							  			<div class="form-group field-muser-phone ">

											<input type="text" class="form-control" name="ngay_sinh" value="{{Auth::user()->ngay_sinh}}">

										</div>
						  			</div>
						  				 
								
														    
					</div>
					<div class="col-md-12 col-md-offset-5">
									<div class="form-group">
									<button class="btn btn-success" type="submit" style="margin-top: 30px; margin-left: 40px;"><i class="fa fa-save"></i> Lưu lại</button>
									</div>	
								</div>
					</div>

								
				</div>
			</div>
		</div>
	</form>
	</main>
	<!-- jQuery -->
    <script type="text/javascript" src="js/app.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js "></script>
    <!-- Bootstrap JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js "></script>								
    @endsection