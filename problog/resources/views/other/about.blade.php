@extends('layouts.master')

<style type="text/css">
	.profile-img {
		max-width: 150px;
		border: 5px solid #fff;
		border-radius: 100%;
		box-shadow: 0 2px 2px rgba(0, 0, 0, 0.3);
	}
</style>


@section('content')
	<div class="row">
		<div class="col-md-12">
			<p class="quote">About Me</p>
		</div>
	</div>
	<div class="row">
		<div class="col-md-6 col-md-offset-3">
			<div class="panel panel-default">
				<div class="panel-body text-center">
					<img class="profile-img" src="https://scontent-bru2-1.xx.fbcdn.net/v/t1.0-9/12705706_1271122182897897_4588749252250503383_n.jpg?oh=ed4b8a1dd5bfbfdcb1f04e4e2242a440&oe=58E4B066">

					<p>Intelligent, analytical, charismatic, team leader. I would like to be in service and to grow personally and professionally.</p>
				</div>
			</div>
		</div>
	</div>
@endsection