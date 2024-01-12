<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">cars</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="{{Request()->routeIs('cars')?'active':''}}"><a href="{{ route('cars') }}">car list</a></li>
      <li class="{{Request()->routeIs('createcar')?'active':''}}"><a href="{{ route('createcar') }}">add car</a></li>
      <li class="{{Request()->routeIs('posts')?'active':''}}"><a href="{{ route('posts') }}">Post list </a></li>
      <li class="{{Request()->routeIs('addpost')?'active':''}}"><a href="{{ route('addpost') }}">add post </a></li>
      <li class="{{Request()->routeIs('trashed')?'active':''}}"><a href="{{ route('trashed') }}">trashed cars </a></li>
      <li class="{{Request()->routeIs('trashedPost')?'active':''}}"><a href="{{ route('trashedPost') }}">trashed posts </a></li>
    </ul>
  </div>
</nav>