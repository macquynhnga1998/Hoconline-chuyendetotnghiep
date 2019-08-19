
	@extends('master')
    @section('conten')
	<meta charset="UTF-8">

 
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

 

    <link rel="stylesheet" type="text/css" href="source/css/profile.css">
   
	<title>Nga backend</title>
    <link rel="shortcut icon" href="https://static.unica.vn/icon/favicon.ico">

    <!-- Bootstrap CSS -->

    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
	








	<main>
				@if(Session::has('thanhcong'))
                  <div style="text-align: center;" class="alert alert-success container">{{Session::get('thanhcong')}}</div>
                @endif
	<form action="{{route('updategiaoviens')}}" enctype="multipart/form-data" method="post">
		 @csrf
		<div class="container" style="padding-top: 20px;">
				<div >
					<div class="panel panel-default">

						<div class="panel-heading col-md-12">
							<span style="font-weight: bold;"><i class="fa fa-user"></i>Thông tin giáo viên</span>
							
						</div>
						  <div class="panel-body">
						  	<div class="row">
						  	
						  		<div class="col-md-6 col-sm-6">
						  			<div class="form-group " style="margin-bottom: 47px; ">
                        				<label style="margin-bottom: 10px;">Chọn ảnh giáo viên</label>
                        					<br>
	                                    <img class="show_image" src="public/source/anh-giao-vien/{{$giao_vien->anh_gv}}" style="width: 100px; height: 100px;">
		                                <div  class="absolute">
		                            		<div id="edit-avatar" role="button" class="GVb" style="-webkit-user-select: none;"></div>
		                            			<div class="form-group field-File">

													<img type="hidden" src="" name="anh-dai-dien"><input type="file" id="File" name="file">

													
												</div>                       			
										</div>
										 <p style="margin-top:10px;">(Ảnh vuông và &lt;500KB)</p>
									</div>

                                      
                                    
									

						  		</div>
						  		<div class="col-md-6 col-sm-6">
						  			<div class="form-group">
							  			<label>Họ và tên</label>
							  			<div class="form-group field-muser-fullname ">

											<input type="text" class="form-control" name="name" value="{{$giao_vien->ten_gv}}">

										</div>
						  			</div>
						  			<div class="form-group">
							  			<label>Mô tả giáo viên</label>
							  			<div class="form-group field-muser-fullname ">

											<input type="text" style="overflow: auto" class="form-control" name="mota_gv" value="{{$giao_vien->mota_gv}}">

										</div>
						  			</div>
						  			<div class="form-group">
							  			<label>Mã giáo viên</label>
							  			<div class="form-group field-muser-fullname ">

											<input type="text" class="form-control" disabled  value="{{$giao_vien->ma_gv}}">

										</div>
						  			</div>

						  			<div class="form-group" style="display: none">
							  			<label>Mã giáo viên</label>
							  			<div class="form-group field-muser-fullname ">

											<input type="text" class="form-control" name="ma_gv"  value="{{$giao_vien->ma_gv}}">

										</div>
						  			</div>
						  			<div class="form-group" style="display: none">
							  			<label>Ảnh</label>
							  			<div class="form-group field-muser-fullname ">

											<input type="text" class="form-control" name="anh_gv"  value="{{$giao_vien->anh_gv}}">

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