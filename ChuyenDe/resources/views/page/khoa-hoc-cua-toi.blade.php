

    @extends('master')
    @section('conten')
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

  	
    <link rel="shortcut icon" href="https://static.unica.vn/icon/favicon.ico">
	
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" type="text/css" href="public/source/css/profile.css">
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
  
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
    <link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
</head>

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
							        			<i class="fa fa-user" aria-hidden="true"></i>
							        			<span>
							        				Hồ sơ cá nhân
							        			</span>
							        		</p>	
							        	</a>
							        </li>
							        <li style="padding-right: 10px;">
							        	<a style="padding-bottom: 5px; background-color: white; color: black">
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
														    
					</div>
				</div>

			</div>
		</div>
		<div id="main-content">
		<br>
			<div class="container">
				<div class="panel panel-default">
    				<div class="panel-heading">
    		 			<span style="font-weight: bold;"> <i class="fa fa-history" aria-hidden="true"></i> Khóa học của bạn</span>
 					</div>
 					<div class="panel-body">
    				<div class="table-responsive"></div>
          			






												
										<p>Tìm thấy {{count($khoahoc)}} khóa học</p>
										
						                 <div class="row">

						                @foreach($khoahoc as $new)
						                <a href="{{route('hoconline',$new->ma_kh)}}" style="text-decoration: none">
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