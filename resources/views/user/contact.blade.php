@extends('user.layout.master')
@section("title","my profile")
@section('main-content')


<div class="container px-5 py-16">




	@if(session()->has('success'))
	<h2 style="text-align: center;color: green;border-left:red ;" id="hello">
		{{ session()->get('success') }}
	</h2>
	@endif

	<form action="{{ route('contact-store') }}" method="post" class="newsletter-form" data-area="home">
		@csrf
		<label for="name">Your Name :</label>
		<div class="flex w-full">
			<input class="w-full flex-1 input w-full flex-1 border-r-0 rounded-r-none" type="text" placeholder="Your name" name="name" id="name" value="{{old('name')}}" >

		</div>
		@if ($errors->has('name'))
		<div style="color: red;">{{ $errors->first('name') }}</div>
		@endif
		<br>
		<label for="email">Your Email :</label>
		<div class="flex w-full">
			<input class="w-full flex-1 input w-full flex-1 border-r-0 rounded-r-none" id="email" type="email" placeholder="Email Address" name="email" value="{{old('email')}}" >
		</div>
		@if ($errors->has('email'))
		<span style="color: red;"?>{{ $errors->first('email') }}</span>
		@endif
		<br>
		<label for="message">Your Text :</label>
		<div class="flex w-full">
			<textarea rows="10" class="w-full flex-1 input w-full flex-1 border-r-0 rounded-r-none" name="message" id="message" >{{old('message')}}</textarea>
		</div>
		@if ($errors->has('message'))
		<div style="color: red;">{{ $errors->first('message') }}</div>
		@endif
		<br>

		<button class="btn border-red-darker p-4 bg-red-darker rounded-r hover:bg-black transition newsletter-subscribe">
			Submit Text
		</button>
	</form>
</div>



<script
src="https://code.jquery.com/jquery-3.4.1.min.js"
integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
crossorigin="anonymous"></script>
<script>
	$(document).ready(function() {
		$('#hello').fadeOut (550);
		$('#hello').fadeIn (550);
		$('#hello').fadeOut (550);
		$('#hello').fadeIn (550);
		$('#hello').fadeOut (550);
	});
</script>
<!-- <script src="https://cdn.ckeditor.com/4.12.1/standard/ckeditor.js"></script>
<script>
	CKEDITOR.replace( 'message' );
</script>
 -->
@endsection