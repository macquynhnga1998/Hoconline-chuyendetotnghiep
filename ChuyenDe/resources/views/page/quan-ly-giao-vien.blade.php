

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
			return	confirm('Bạn có chắc chắn muốn xóa');
							
		}
		
		
	</script>

					<!-- menu-profile -->
 		
		<div id="main-content">
	
		<br>
			<div class="container">
				@if(Session::has('thanhcong'))
                  <div style="text-align: center;" class="alert alert-success container">{{Session::get('thanhcong')}}</div>
                @endif
				<h2>Quản lý giáo viên</h2>
				<form action="{{route('timkiemqlgv')}}" method="get">
                                <div class="input-group" style="margin-top: 10px;margin-bottom: 10px;">

                                    <input type="text" name="key" class="form-control" placeholder="Nhập từ khóa tìm kiếm ">
                                    <span class="input-group-btn">
                                    <button class="btn btn-default" type="submit"><i class="fas fa-search"></i></button>
                                    
                                </span>
                                </div>
                            </form>
                            <a href="{{route('updategiaovien',-1)}}" class="btn btn-success" style="margin-bottom: 10px;">Thêm giáo viên mới</a>
				<div class="panel panel-default">
    				<div class="panel-heading">
    		 			<span style="font-weight: bold;"> <i class="fa fa-history" aria-hidden="true"></i> Giáo viên</span>

 					</div>
 					<div class="panel-body">
    				<div class="table-responsive"></div>
          			
					


	

										<p>Tìm thấy {{count($key)}} giáo viên</p>
										
						                 <div class="row">

						                @foreach($key as $new)
						                <a style="text-decoration: none">
						                <div  class="col-xs-12 col-sm-4 col-md-3" style="margin-bottom: 20px" >
						                        <div style="border-radius: 10px;height: 269px;background-color: white;">
						                            <img class="img-rounded" style="width: 100%;    border-radius: 10px 10px 0 0;height: 220px; " src="public/source/anh-giao-vien/{{$new->anh_gv}}">
						                            </a>
						                            <div style="padding-left: 10px;" >
						                                 <h3 class="title-course" style="font-size:15px;font-weight: 600;margin-top: 8px;overflow: hidden;white-space: nowrap; text-overflow: ellipsis; width: 100%;}">
						                                    <span>
						                                        {{$new->ten_gv}}
						                                    </span>
						                                </h3>
						                               
						                   					                                
						                            </div>
						                           
						                        </div>
						                        
						                     <div class="col-12 container">
						                            	<a href="{{route('updategiaovien',$new->ma_gv)}}" class="btn btn-success">Sửa</a>
						                               
						                                <a href="{{route('xoagiaovien',$new->ma_gv)}}" title="BCDONLINE CONFIRM YES/ NO" onclick="return xacnhan()"  class="btn btn-danger">Xóa</a>
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