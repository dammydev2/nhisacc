@extends('layouts.app')

@section('content')
<!-- Script -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src='select2/dist/js/select2.min.js' type='text/javascript'></script>

<!-- CSS -->
<link href='select2/dist/css/select2.min.css' rel='stylesheet' type='text/css'>

<div class="container">
  <div class="row">

   <div class="col-sm-12" style="height: 20px;"></div>
   <div class="col-sm-3"></div>

   <div class="panel panel-primary col-sm-12 col-md-4">
    <div class="panel-heading">Retrieve Patient <i class="fa fa-user"></i></div>
    <div class="panel-body">

      @if(Session::has('error'))
      <div class="alert alert-danger">
        {{ Session::get('error') }}
      </div>
      @endif

      <form method="post" action="{{ url('/check_history') }}">

        @csrf

        <div class="form-group">
          <label>Select Patient</label>
          <!-- Dropdown --> 
          <select id='selUser' name="patient" class="form-control">
            <option>select patient</option>
            @foreach($data as $row)
            <option value="{{ $row->patient_id }}">({{ $row->patient_id }}) {{ $row->name }}</option>
            @endforeach
          </select>
        </div>

        <input type="submit" class="btn btn-primary btn-block" name="">

      </form>

      </form>

    </div>

  </div>


</div>
</div>

<script type="text/javascript">
  $(document).ready(function(){

  // Initialize select2
  $("#selUser").select2();

  // Read selected option
  $('#but_read').click(function(){
    var username = $('#selUser option:selected').text();
    var userid = $('#selUser').val();

    $('#result').html("id : " + userid + ", name : " + username);

  });
});
</script>

<script>
  function isNumberKey(evt){
    var charCode = (evt.which) ? evt.which : event.keyCode
    if (charCode > 31 && (charCode < 48 || charCode > 57))
      return false;
    return true;
  }
</script>
@endsection
