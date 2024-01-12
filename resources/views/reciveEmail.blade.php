<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>reciveEmail</title>
</head>
<body>
    <h1>name: {{ $content['name'] }}</h1>
    <h5>email: {{ $content['email'] }}</h5>
    <h5>phone: {{ $content['phone'] }}</h5>
    <p>subject: {{ $content['subject'] }}</p>
    <p>You have received Message:{{ $content['message'] }}</p>
</body>
</html>