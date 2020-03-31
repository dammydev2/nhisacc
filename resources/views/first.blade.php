@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">

        <div class="col-sm-12" style="height: 20px;"></div>

        <div class="panel panel-primary col-sm-12 col-md-10">
          <div class="panel-heading">Other Description</div>
          <div class="panel-body">

             <form method="post" action="{{ url('/enterfirst') }}">

                @csrf

                <input type="text" value="{{ Session::get('patient') }}" name="patient" style="display: none;">
                <input type="text" value="{{ Session::get('rec') }}" name="rec" style="display: none;">

                <table class="table table-bordered table-striped list">
                    <thead>
                      <tr>
                        <th>Details</th>
                        <th style="width: 20%">Amount</th>
                        <th style="width: 20%">Days</th>
                    </tr>
                </thead>
                <tbody>
                  <tr>
                    <td><input type="text" class="form-control" name="nm[]" value="INITIAL SPECIALIST CONSULTATION" readonly></td>
                    <td><input type="number" class="form-control" min="1" name="amount[]"></td>
                    <td><input type="number" min="1" value="1" class="form-control" name="day[]" style="display: none;"></td>
                </tr>
                <tr>
                    <td><input type="text" class="form-control" name="nm[]" value="NUMBER OF REVIEWS" readonly></td>
                    <td><input type="number" class="form-control" min="1" name="amount[]"></td>
                    <td><input type="number" min="1" class="form-control" name="day[]"></td>
                </tr>
                <tr>
                    <td><input type="text" class="form-control" name="nm[]" value="NURSING CARE DAYS" readonly></td>
                    <td><input type="number" class="form-control" min="1" name="amount[]"></td>
                    <td><input type="number" min="1" class="form-control" name="day[]"></td>
                </tr>
                <tr>
                    <td><input type="text" class="form-control" name="nm[]" value="OTHERS / SUBSEQUENT VISITS" readonly></td>
                    <td><input type="number" class="form-control" min="1" name="amount[]"></td>
                    <td><input type="number" min="1" class="form-control" name="day[]"></td>
                </tr>
            </tbody>
        </table>



        <input type="submit" name="" class="btn btn-primary btn-block">

    </form>

</div>

</div>


</div>
</div>
@endsection
