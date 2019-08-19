

 	@extends('master')
    @section('conten')
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

 

    <link rel="stylesheet" type="text/css" href="public/css/profile.css">

    <link rel="shortcut icon" href="https://static.unica.vn/icon/favicon.ico">

    <!-- Bootstrap CSS -->

    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
  
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
    <link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
</head>

	
	<main>
		@if(Session::has('thanhcong'))
                  <div style="text-align: center;" class="alert alert-success container">{{Session::get('thanhcong')}}</div>
                @endif
		<form action="{{route('updatekhoahocs')}}" enctype="multipart/form-data" method="post">
		 @csrf
		<div class="container" style="padding-top: 20px;">
				<div  >
					<div class="panel panel-default">

						<div class="panel-heading col-md-12">
							<span style="font-weight: bold;"><i class="fa fa-user"></i>Thông tin khóa học</span>
							
						</div>
						  <div class="panel-body">
						  	<div class="row">
						  	
						  		<div class="col-md-6 col-sm-6">
						  			<div class="form-group " style="margin-bottom: 47px; ">
                        				<label style="margin-bottom: 10px;">Chọn ảnh khóa học</label>
                        					<br>
	                                    <img class="show_image" src="public/source/anh-khoa-hoc/{{$khoa_hoc->anh_kh}}" style="width: 100px; height: 100px;">
	                                    <input type="text" name="anh_kh" value="{{$khoa_hoc->anh_kh}}">
		                                <div  class="absolute">
		                            		<div id="edit-avatar" role="button" class="GVb" style="-webkit-user-select: none;"></div>
		                            			<div class="form-group field-File">

													<input type="hidden" name="MUser[Avatar]" value=""><input type="file" id="File" name="file_akh">

													
												</div>                       			
										</div>
										 
									</div>
						  			
									<div class="form-group " style="margin-bottom: 47px; ">
                        				<label style="margin-bottom: 10px;">Chọn video khóa học</label>
                        					<br>
	                                    <video class="show_image" src="public/source/video-gt/{{$khoa_hoc->link_gt}}" controls style="width: 170px;"></video>
										<input type="text" name="link_gt" value="{{$khoa_hoc->link_gt}}">
		                                <div  class="absolute">
		                            		<div id="edit-avatar" role="button" class="GVb" style="-webkit-user-select: none;"></div>
		                            			<div class="form-group field-File">

													<input type="hidden" name="MUser" value=""><input type="file" id="File" name="file_video_gt">

													
												</div>                       			
										</div>
										 
									</div>

                                      
                                    <div class="form-group">
		                        		<label >Mã giáo viên</label>
		                       			<div class="form-group field-muser-city">
		                       				@if($khoa_hoc->ma_kh == -1)
												<select  class="form-control" name="ma_gv" style="padding-left: 0px;">
													@foreach($giao_vien as $new_gv)
														<option value="{{$new_gv->ma_gv}}">{{$new_gv->ma_gv}} - {{$new_gv->ten_gv}}</option>
													@endforeach
												</select>

											@else
												<select  class="form-control"  name="ma_gv" style="padding-left: 0px;">
													@foreach($giao_vien as $new_gv)
														@if($khoa_hoc->ma_gv == $new_gv->ma_gv)
															<option value="{{$new_gv->ma_gv}}" selected="">{{$new_gv->ma_gv}} - {{$new_gv->ten_gv}}</option>
														@else
															<option value="{{$new_gv->ma_gv}}">{{$new_gv->ma_gv}} - {{$new_gv->ten_gv}}</option>
														@endif
													@endforeach
												</select>
											@endif
										</div>                    
									</div>
									<div class="form-group">
		                        		<label >Mã loại</label>
		                       			<div class="form-group field-muser-city">

		                       				@if($khoa_hoc->ma_kh == -1)
												<select  class="form-control" name="ma_loai" style="padding-left: 0px;">
													@foreach($loai_kh as $new_lkh)
														<option value="{{$new_lkh->ma_loai}}">{{$new_lkh->ma_loai}} - {{$new_lkh->ten}}</option>
													@endforeach
												</select>

											@else
												<select  class="form-control" name="ma_loai" style="padding-left: 0px;">
													@foreach($loai_kh as $new_lkh)
														@if($khoa_hoc->ma_loai == $new_lkh->ma_loai)
															<option value="{{$new_lkh->ma_loai}}" selected="">{{$new_lkh->ma_loai}} - {{$new_lkh->ten}}</option>
														@else
															<option value="{{$new_lkh->ma_loai}}">{{$new_lkh->ma_loai}} - {{$new_lkh->ten}}</option>
														@endif
													@endforeach
												</select>
											@endif
										</div>                    
									</div>
									@if($khoa_hoc->ma_kh > 0)
									<div class="form-group">
										<label >Mã khóa học</label>
		                       			<div class="form-group field-muser-city">
											<input type="text" class="form-control" style="display: none" name="ma_kh" value="{{$khoa_hoc->ma_kh}}">
		                       				<input type="text" class="form-control" disabled="" value="{{$khoa_hoc->ma_kh}}">
										</div>                    
									</div>
									@else
										<input type="text" name="ma_kh" style="display: none" class="form-control" value="-1">
									@endif

									
						  		</div>
						  		<div class="col-md-6 col-sm-6">
						  			<div class="form-group">
							  			<label>Tên khóa học</label>
							  			<div class="form-group field-muser-fullname ">

											<input type="text" class="form-control" name="ten_kh" value="{{$khoa_hoc->ten_kh}}">

										</div>
						  			</div>
						  			<div class="form-group">
							  			<label>Mô tả khóa học</label>
							  			
							  			<div class="form-group field-muser-email ">

											<textarea type="" class="form-control" name="mo_ta" cols="10">{{$khoa_hoc->mo_ta}}</textarea>

										</div>
										
						  			</div>
						  			<div class="form-group">
							  			<label>Giới thiệu</label>
							  			
							  			<div class="form-group field-muser-phone ">

											<textarea type="text" class="form-control" name="gioi_thieu" cols="10">{{$khoa_hoc->gioi_thieu}}</textarea>

										</div>
										
						  			</div>
						  			<div class="form-group">
							  			<label>Ưu điểm</label>
							  			<div class="form-group field-muser-phone ">

											<input type="text" class="form-control" name="uudiem" value="{{$khoa_hoc->uudiem}}">

										</div>
						  			</div>
						  			<div class="form-group">
							  			<label>Thời lượng</label>
							  			<div class="form-group field-muser-phone ">

											<input type="text" class="form-control" name="thoi_luong" value="{{$khoa_hoc->thoi_luong}}">

										</div>
						  			</div>
						  			
						  			<div class="form-group">
							  			<label>Số sao</label>
							  			<div class="form-group field-muser-phone ">

											<input type="text" class="form-control" name="sosao" value="{{$khoa_hoc->sosao}}">

										</div>
						  			</div>
						  			<div class="form-group">
							  			<label>Giá bán</label>
							  			<div class="form-group field-muser-phone ">

											<input type="text" class="form-control" name="gia_ban" value="{{$khoa_hoc->gia_ban}}">

										</div>
						  			</div>
						  			<div class="form-group">
							  			<label>Giá giảm</label>
							  			<div class="form-group field-muser-phone ">

											<input type="text" class="form-control" name="gia_giam" value="{{$khoa_hoc->gia_giam}}">

										</div>
						  			</div>
						  			<div class="form-group">
							  			<label>Phần trăm giảm</label>
							  			<div class="form-group field-muser-phone ">

											<input type="text" class="form-control" name="phan_tram" value="{{$khoa_hoc->phan_tram}}">

										</div>
						  			</div>
						  					 		 		 		 		 		 
								
														    
					</div>
					<div class="col-md-12 col-md-offset-5">
									<div class="form-group">
									<button class="btn btn-success" style="margin-top: 30px; margin-left: 40px;"><i class="fa fa-save"></i> Lưu lại</button>
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