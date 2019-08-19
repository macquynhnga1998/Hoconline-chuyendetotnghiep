	
	<form action="{{route('upfile')}}" enctype="multipart/form-data" method="post">
	@csrf
			<input type="file" id="File" name="file">

			<input type="text" name="name">

			<input type="submit" name="" value="ok">
	</form>

	
	