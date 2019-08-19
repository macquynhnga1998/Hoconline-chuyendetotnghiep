
    @extends('master')
    @section('conten')
    <meta charset="UTF-8">

 
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

 

    <link rel="stylesheet" type="text/css" href="public/source/css/profile.css">
   
	
    <link rel="shortcut icon" href="https://static.unica.vn/icon/favicon.ico">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

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
							        	<a style="padding-bottom: 5px; color: black;background-color: white;" >
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
							        				Khóa học của bạn
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
		<div class="container" style="padding-top: 20px;">
			 	
				<div>
					@if(Session::has('thanhcong'))
                  <div style="text-align: center;" class="alert alert-success">{{Session::get('thanhcong')}}</div>
                @endif
					<div class="panel panel-default">

						<div class="panel-heading col-md-12">
							<span style="font-weight: bold;"><i class="fa fa-user"></i>Thông tin cá nhân</span>
							<a href="{{route('doimatkhau')}}" class="btn btn-warning margin-left pull-right "><i class="fa fa-lock"></i> Thay đổi mật khẩu</a>
						</div>
						  <div class="panel-body">
						  	<div class="row">
						  	
						  		<div class="col-md-6 col-sm-6">
						  			<div class="form-group " style="margin-bottom: 47px; ">
                        				
                        					<br>
	                                    <img class="show_image" src="public/source/anh-dai-dien/{{Auth::user()->link_anh}}" style="width: 100px; height: 100px;">
		                                <div  class="absolute">
		                            		<div id="edit-avatar" role="button" class="GVb" style="-webkit-user-select: none;"></div>
		                            			                     			
										</div>
										 
									</div>

                                      
                                    <div class="form-group">
		                        		<label >Thành phố</label>
		                       			<div class="form-group field-muser-city">
											<p class="profile">{{$tinh_thanh->name}}</p>
										</div>                    
									</div>
									<div class="form-group">
                        			<label>Địa chỉ</label>
                        				<div class="form-group field-muser-address">

											<p class="profile">{{Auth::user()->dia_chi}}</p>

											
										</div>
										                    			
									</div>

						  		</div>
						  		<div class="col-md-6 col-sm-6">
						  			<div class="form-group">
							  			<label>Họ và tên</label>
							  			<div class="form-group field-muser-fullname ">

											<p class="profile">{{Auth::user()->name}}</p>

										</div>
						  			</div>
						  			<div class="form-group">
							  			<label>Email</label>
							  			<div class="form-group field-muser-email ">

											<p class="profile">{{Auth::user()->email}}</p>

										</div>
						  			</div>
						  			<div class="form-group">
							  			<label>Số điện thoại</label>
							  			<div class="form-group field-muser-phone ">

											<p class="profile">{{Auth::user()->phone}}</p>

										</div>
						  			</div>
						  			<div class="form-group">
							  			<label>Ngày sinh</label>
							  			<div class="form-group field-muser-phone ">

											<p class="profile">{{Auth::user()->ngay_sinh}}</p>

										</div>
						  			</div>
						  			<div class="form-group">
							  			<label>Giới tính</label>
							  			<div class="form-group field-muser-phone ">

											<p class="profile">{{Auth::user()->gioi_tinh}}</p>

										</div>
						  			</div>		 
								
														    
					</div>
					<div class="col-md-12 col-md-offset-5">
									<div class="form-group">
									<a href="{{route('suathongtincanhan')}}" class="btn btn-success" style="margin-top: 30px; margin-left: 40px;"><i class="fa fa-save"></i> Sửa thông tin cá nhân</a>
									</div>	
								</div>
					</div>

								
				</div>
			</div>
		</div>
	</main>
	<!-- jQuery -->
    <script type="text/javascript" src="js/app.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js "></script>
    <!-- Bootstrap JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js "></script>								
    @endsection
