@extends('layouts.app')

@section('content')
<div class="container">
  <div class="row">

   <div class="panel panel-primary col-sm-12 col-md-11">
    <div class="panel-heading">Drugs</div>
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

      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

      <div class="container col-md-12">
       <div class="row">
        <div class="col-md-9">
          <a href="{{ url('/add_drug') }}" class="btn btn-primary">Add new Drug <i class="fa fa-plus"></i></a>
        </div>
        <div class="col-md-3">
         <div class="form-group">
          <input type="text" name="serach" id="serach" class="form-control" />
        </div>
      </div>
    </div>
    <div class="table-responsive">
      <table class="table table-striped table-bordered">
        {!! $data->links() !!}
       <thead>
        <tr>
         <th class="sorting" data-sorting_type="asc" data-column_name="id" style="cursor: pointer">ID <span id="id_icon"></span></th>
         <th class="sorting" data-sorting_type="asc" data-column_name="post_title" style="cursor: pointer">Name <span id="post_title_icon"></span></th>
         <th>Category</th>
         <th>Dosage</th>
         <th>Strength</th>
         <th>Presentation</th>
         <th>Price</th>
       </tr>
     </thead>
     <tbody>
      @foreach($data as $row)
      <tr>
       <td>{{ $row->id}}</td>
       <td>{{ $row->name }}</td>
       <td>{{ $row->category }}</td>
       <td>{{ $row->dosage }}</td>
       <td>{{ $row->strength }}</td>
       <td>{{ $row->presentation }}</td>
       <td>{{ $row->price }}</td>
       <td><a href="{{ url('/edit_drug/'.$row->id) }}"><i class="fa fa-edit"></i></a></td>
       <td><a href="{{ url('/drugdelete/'.$row->id) }}"><i class="fa fa-trash btn btn-danger"></i></a></td>
     </tr>
     @endforeach
     <tr>
       <td colspan="3" align="center">
        {!! $data->links() !!}
      </td>
    </tr>
  </tbody>
</table>
<input type="hidden" name="hidden_page" id="hidden_page" value="1" />
<input type="hidden" name="hidden_column_name" id="hidden_column_name" value="id" />
<input type="hidden" name="hidden_sort_type" id="hidden_sort_type" value="asc" />
</div>
</div>



</div>

</div>

</div>
</div>
@endsection
