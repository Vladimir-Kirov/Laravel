<nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="{{ route('blog.index') }}">Laravel Guide</a>
      <ul class="nav navbar-nav">
        <li><a href="{{ route('blog.index') }}">Blog</a></li>
        <li><a href="{{ route('other.about') }}">About</a></li>
      </ul>
    </div>
	<!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
	    <ul class="nav navbar-nav navbar-right">
	        <li><a href="{{ route('account') }}">Account</a></li>
	        <li><a href="{{ route('logout') }}">Log Out</a></li>
	    </ul>
	  </div><!-- /.navbar-collapse -->
  </div>
</nav>
