@extends('layouts.app')

@section('content')
<div class="container">
  <div class="row">

   <div class="col-sm-12" style="height: 20px;"></div>
   <div class="col-sm-3"></div>

   <div class="panel panel-primary col-sm-12 col-md-4">
    <div class="panel-heading">Retrieve Patient <i class="fa fa-user"></i></div>
    <div class="panel-body">

      @if(Session::has('success'))
      <div class="alert alert-success">
        {{ Session::get('success') }}
      </div>
      @endif

      <form method="post" action="{{ url('/enterservice') }}">

        @csrf

        

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
