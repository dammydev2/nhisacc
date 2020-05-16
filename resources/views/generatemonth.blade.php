@extends('layouts.app')

@section('content')
<div class="container">
	<div class="row">
<button onclick="window.print()" class="btn btn-primary">Print</button>
		<div class="col-lg-10" style="border: 1px solid #000">
			<h4><center>FEDERAL MEDICAL CENTRE, ABEOKUTA</center></h4>
			@foreach($data as $row)
			@endforeach
			<h4><center>{{ $row->provider }}</center></h4>
			<h5><center>FEE SERVICE CLAIM FOR {{ $row->month }} / {{ $row->year }}</center></h5>
			



			<table class="text-lowercase" style="font-size: 12px;" border="1">
				<tr>
					<th style="width: 60px;">Date</th>
					<th>Name</th>
					<th>Authorisation Code</th>
					<th>NHIS No</th>
					<th>Diagnosis</th>
					<th>Prof. Fees</th>
					<th>Drugs (90%)</th>
					<th>Investigation</th>
					<th>Surgery/other Procedure</th>
					<th style="width: 100px;">Amount</th>
				</tr>
				<?php $sum=0; $pro=0; $drug=0; $inv=0; $surg=0; ?>
				@foreach($data as $row)

				<?php 
			
				$sum+= $row->amount;
				$pro+= $row->pro_fee;
				$inv+= $row->investigation;
				$drug+= $row->drug;
				$surg+= $row->surgery;
				$date =  $row->created_at;   
				$createDate = new DateTime($date);
				$strip = $createDate->format('Y-m-d');
				 ?>
				<tr>
					<td style="font-size: 10px;">{{ $strip }}</td>
					<td>{{ $row->name }}</td>
					<td>{{ $row->approval_code }}</td>
					<td>{{ $row->nhis }}</td>
					<td>{{ $row->diagnosis }}</td>
					<td>{{ $row->pro_fee }}</td>
					<td>{{ $row->drug }}</td>
					<td>{{ $row->investigation }}</td>
					<td>{{ $row->surgery }}</td>
					<td>{{ number_format($row->amount, 2) }}</td>
				</tr>
				@endforeach
				<tr>
					<th colspan="5" class="text-right">TOTAL</th>
					<th>{{ $pro }}</th>
					<th>{{ $drug }}</th>
					<th>{{ $inv }}</th>
					<th>{{ $surg }}</th>
					<th>{{ number_format($sum,2) }}</th>
				</tr>
			</table>

		</div>
		</div>
</div>
<style type="text/css">
	th, td, tr{
		border: 1px solid #000;
	}
</style>
@endsection