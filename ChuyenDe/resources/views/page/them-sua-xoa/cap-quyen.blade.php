

 	@extends('master')
    @section('conten')
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

 

    <link rel="stylesheet" type="text/css" href="public/source/css/profile.css">
   
    <link rel="shortcut icon" href="https://static.unica.vn/icon/favicon.ico">

    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
    <link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">

	
	<script type="text/javascript">
		function xacnhan(){
			var result = confirm('Bạn có chắc chắn muốn xóa');
		}
		
		
	</script>
	
	<main>
		@if(Session::has('thanhcong'))
                  <div style="text-align: center;" class="alert alert-success container">{{Session::get('thanhcong')}}</div>
                @endif
        <form action="{{route('updatecapquyen')}}" enctype="multipart/form-data" method="post">
		 @csrf        
		<div class="container" style="padding-top: 20px;">

				<div>
					<div class="panel panel-default">

						<div class="panel-heading col-md-12">
							<span style="font-weight: bold;"><i class="fa fa-user"></i>Thông tin người dùng</span>
							
						</div>
						  <div class="panel-body">
						  	<div class="row">
						  	
						  		<div class="col-md-6 col-sm-6">
						  			
									<div class="form-group " style="margin-bottom: 47px; ">
                        				<label style="margin-bottom: 10px;">Ảnh đại diện</label>
                        					<br>
	                                    <img style="width: 100px; height: 100px " class="img-rounded" src="public/source/anh-dai-dien/{{$user->link_anh}}">
										
		              
										 
									</div>

                                      
                                    <div class="form-group">
		                        		<label >Quyền</label>
		                       			<div class="form-group field-muser-city">
		                       				@if($user->quyen == 1)
		                       				<select  class="form-control" name="quyen" style="padding:0px;">
												<option value="0">0</option>
												<option value="1" selected="">1</option>
												
											</select>
											@else
											<select  class="form-control" name="quyen" style="padding:0px;">
												<option value="0"  selected="">0</option>
												<option value="1">1</option>
											</select>
											@endif

			
											
										</div>                    
									</div>
									
									
						  		</div>
						  		<div class="col-md-6 col-sm-6">
						  			<div class="form-group">
							  			<label>Tên người dùng</label>
							  			<div class="form-group field-muser-fullname ">

											<input type="text" class="form-control" disabled="" value="{{$user->name}}">

										</div>
						  			</div>
						  			<div class="form-group">
							  			<label>Email</label>
							  			<div class="form-group field-muser-fullname ">

											<input type="text" class="form-control" disabled=""  value="{{$user->email}}">

										</div>
						  			</div>
						  			<div class="form-group">
							  			<label>ID</label>
							  			<div class="form-group field-muser-fullname ">

											<input type="text" class="form-control" name="id" style="display: none;"  value="{{$user->id}}">
											<input type="text" class="form-control" disabled=""  value="{{$user->id}}">
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