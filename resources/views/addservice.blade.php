@extends('layouts.app')

@section('content')
<div class="container">
  <div class="row">

   <div class="col-sm-1"></div>

   <div class="panel panel-primary col-sm-12 col-md-4">
    <div class="panel-heading">Add New Service <i class="fa fa-plus"></i></div>
    <div class="panel-body">

      @if(Session::has('success'))
      <div class="alert alert-success">
        {{ Session::get('success') }}
      </div>
      @endif

      <form method="post" action="{{ url('/enterservice') }}">

        @csrf

        <div class="form-group">
          <label class="control-label">NHIS CODE</label>
          <div class="controls">
            <input type="text" class="form-control" name="NHIS_code" id="required" maxlength="12" required="required"><!-- pattern="\d{12}" -->
          </div>
        </div>

        <div class="form-group">
          <label class="control-label">Type</label>
          <div class="controls">
            <select name="type" class="form-control">
              <option>Investigation</option>
              <option>General</option>
              <option>Surgery/Other procedure</option>
              <option>None</option>
            </select>
          </div>
        </div>

        <div class="form-group">
          <label class="control-label">DESCRIPTION</label>
          <div class="controls">
            <textarea class="form-control" name="description"></textarea>
          </div>
        </div>
        <div class="form-group">
          <label class="control-label">Price</label>
          <div class="controls">
            <input type="text" class="form-control" name="price" id="required" required="required" onkeypress="return isNumberKey(event)">
          </div>
        </div>

        <input type="submit" name="" class="btn btn-primary btn-block">

      </form>

    </div>

  </div>


</div>
</div>

<script>
      function isNumberKey(evt){
        var charCode = (evt.which) ? evt.which : event.keyCode
        if (charCode > 31 && (charCode < 48 || charCode > 57))
          return false;
        return true;
      }
    </script>
@endsection
