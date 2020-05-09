<!DOCTYPE html>
<html lang="en">
  <head>
    <title>@yield('title')</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,700|Raleway" rel="stylesheet">
    <link rel="stylesheet" href="{{url('/')}}/client/css/bootstrap.min.css">
    <link rel="stylesheet" href="{{url('/')}}/client/css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="{{url('/')}}/client/css/animate.css">

    <link rel="stylesheet" href="{{url('/')}}/client/css/owl.carousel.min.css">
    <link rel="stylesheet" href="{{url('/')}}/client/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="{{url('/')}}/client/css/magnific-popup.css">

    <link rel="stylesheet" href="{{url('/')}}/client/css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="{{url('/')}}/client/css/jquery.timepicker.css">

    <link rel="stylesheet" href="{{url('/')}}/client/css/icomoon.css">
    <link rel="stylesheet" href="{{url('/')}}/client/css/style.css">
  </head>
  <body>
  @include('client.layout.header')

  @yield('content')

  @include('client.layout.footer')


  <script src="{{url('/')}}/client/js/jquery.min.js"></script>
  <script src="{{url('/')}}/client/js/popper.min.js"></script>
  <script src="{{url('/')}}/client/js/bootstrap.min.js"></script>
  <script src="{{url('/')}}/client/js/jquery.easing.1.3.js"></script>
  <script src="{{url('/')}}/client/js/jquery.waypoints.min.js"></script>
  <script src="{{url('/')}}/client/js/owl.carousel.min.js"></script>
  <script src="{{url('/')}}/client/js/jquery.magnific-popup.min.js"></script>
  <script src="{{url('/')}}/client/js/bootstrap-datepicker.js"></script>
  <script src="{{url('/')}}/client/js/jquery.timepicker.min.js"></script>
  <script src="{{url('/')}}/client/js/jquery.animateNumber.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="{{url('/')}}/client/js/google-map.js"></script>
  <script src="{{url('/')}}/client/js/main.js"></script>
  </body>
</html>
