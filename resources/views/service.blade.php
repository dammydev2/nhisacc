@extends('layouts.app')

@section('content')
<div class="container">
  <div class="row">

   <div class="panel panel-primary col-sm-12 col-md-11">
    <div class="panel-heading">Service(s)</div>
    <div class="panel-body">

      @if(Session::has('success'))
      <div class="alert alert-success">
        {{ Session::get('success') }}
      </div>
      @endif

      @if(Session::has('error'))
      <div class="alert alert-danger">
        {{ Session::get('error') }}
      </div>
      @endif




      <div class="container col-md-12">
       <div class="row">
        <div class="col-md-9">
          <center><a href="{{ url('/addservice') }}" class="btn btn-primary"><i class="fa fa-plus"></i> Add new Service</a></center>
        </div>
        <div class="col-md-3">
         <div class="form-group">
          <input type="text" name="serach" id="serach" class="form-control" />
        </div>
      </div>
    </div>
    <div class="table-responsive">
      <table class="table table-striped table-bordered">
       <thead>
        <tr>
         <th class="sorting" data-sorting_type="asc" data-column_name="id" style="cursor: pointer">ID <span id="id_icon"></span></th>
         <th class="sorting" data-sorting_type="asc" data-column_name="post_title" style="cursor: pointer">NHIS Code <span id="post_title_icon"></span></th>
         <th>Description</th>
         <th>Price</th>
         <th>Type</th>
       </tr>
     </thead>
     <tbody>
       @foreach($data as $row)
       <tr>
         <td>{{ $row->id}}</td>
         <td>{{ $row->NHIS_code }}</td>
         <td>{{ $row->description }}</td>
         <td>{{ $row->price }}</td>
         <td> {{ $row->type }} </td>
         <td><a href="{{ url('/editservice/'.$row->id) }}"><i class="fa fa-edit"></i></a></td>
         <td><a href="{{ url('/servicedelete/'.$row->id) }}"><i class="fa fa-trash btn btn-danger"></i></a></td>
       </tr>
       @endforeach
       <tr>
         <td colspan="3" align="center">
          {!! $data->links() !!}
        </td>
      </tr>
    </tbody>
  </table>
</div>
</div>






</div>

</div>


</div>
</div>
@endsection
