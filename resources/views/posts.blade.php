<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
@include('includes.nav')
<div class="container">
  <h2>posts list</h2>            
  <table class="table table-hover">
    <thead>
      <tr>
        <th>title</th>
        <th>created_at</th>
        <th>Edit</th>
      </tr>
    </thead>
    <tbody>
     @foreach($posts as $p)   
      <tr>
        <td>{{$p->postTitle}}</td>
        <td>{{$p->created_at}}</td>
        <td><a href="editpost/{{ $p->id }}">edit</a></td>
      </tr>
      @endforeach
    </tbody>
  </table>
</div>

</body>
</html>