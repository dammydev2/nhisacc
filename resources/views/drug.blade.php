@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">

    	<div class="col-sm-1"></div>

    	<div class="panel panel-primary col-sm-12 col-md-10">
    		<div class="panel-heading">Drugs</div>
    		<div class="panel-body">

    			<table class="table">
    				<tr>
    					<th><center><a href="{{ url('/add_drug') }}" class="btn btn-primary">Add new Drug <i class="fa fa-plus"></i></a></center></th>
    				</tr>
    			</table>
    			
    		</div>
    		
    	</div>


    </div>
</div>
@endsection
