@extends('layouts.app')

@section('content')
<div class="container">
  <div class="row">

   <div class="panel panel-primary col-sm-12 col-md-11">
    <div class="panel-heading">Autentication Details</div>
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
         <th class="sorting" data-sorting_type="asc" data-column_name="id" style="cursor: pointer">User ID <span id="id_icon"></span></th>
         <th class="sorting" data-sorting_type="asc" data-column_name="post_title" style="cursor: pointer">Name <span id="post_title_icon"></span></th>
         <th>Login at</th>
         <th>LOgout at</th>
       </tr>
     </thead>
     <tbody>
       @foreach($data as $row)
       <tr>
         <td>{{ $row->user_id}}</td>
         <td>{{ $row->user_name }}</td>
         <td>{{ $row->login_at }}</td>
         <td>{{ $row->logout_at }}</td>
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
