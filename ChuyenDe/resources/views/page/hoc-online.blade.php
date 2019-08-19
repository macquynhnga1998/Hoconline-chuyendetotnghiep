    @extends('master')
    @section('conten')


	
	<link rel="stylesheet" type="text/css" href="public/source/css/hoc-online.css">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
</head>

	<div class="container">
			

			<div class="row tong">
				<h3>{{$khoahoc->ten_kh}}</h3>
				<div class="video col-md-8 col-xs-12 col-md-12">
					<video src="public/source/video/{{$baihoc_dangchieu}}" style="width: 100%;" controls controlslist="nodownload" autoplay></video>
				</div>
				<div class="menu-hoc col-md-4 col-xs-12 col-md-12">
					<h4>Bài học</h4>
					<div class="menu-hoc-con">
						
						<ul>
							@foreach($baihoc as $new)
								<a href="{{route('mobaihoc',[$new->ma_kh,$new->link_bh])}}"><li><i class="fa fa-play-circle"></i>{{$new->ten_bh}}</li></a>
							@endforeach
						</ul>
					</div>
					
				</div>

			</div>
			

		</div>








	@endsection
