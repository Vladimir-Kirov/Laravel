@extends('layouts.admin')

@section('content')
	@if(Session::has('info'))
		<div class="row">
			<div class="col-md-12">
				<p class="alert alert-info">{{ Session::get('info') }}</p>
			</div>
		</div>
	@endif
	<div class="row">
		<div class="col-md-12">
			<a href="{{ route('admin.create') }}" class="btn btn-success">New Post</a>
		</div>
	</div>
	<hr>
	@foreach($posts as $post)
	<div class="row">
		<div class="col-md-12">
			<p><strong>{{ $post->title }}</strong>
				<div class="btn-group">
					<a href="{{ route('admin.edit', ['id' => $post->id]) }}" class="btn btn-warning"> Edit</a>
					<a href="{{ route('admin.delete', ['id' => $post->id]) }}" class="btn btn-danger"> Delete</a>
				</div>	
			</p>
		</div>
	</div>
	@endforeach
@endsection