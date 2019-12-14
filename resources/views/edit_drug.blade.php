@extends('layouts.app')

@section('content')
<div class="container">
  <div class="row">

   <div class="col-sm-1"></div>

   <div class="panel panel-primary col-sm-12 col-md-4">
    <div class="panel-heading">Add New Drugs <i class="fa fa-plus"></i></div>
    <div class="panel-body">

      @if(Session::has('success'))
      <div class="alert alert-success">
        {{ Session::get('success') }}
      </div>
      @endif

      <form method="post" action="{{ url('/updatedrug') }}">

        @csrf

        @foreach($data as $row)

        <div class="form-group">
          <label>Drug Category</label>
            <div class="controls">
              <input type="text" class="form-control" readonly="" value="{{ $row->category }}" name="category" id="required" required="required">
            </div>
          </div>

          <div class="form-group">
            <label class="control-label">Drug Name</label>
            <div class="controls">
              <input type="text" class="form-control" value="{{ $row->name }}" name="name" id="required" required="required">
            </div>
          </div>

          <div class="form-group">
            <label class="control-label">Dosage Form</label>
            <div class="controls">
              <input type="text" class="form-control" value="{{ $row->dosage }}" name="dosage" id="HMO" required="required">
            </div>
          </div>

          <div class="form-group">
            <label class="control-label">Strength</label>
            <div class="controls">
              <input type="text" class="form-control" value="{{ $row->strength }}" name="strength" id="required" required="required">
            </div>
          </div>

          <div class="form-group">
            <label class="control-label">Presentation</label>
            <div class="controls">
              <input type="text" class="form-control" value="{{ $row->presentation }}" name="presentation" id="required" required="required">
            </div>
          </div>

          <div class="form-group">
            <label class="control-label">Price</label>
            <div class="controls">
              <input type="text" value="{{ $row->price }}" class="form-control" name="price" id="required" required="required" onkeypress="return isNumberKey(event)">
            </div>
          </div>

          <input type="hidden" name="id" value="{{ $row->id }}">

          @endforeach

          <input type="submit" value="update drug" name="" class="btn btn-primary btn-block">

        </form>

      </div>

    </div>


  </div>
</div>
@endsection
