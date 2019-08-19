  @extends('master')

@section('conten')

  	
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Nga back-end</title>
    <base href="{{asset('')}}">
    <link rel="shortcut icon" href="https://static.unica.vn/icon/favicon.ico">

    <!-- Bootstrap CSS -->
    
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="public/source/css/style.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
    <link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Nga back-end</title>
    <link rel="shortcut icon" href="https://static.unica.vn/icon/favicon.ico">

                    <!-- Bootstrap CSS -->
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/style.css">
                    
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
    <link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
    <link rel="stylesheet" type="text/css" href="public/source/css/dangky.css">
    <meta name="language" content="vietnamese"/>
    <meta name="language" content="vietnamese"/>
    



  <div class="body" style="font-family: inherit;padding-bottom: 100px">



  <div class="container">
    <div class="row">
      <div class="formdangki col-md-8 col-md-offset-2 col-xs-12 col-sm-10 ">
          <div><img src="anh/logo.png" alt="" class="img-rounded" style="width: 130px;height:"></div>
            <h2 style="margin-top: 10px; color: #555">ĐĂNG KÝ</h2>

              <form action="{{route('sigin')}}" method="post" class="">
                @csrf
                @if(count($errors)>0)
                  <div class="alert alert-danger">
                    @foreach($errors->all() as $err)
                     {{$err}}
                    @endforeach
                  </div>
                  
                @endif
                @if(Session::has('thanhcong'))
                  <div class="alert alert-danger">{{Session::get('thanhcong')}}</div>
                @endif
              <input type="text" class="form-control" name="name" placeholder="Họ và tên" style="margin-top: 10px;height: 50px">
          

              <input type="text" class="form-control" name="email" placeholder="Email" style="width: 100%; margin-top:20px;height: 50px">
              <input type="text" class="form-control" name="phone" placeholder="Số điện thoại" style="width: 100%; margin-top:20px;height: 50px">
              <input type="password" class="form-control" name="password" placeholder="Mật khẩu, lớn hơn 6 kí tự" style="width: 100%; margin-top:20px;height: 50px">
              <input type="password" class="form-control" name="re_password" placeholder="Xác nhận mật khẩu" style="width: 100%; margin-top:20px;height: 50px">
           
          <div class="form-group" style="margin-top: 20px;">
            <div class="col-sm-12 col-md-12" style="padding:0; margin-bottom: 20px;">
              <button type="submit" class="btn"><h4>Đăng ký</h4></button>
            </div>
          </div>
        </form>

        <div class="footer">
            <span class="txt2">
                Bạn đã có tài khoản?
            </span>
            <a href="{{route('login')}}" class="">
                Đăng nhập
            </a>
            <br/>
            <a style="color: red;" href="" class="">
                Quên mật khẩu?
            </a>

        </div>
      </div>
    </div>
        


  </div>
  </div>

@endsection