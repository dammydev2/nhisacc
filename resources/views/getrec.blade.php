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
    <div class="panel-heading">Receipt Number <i class="fa fa-print"></i></div>
    <div class="panel-body">

      @if(Session::has('error'))
      <div class="alert alert-danger">
        {{ Session::get('error') }}
      </div>
      @endif

      <form method="post" action="{{ url('/confirm_rec') }}">

        @csrf

        <div class="form-group">
          <label>Select Receipt Number</label>
          <!-- Dropdown --> 
          <select id='selUser' name="rec" class="form-control">
            <option>select Receipt</option>
            @foreach($data as $row)
            <option> {{ $row->rec }}</option>
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
