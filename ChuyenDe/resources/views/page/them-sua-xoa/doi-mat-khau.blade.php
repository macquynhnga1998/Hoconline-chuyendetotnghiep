	@extends('master')

	@section('conten')

	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
   
    <link rel="shortcut icon" href="https://static.unica.vn/icon/favicon.ico">

    <!-- Bootstrap CSS -->
    
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
    <link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" href="https://static.unica.vn/icon/favicon.ico">

                    <!-- Bootstrap CSS -->
    
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/style.css">
                    
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
    <link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
    <link rel="stylesheet" type="text/css" href="public/source/css/changepass.css">
    <meta name="language" content="vietnamese"/>

    

  	<title>Document</title>
  </head>
  <div class="body" style="font-family: inherit;">



  <div class="container">
  				@if(Session::has('thanhcong'))
                  <div style="text-align: center;" class="alert alert-success container">{{Session::get('thanhcong')}}</div>
                @endif
                 @if(count($errors)>0)
                  <div class="alert alert-danger">
                    @foreach($errors->all() as $err)
                     {{$err}}
                    @endforeach
                  </div>
                  @endif
    <div class="row">
      <div class="formdangki col-md-8 col-md-offset-2 col-xs-12 col-sm-10 ">
          <div><img src="anh/logo.png" alt="" class="img-rounded" style="width: 130px;height:"></div>
            <h2 style="margin-top: 10px; color: #555">THAY ĐỔI MẬT KHẨU</h2>

              <form action="{{route('doimatkhaus')}}" method="post">
				@csrf 
              <input type="text" class="form-control" name="password_old" placeholder="Mật khẩu cũ" style="width: 100%; margin-top:20px;height: 50px">
              <input type="text" class="form-control" name="password" placeholder="Mật khẩu mới" style="width: 100%; margin-top:20px;height: 50px">
              <input type="password" class="form-control" name="re_password" placeholder="Nhập lại mật khẩu" style="width: 100%; margin-top:20px;height: 50px">
           
          <div class="form-group" style="margin-top: 20px;">
            <div class="col-sm-12 col-md-12" style="padding:0; margin-bottom: 20px;">
              <button type="submit" class="btn"><h4>Thay đổi mật khẩu</h4></button>
            </div>
          </div>
        </form>

        <div class="footer">
            
           
            <a style="color: red;"  class="">
                Quên mật khẩu?
            </a>

        </div>
      </div>
    </div>
       </div>

@endsection