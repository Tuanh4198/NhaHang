@extends('admin.master')
@section('content')
<div class="container-fluid">

    <!-- DataTales Example -->
    <div class="card shadow mb-4">
      <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-primary">Danh sách món ăn</h6>
      </div>
      <div class="card-body">
        <div class="table-responsive" style="padding: 0 15px;">
          <div class="row">
          @foreach ($MonAn as $key => $item)
            <div class="col-3">
              <div class="product">
                <div class="product-img">
                  <img src='{{url('/uploads/'.$item->HinhAnh)}}' width="100%">
                  <div class="action">
                    <a href="{{route('suamonan',[ 'id' => $item->id])}}" class="btn btn-xs btn-info" style="margin-bottom: 5px;"> Sửa</a>
                    <a href="{{route('xoamonan',[ 'id' => $item->id])}}" class="btn btn-xs btn-danger"  onclick="return confirm('Bạn đồng ý xóa')"> Xóa</a>
                  </div>
                </div>
                <div class="product-detail">
                  <div class="product-name"> {{$item->TenMonAn}} </div>
                  <b class="product-price"> {{$item->Gia}}.VNĐ </b>
                  <div>Danh mục: {{$item->TenDanhMuc}}</div>
                </div>
              </div>
            </div>
          @endforeach
<style>
  .product-img img{
    width: 100%;
  }
  .product-detail{
    text-align: center;
    margin-top: 10px;
  }
  .product-name{
    text-transform: uppercase;
  }
  .action{
    position: absolute;
    top: 5px;
    display: flex;
    flex-direction: column;
    right: 5px;
  }
  .product-img{
    position: relative;
    overflow: hidden;
    -moz-transition: all .5s ease;
    -webkit-transition: all .5s ease;
    transition: all .5s ease;
  }
  .product-img img{
    -moz-transition: all .5s ease;
    -webkit-transition: all .5s ease;
    transition: all .5s ease;
  }
  .action a{
    transform: scale(0);
    -moz-transition: all .5s ease;
    -webkit-transition: all .5s ease;
    transition: all .5s ease;
  }
  .product:hover .action a{
    transform: scale(1);
  }
  .product:hover .product-img img{
    transform: scale(1.1);
    filter: grayscale(60%);
  }
</style>
          </div>
          <footer class="panel-footer" style="margin-top: 20px;">
            <div class="row">
              <div class="col-sm-7 text-center">
                {{ $MonAn->links() }}
              </div>
            </div>
          </footer>
        </div>
      </div>
    </div>
  </div>
@endsection


@section('script')
<script src="{{url('/')}}/js/demo/datatables-demo.js"></script>
@endsection
