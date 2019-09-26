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

                <div class="form-group">
                    <label>Drug Category</label>
                    <input list="browsers" class="form-control" name="browser">
                    <datalist id="browsers">
                        @foreach($data as $row)
                        <option value="{{ $row->name }}">
                            @endforeach
                        </datalist>
                        <a href="{{ url('/add_category') }}">add new category</a>
                    </div>

                    <div class="form-group">
                        <label class="control-label">Drug Name</label>
                        <div class="controls">
                          <input type="text" class="form-control" name="Name" id="required" required="required">
                      </div>
                  </div>

                  <div class="form-group">
                    <label class="control-label">Dosage Form</label>
                    <div class="controls">
                      <input type="text" class="form-control" name="Dosage" id="HMO" required="required">
                  </div>
              </div>

              <div class="form-group">
                <label class="control-label">Strength</label>
                <div class="controls">
                  <input type="text" class="form-control" name="Strength" id="required" required="required">
              </div>
          </div>

          <div class="form-group">
            <label class="control-label">Presentation</label>
            <div class="controls">
              <input type="text" class="form-control" name="Presentation" id="required" required="required">
          </div>
      </div>

      <div class="form-group">
        <label class="control-label">Price</label>
        <div class="controls">
          <input type="text" class="form-control" name="Price" id="required" required="required" onkeypress="return isNumberKey(event)">
      </div>
  </div>

  <input type="submit" value="add drug" name="" class="btn btn-primary btn-block">

</div>

</div>


</div>
</div>
@endsection
