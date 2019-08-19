

 	@extends('master')
    @section('conten')
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

 

    <link rel="stylesheet" type="text/css" href="public/source/css/profile.css">
   
    <link rel="shortcut icon" href="https://static.unica.vn/icon/favicon.ico">

    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
    <link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">


	
	<main>
		@if(Session::has('thanhcong'))
                  <div style="text-align: center;" class="alert alert-success container">{{Session::get('thanhcong')}}</div>
                @endif
        <form action="{{route('updatebaihocs')}}" enctype="multipart/form-data" method="post">
		 @csrf        
		<div class="container" style="padding-top: 20px;">

				<div>
					<div class="panel panel-default">

						<div class="panel-heading col-md-12">
							<span style="font-weight: bold;"><i class="fa fa-user"></i>Thông tin bài học</span>
							
						</div>
						  <div class="panel-body">
						  	<div class="row">
						  	
						  		<div class="col-md-6 col-sm-6">
						  			
									<div class="form-group " style="margin-bottom: 47px; ">
                        				<label style="margin-bottom: 10px;">Chọn video khóa học</label>
                        					<br>
	                                    <video class="show_image" src="public/source/video/{{$bai_hoc->link_bh}}" controls style="width: 250px;"></video>
										
		                                <div  class="absolute">
		                            		<div id="edit-avatar" role="button" class="GVb" style="-webkit-user-select: none;"></div>
		                            			<div class="form-group field-File">

													<input type="hidden" name="MUser" value=""><input type="file" id="File" name="file_video">

													
												</div>                       			
										</div>
										 
									</div>

                                      
                                    <div class="form-group">
		                        		<label >Mã khóa học</label>
		                       			<div class="form-group field-muser-city">
		                       				@if($bai_hoc->ma_bh == -1 && $bai_hoc->ma_kh == -1)

												<select  class="form-control" name="ma_kh" style="padding-left: 0px;">
													@foreach($khoa_hoc as $new_khoa_hoc)
														<option value="{{$new_khoa_hoc->ma_kh}}">{{$new_khoa_hoc->ma_kh}} - {{$new_khoa_hoc->ten_kh}}</option>
													@endforeach
												</select>
											@elseif($bai_hoc->ma_bh != -1 && $bai_hoc->ma_kh == -1)
												<div class="">
									  			
									  				<div class="form-group field-muser-fullname ">

														<input type="text" style="display: none" class="form-control" name="ma_kh" value="{{$bai_hoc->ma_kh}}">
														<input type="text" disabled=""   class="form-control" value="{{$bai_hoc->ma_kh}}">

													</div>
						  						</div>
						  					@else
						  						<div class="">
									  			
									  				<div class="form-group field-muser-fullname">

														<input type="text" style="display: none" class="form-control" name="ma_kh" value="{{$bai_hoc->ma_kh}}">
														<input type="text" disabled=""  class="form-control" value="{{$bai_hoc->ma_kh}}">

													</div>
						  						</div>
											@endif
			
											
										</div>                    
									</div>
									
									
						  		</div>
						  		<div class="col-md-6 col-sm-6">
						  			<div class="form-group">
							  			<label>Tên bài học</label>
							  			<div class="form-group field-muser-fullname ">

											<input type="text" class="form-control" name="ten_bh" value="{{$bai_hoc->ten_bh}}">

										</div>
						  			</div>
						  			
						  			<div class="form-group">
							  			<label>Thời lượng</label>
							  			<div class="form-group field-muser-phone ">

											<input type="text" class="form-control" name="thoi_luong" value="{{$bai_hoc->thoi_luong}}">

										</div>
						  			</div>
						  			<div class="form-group">
						  				@if($bai_hoc->ma_bh == -1)
							  			<label>Mã bài học</label>
							  			<div class="form-group field-muser-phone ">

											<input type="text" class="form-control" style="display: none;" name="ma_bh" value="-1">
										</div>
										@else
											<label>Mã bài học</label>
							  				<div class="form-group field-muser-phone ">

												<input type="text" class="form-control" disabled=""  value="{{$bai_hoc->ma_bh}}">
												<input type="text" class="form-control" style="display: none;" name="ma_bh"  value="{{$bai_hoc->ma_bh}}">
											</div>
										

										@endif
						  			</div>
						  			<div class="form-group">
		                        		<label >Học thử</label>
		                       			<div class="form-group field-muser-city">
										@if($bai_hoc->hoc_thu == 1)
											<select  class="form-control" name="hoc_thu" style="padding:0px;">
												<option value="0">0</option>
												<option value="1" selected="">1</option>
											</select>
										@else
											<select  class="form-control" name="hoc_thu" style="padding:0px;">
												<option value="0" selected="">0</option>
												<option value="1">1</option>
											</select>
										@endif
											
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