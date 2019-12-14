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
					<th>Name</th>
					<th>Approval Code</th>
					<th>NHIS No</th>
					<th>Diagnosis</th>
					<th>Pro. Fees</th>
					<th>Drugs</th>
					<th>Investigation</th>
					<th>Procudure / Surgery</th>
					<th>Amount</th>
					<th>Privider</th>
				</tr>
				<?php $sum=0; ?>
				@foreach($data as $row)
				<?php 
				$sum+= $row->amount;
				$date =  $row->created_at;   
				$createDate = new DateTime($date);
				$strip = $createDate->format('Y-m-d');

				 ?>
				<tr>
					<td>{{ $strip }}</td>
					<td>{{ $row->name }}</td>
					<td></td>
					<td>{{ $row->nhis }}</td>
					<td>{{ $row->diagnosis }}</td>
					<td>{{ $row->pro_fee }}</td>
					<td>{{ $row->drug }}</td>
					<td></td>
					<td>{{ $row->surgery }}</td>
					<td>{{ number_format($row->amount, 2) }}</td>
					<td>{{ $row->provider }}</td>
				</tr>
				@endforeach
				<tr>
					<th colspan="9" class="text-right">TOTAL</th>
					<th>{{ number_format($sum,2) }}</th>
				</tr>
			</table>

		</div>


	</div>
</div>
@endsection
