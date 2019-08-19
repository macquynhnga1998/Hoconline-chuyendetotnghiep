@extends('master')

@section('conten')




  	
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">


    <link rel="shortcut icon" href="https://static.unica.vn/icon/favicon.ico">

                    <!-- Bootstrap CSS -->
    <link rel="stylesheet" type="text/css" href="public/source/css/style.css">
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/style.css">
                    
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
    <link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
    <link rel="stylesheet" type="text/css" href="public/source/css/dangnhap.css">
    <meta name="language" content="vietnamese"/>


  <div class="body" style="padding-bottom: 100px">



  <div class="container " style="font-family: inherit;">
    
    <div class="row">
      <div class="formdangnhap col-md-8 col-md-offset-2 col-xs-12 col-sm-10 ">
          <div><img src="anh/logo.png" alt="" class="img-rounded" style="width: 130px;height:"></div>
            <h2 style="margin-top: 10px; color: #555">ĐĂNG NHẬP</h2>
  
              <form action="{{route('login1')}}" method="post">
                @csrf
                @if(Session::has('flag'))
                <div class="alert alert-{{Session::get('flag')}}"> {{Session::get('message')}}</div>
                @endif
                @if(count($errors)>0)
                  <div class="alert alert-danger">
                    @foreach($errors->all() as $err)
                     {{$err}}
                    @endforeach
                  </div>
                  
                @endif
              <input type="email" class="form-control" name="email" id="inputEmail" placeholder="Email" style="margin-top: 10px;height: 50px">
          

              <input type="password" class="form-control" name="password" id="inputPassword" placeholder="Password" style="width: 100%; margin-top:20px;height: 50px">
           
          <div class="form-group" style="margin-top: 20px;">
            <div class="col-sm-12 col-md-12" style="padding: 0; margin-bottom: 20px;">
              <button type="submit" class="btn"><h4>Sign in</h4></button>
            </div>
          </div>
        </form>

        <div class="footer">
            <span class="txt2">
                Bạn chưa có tài khoản?
            </span>
            <a href="{{route('dang-ki')}}" class="">
                Đăng ký mới
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
