<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">cars</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="{{ route('cars') }}">car list</a></li>
      <li><a href="{{ route('createcar') }}">add car</a></li>
      <li><a href="{{ route('posts') }}">Post list </a></li>
      <li><a href="{{ route('addpost') }}">add post </a></li>
      <li><a href="{{ route('trashed') }}">trashed cars </a></li>
      <li><a href="{{ route('trashedPost') }}">trashed posts </a></li>
    </ul>
  </div>
</nav>