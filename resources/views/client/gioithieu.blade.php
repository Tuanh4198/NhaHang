@extends('client.master')
@section('title')
Giới thiệu
@endsection
@section('content')
<section class="site-cover" style="background-image: url({{url('/')}}/client/images/bg_3.jpg);" id="section-home">
    <div class="container">
        <div class="row align-items-center justify-content-center text-center site-vh-100">
        <div class="col-md-12">
            <h1 class="site-heading site-animate mb-3">Giới thiệu</h1>
            <h2 class="h5 site-subheading mb-5 site-animate"><span class="mr-2"><a href="{{route('trangchu')}}">Trang chủ <i class="ion-ios-arrow-forward"></i></a></span> > <span>Giới thiệu<i class="ion-ios-arrow-forward"></i></span></h2>
        </div>
        </div>
    </div>
</section>

<section class="site-section" id="section-about">
    <div class="container">
      <div class="row">
        <div class="col-md-5 site-animate mb-5">
          <h4 class="site-sub-title">Our Story</h4>
          <h2 class="site-primary-title display-4">Nhà hàng {{$data->TenNhaHang}} </h2>
          <p>{{$data->GioiThieu1}}</p>

          <p class="mb-4">A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>
        </div>
        <div class="col-md-1"></div>
        <div class="col-md-6 site-animate img" data-animate-effect="fadeInRight">
          <img src="{{url('/')}}/client/images/about_img_1.jpg" alt="Free Template by colorlib.com" class="img-fluid">
        </div>
      </div>
    </div>
</section>
@endsection
