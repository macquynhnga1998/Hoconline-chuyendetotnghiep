
<!DOCTYPE html>
<html lang="">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Nga back-end</title>
    <base href="{{asset('')}}">
    <link rel="shortcut icon" href="https://static.unica.vn/icon/favicon.ico">


    <!-- Bootstrap CSS -->
    <link rel="stylesheet" type="text/css" href="public/source/css/style.css">
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
                 
                  
                    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
                    <link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
                    
                    <meta name="language" content="vietnamese"/>
    <link rel="stylesheet" type="text/css" href="public/source/css/thongtincanhan.css">
    <meta name="language" content="vietnamese"/>






        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    
    <link rel="shortcut icon" href="https://static.unica.vn/icon/favicon.ico">
    
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" type="text/css" href="public/source/css/profile.css">
  
  
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
    <link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">







    
</head>
<body style="font-family: inherit; background-color: #f4f4f4">
    <!-- head -->
  <div style="min-height: calc(100vh - 377.5px);">
        <div class="container">   
               <div class="header-box">
        <div class="container">
            <div class="row" style="text-align: center;">
                <div class="col-md-2 col-sm-6 col-xs-6">
                    <div class="box-logo" style="margin-top: 9px;">
                        <a href="{{route('trang-chu')}}">
                            <img src="public/source/img/nga-backend.png"  style="height: 77px;width:150px;" alt="Image">
                        </a>
                    </div>
                </div>
                <div class="col-md-7 hidden-sm hidden-xs" style="margin-top: 23px;">
                    <div class="row">
                       
                        <div class="col-sm-12">
                            
                             <form action="{{route('timkiem')}}" method="get">
                                <div class="input-group">

                                    <input type="text" name="key" class="form-control" placeholder="Nhập từ khóa tìm kiếm ">
                                    <span class="input-group-btn">
                                    <button class="btn btn-default" type="submit"><i class="fas fa-search"></i></button>
                                    
                                </span>
                                </div>
                            </form>
                          
                        </div>
                        
                    </div>
                </div>
                <div class="col-sm-6  col-xs-6 hidden-md hidden-lg " style="margin-top: 23px;">
                    <div class="box-login" style="text-align: end;">
                        @if(Auth::check())
                            <a href="{{route('trangcanhan')}}"><button class="btn btn-default btn-login" type="button" style="font-size: 19px; "><i class="fas fa-user-circle"></i></button></a>
                        @else

                             <a href="{{route('login')}}"><button class="btn btn-default btn-login" type="button" style="font-size: 19px;"><i class="fas fa-user-circle"></i></button></a>

                        @endif
                    </div>
                </div>
                <div class="col-md-3 hidden-sm hidden-xs " style="margin-top: 23px;">
                    <div class="box-login" style="text-align: end;">
                        @if(Auth::check())
                            <ul class="menuttcn">
                                <li style="">
                                    <a href="{{route('trangcanhan')}}" style="text-decoration: none;font-weight: bold; color: #777;">{{Auth::user()->name}}</a>
                                    <ul class="menucon">
                                        @if(Auth::user()->quyen > 0)

                                            <li ><a href="{{route('admin')}}" style="color: #777;" >Admin</a></li>


                                        @endif
                                        <li ><a href="{{route('trangcanhan')}}" style="color: #777;">Thông tin cá nhân</a></li>
                                        <li ><a href="{{route('khoahoccuatoi')}}" style="color: #777;">Khóa học của tôi</a></li>
                                        <li ><a href="{{route('logout')}}" style="color: #777;">Đăng xuất</a></li>
                                       
                                    </ul>
                                </li>
                            </ul>   
                            
                           
                        @else
                                <a href="{{route('login')}}"><button class="btn btn-default btn-login" type="button" style="font-size: 19px;border:1px solid #ccc;"><i class="fas fa-user-circle" style="margin-right: 5px "></i>  <span>Đăng Nhập</span></button></a>
                                 <a href="{{route('dang-ki')}}"><button class="btn btn-default btn-login" type="button" style="font-size: 19px;border:1px solid #ccc;"><span>Đăng kí</span></button></a>

                            
                               
                        @endif


                    </div>

                </div>
                <div class="hidden-md hidden-lg col-sm-12" style="margin-top: 23px;">
                    <div class="row">
                        <div class="col-sm-12 col-xs-12">
                            <div class="input-group">
                                <input type="text" class="form-control">
                                <span class="input-group-btn">
                                    <button class="btn btn-default" type="button"><i class="fas fa-search"></i></button>
                                </span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <hr class="hr">
        </div>
        <div class="container">
            <nav class="navbar navbar-default box-menu" role="navigation">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a style="    color: #777777;
    font-size: 15px;    line-height: 50px;" href="{{route('trang-chu')}}">
                        <img src="https://i.vietnamdoc.net/data/image/icon/menu.png"  class="img-rounded hidden-sm hidden-xs" alt="Image">Trang Chủ
                    </a>
  </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse menu" id="bs-example-navbar-collapse-1" style="background-color: #f4f4f4">
                    <ul class="nav navbar-nav navbar-right">
                        <li>
                            <a href="{{route('header',1)}}">
                                <img src="https://i.vietnamdoc.net/data/image/Icon/2015/edit-size-32x32-znd.png" class="img-rounded" alt="Image">
                                <span>Ngoại ngữ</span>
                            </a>
                        </li>
                        <li>
                            <a href="{{route('header',2)}}">
                                <img src="https://i.vietnamdoc.net/data/image/Icon/2017/Giai-bai-tap-size-32x32-znd.png" class="img-rounded" alt="Image">
                                <span>Tin học</span>
                            </a>
                        </li>
                        <li>
                            <a href="{{route('header',3)}}">
                                <img src="https://i.vietnamdoc.net/data/image/Icon/2015/luyen-thi-size-32x32-znd.png" class="img-rounded" alt="Image">
                                <span>Marketing</span>
                            </a>
                        </li>
                        <li>
                            <a href="{{route('header',4)}}">
                                <img src="https://i.vietnamdoc.net/data/image/Icon/2016/big-ben-1-size-32x32-znd.png" class="img-rounded" alt="Image">
                                <span>Thiết kế</span>
                            </a>
                        </li>
                        <li class="hidden-sm">
                            <a href="{{route('header',5)}}">
                                <img src="https://i.vietnamdoc.net/data/image/Icon/2015/binders-size-32x32-znd.png" class="img-rounded" alt="Image">
                                <span>Kinh doanh</span>
                            </a>
                        </li>
                        <li class="hidden-sm">
                            <a href="{{route('header',6)}}">
                                <img src="https://i.vietnamdoc.net/data/image/Icon/2015/edit-property-size-32x32-znd.png" class="img-rounded" alt="Image">
                                <span>Nghệ thuật</span>
                            </a>
                        </li>
                        <li class="hidden-sm">
                            <a href="{{route('header',7)}}">
                                <img src="https://i.vietnamdoc.net/data/image/Icon/2015/law-size-32x32-znd.png" class="img-rounded" alt="Image">
                                <span>Nhiếp ảnh</span>
                            </a>
                        </li>
                        <li class="hidden-sm">
                            <a href="{{route('header',8)}}">
                                <img src="https://i.vietnamdoc.net/data/image/Icon/2018/cources-size-32x32-znd.png" class="img-rounded" alt="Image">
                                <span>Sức khỏe</span>
                            </a>
                        </li>
                    </ul>
                </div>
                <!-- /.navbar-collapse -->
                <!-- /.container-fluid -->
            </nav>
        </div>
    </div>
        </div>      
    <!-- đường kẻ bóng dưới menu -->
        <div style="border-bottom: 1px solid #e1e1e1;
    -webkit-box-shadow: 0px 1px 3px 0px rgba(0,0,0,0.75);
    -moz-box-shadow: 0px 1px 3px 0px rgba(0,0,0,0.75);
    box-shadow: 0px 1px 3px 0px rgba(0,0,0,0.75);">
            
        </div>
    <!-- đường kẻ bóng dưới menu -->
        <div>

    



    <!---->
        @if(Auth::check() && Auth::user()->quyen > 0)

                    <div class="head" style="background-image:  url(https://unica.vn/media/img/bg-db.jpg);">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <p style="color: white;font-size: 40px; margin-left: 40px;">
                        ADMIN: {{Auth::user()->name}}
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
                                        <a style="padding-bottom: 5px;" href="{{route('quanlygiaovien')}}">
                                            <p>
                                                <i class="fa fa-user" aria-hidden="true"></i>
                                                <span>
                                                    Quản lý giáo viên
                                                </span>
                                            </p>    
                                        </a>
                                    </li>
                                    <li style="padding-right: 10px;">
                                        <a style="padding-bottom: 5px;" href="{{route('quanlykhoahoc')}}">
                                            <p>
                                                <i class="fa fa-book" aria-hidden="true"></i>
                                                <span>
                                                    Quản lý khóa học
                                                </span>
                                            </p>    
                                        </a>
                                    </li>
                                    <li style="padding-right: 10px;">
                                        <a style="padding-bottom: 5px;" href="{{route('quanlybaihoc')}}">
                                            <p>
                                                <i class="fa fa-book" aria-hidden="true"></i>
                                                <span>
                                                    Quản lý bài học
                                                </span>
                                            </p>    
                                        </a>
                                    </li>
                                    <li style="padding-right: 10px;">
                                        <a style="padding-bottom: 5px; " href="{{route('quanlyusers')}}">
                                            <p>
                                                <i class="fa fa-book" aria-hidden="true"></i>
                                                <span>
                                                    Quản lý người dùng
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


        @endif
        <!---->




        

    @yield('conten')









  <!-- footer -->
  <div class="box-footer" >
      <footer>
    <div style="    background: #2c3238;
    padding-bottom: 30px; padding-top: 40px;" >
        <div class="container">
            <div class="row">
                <div class="col-lg-2 col-md-2 col-sm-4 col-xs-12 ">
                    
                    <ul>
                        <li>
                            <img class="img-responsive" style="    padding-bottom: 10px;" src="public/source/img/nga-backend.png">
                        </li>
                        <li>
                           
                            <span style="color: white;">136 Cầu Giấy, Hà Nội</span>
                        </li>
                        <li>
                          
                            <span style="color: white;">25 Ngô Quyền, TP HCM </span>
                        </li>
                        <li>
                           
                            <span style="color: white;">090 488 6095 </span>
                            
                        </li>
                        <li>
                           
                            <span style="color: white;">không có  </span>
                        </li>
                        <li>
                           
                            <span style="color: white;">8:00 - 22:00 </span>
                        </li>
                    </ul>
                </div>
                <div class="col-lg-2 col-md-2 col-sm-4 col-xs-12">
                    <h4 style="    font-size: 16px;
    color: #f26c4f;
    font-weight: bold;
    margin: 25px 0 13px 40px;">Giới thiệu</h4>
                    <ul  >
                        <li><a style="color: white;" >Giới thiệu </a></li>
                        <li><a style="color: white;" >Câu hỏi thường gặp</a></li>
                        <li><a style="color: white;"  rel="nofollow">Điều khoản dịch vụ</a></li>
                        <li><a style="color: white;" rel="nofollow">Hướng dẫn thanh toán</a></li>
                        <li><a style="color: white;" >Kích hoạt khóa học</a></li>
                        <li><a style="color: white;" >Góc chia sẻ</a></li>
                    </ul>
                </div>
                <div class="col-lg-2 col-md-2 col-sm-4 col-xs-12 ">
                    <h4 style="   font-size: 16px;
    color: #f26c4f;
    font-weight: bold;
    margin: 25px 0 13px 40px;">Hợp tác liên kết</h4>
                    <ul>
                        <li><a style="color: white;" >Đăng ký giảng viên</a></li>
                        <li><a style="color: white;">Đăng ký đại lý</a></li>
                        <li><a style="color: white;"  target="_blank" rel="nofollow">Giải pháp e-learning</a></li>
                        <li><a style="color: white;" target="_blank" rel="nofollow">Tuyển dụng nhân tài</a></li>
                        <li><a style="color: white;" href="/affiliate">Affiliate</a></li>

                    </ul>
                </div>
                <div class="col-lg-2 col-md-2 col-sm-7 col-xs-6 ">
                    <span class="app-connect">
                    <h4 style="   font-size: 16px;
    color: #f26c4f;
    font-weight: bold;
    margin: 25px 0 13px 40px;">Tải app </h4>
                    <ul>
                        <li><a rel="nofollow"><img alt="Unica on App Store" src="https://unica.vn/media/images_v2018/appstore.png"></a></li>
                        <li><a  rel="nofollow"><img alt="Unica on Google Play" src="https://unica.vn/media/images_v2018/playstore.png"></a></li>
                    </ul>
                    </span>
                    <span class="social-connect">
                        <p style="   font-size: 16px;
    color: #f26c4f;
    font-weight: bold;
    margin: 25px 0 13px 40px;">Kết nối </p>
                        <ul>
                            <li  style="    background: rgb(59, 89, 152) !important;
    padding: 10px;
    float: left;
    width: 34px;
    text-align: center;"><a style="color: white;" rel="nofollow" data-bg-color="#3B5998"><i class="fa fa-facebook"></i></a></li>
                            <li style=" padding: 10px;
    float: left;
    width: 34px;
    text-align: center;background: rgb(194, 46, 42) !important;"><a rel="nofollow" data-bg-color="#C22E2A" style="background: rgb(194, 46, 42) !important; color: white;"><i class="fa fa-youtube"></i></a></li>
                        </ul>
                    </span>
                </div>
                
            </div>
        </div>
    </div>
    <div style=" color: white;   background: #222 !important;
    padding: 15px 0;">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
                    <p>© Học viện Online  - Hệ thống đào tạo trực tuyến dành cho người đi làm - Cổng kết nối Chuyên gia với Học viên</p>
                </div>
                <div class="col-lg-2 col-md-2 col-sm-2 col-xs-12">
                    <a target="_blank" rel="nofollow"><img src="https://unica.vn/media/images_v2017/bct.png"></a>
                </div>
            </div>
        </div>
    </div>
</footer>
</div>
  <!-- end footer -->



    <!-- jQuery -->
    <script type="text/javascript" src="js/app.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js "></script>
    <!-- Bootstrap JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js "></script>
     <script type="text/javascript" src="js/app.js"></script>
                    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js "></script>
                    <!-- Bootstrap JavaScript -->
                    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js "></script>
</body>

</html>