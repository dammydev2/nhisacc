@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">

        <div class="col-sm-12" style="height: 100px;"></div>
    	<div class="col-sm-3"></div>

    	<div class="panel panel-primary col-sm-12 col-md-4">
    		<div class="panel-heading">Add Category</div>
    		<div class="panel-body">

    			<form method="post" action="{{ url('/entercategory') }}">

                    @csrf

                    <div class="form-group has-feedback{{ $errors->has('name') ? ' has-error' : '' }}">
                        <input type="text" class="form-control" name="name" value="{{ old('name') }}" placeholder="Category Name">

                        @if ($errors->has('name'))
                        <span class="help-block">
                            <strong>{{ $errors->first('name') }}</strong>
                        </span>
                        @endif
                    </div>

                    <input type="submit" name="" class="btn btn-primary btn-block">
                    
                </form>

            </div>

        </div>


    </div>
</div>
@endsection
