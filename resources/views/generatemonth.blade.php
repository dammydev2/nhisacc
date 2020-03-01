@extends('layouts.app')

@section('content')
<div class="container">
	<div class="row">

		<div class="col-lg-8" style="border: 1px solid #000">
			<h3><center>FEDERAL MEDICAL CENTRE, ABEOKUTA</center></h3>
			@foreach($data as $row)
			<h5><center>FEE SERVICE CLAIM FOR {{ $row->month }} / {{ $row->year }}</center></h5>
			@endforeach

			<table class="table table-border">
				<tr>
					<th>Date</th>
					<th>NHIS No</th>
					<th>Name</th>
					<th>Amount</th>
					<th>Privider</th>
				</tr>
				<?php $sum=0; ?>
				@foreach($data as $row)
				<?php $sum+= $row->amount ?>
				<tr>
					<td>{{ $row->created_at }}</td>
					<td>{{ $row->nhis }}</td>
					<td>{{ $row->name }}</td>
					<td>{{ number_format($row->amount, 2) }}</td>
					<td>{{ $row->provider }}</td>
				</tr>
				@endforeach
				<tr>
					<th colspan="3" class="text-right">TOTAL</th>
					<th>{{ number_format($sum,2) }}</th>
				</tr>
			</table>

		</div>


	</div>
</div>
@endsection
