@extends('layouts.app')

@section('content')
<div class="container">
	<div class="row">

		<div class="col-sm-10" style="border: 1px solid #000">

			<form method="post" action="{{ url('/savemonth') }}">
				@csrf

				@foreach($data as $row)

				<input type="hidden" name="name" value="{{ $row->name }}">
				<input type="hidden" name="nhis" value="{{ $row->NHIS }}">
				<input type="hidden" name="provider" value="{{ $row->provider }}">
				<input type="hidden" name="rec" value="{{ $row->rec }}">
				<input type="hidden" name="diagnosis" value="{{ $row->diagnosis }}">
				<input type="hidden" name="name" value="{{ $row->name }}">
				


				<h4 style="text-transform: uppercase; font-weight: bold;"><center>FEDERAL MEDICAL CENTRE, ABEOKUTA</center></h4>

				<h5 style="text-transform: uppercase;"><center>{{ $row->provider }}</center></h5>

				<h5 style="text-transform: uppercase;"><center>Fee Service claim form for month of {{ date('M Y') }}</center></h5>

				<table border="1" style="width: 100%">
					<tr>
						<td><span>Name of Provider: </span><b>FMC ABEOKUTA</b></td>

						<td><span>Code of HCP: </span><b>{{ $row->hcp }}</b></td>
					</tr>
					<tr>
						<td><span>Name of Patient: </span><b>{{ $row->name }}</b></td>

						<td><span>NHIS No: </span><b>{{ $row->NHIS }}</b></td>
					</tr>
					<tr>
						<td><span>Pre Authorisation Code: </span><b>{{ $row->authorization }}</b></td>

						<td><span>Date of Presentation: </span><b>{{ $row->presentation }}</b></td>
					</tr>
					<tr>
						<td><span>Type of PA Code: </span><b>{{ $row->code }}</b></td>

						<td><span>Patient Phone No: </span><b>{{ $row->phone }}</b></td>
					</tr>
					<tr>
						<td><span>Date of Admission: </span><b>{{ $row->admission }}</b></td>

						<td><span>Date of Discharge: </span><b>{{ $row->discharge }}</b></td>
					</tr>
					<tr>
						<td colspan="2">Diagnosis: {{ $row->diagnosis }}</td>
					</tr>
				</table>
				@endforeach

				<table border="1">
					<tr>
						<th colspan="4">Details</th>
						<th>Unit price</th>
						<th>Days/No of visit(s)</th>
						<th></th>
						<th>Amount</th>
					</tr>
					<?php $sum=0; $sum1=0; $sum2=0; $surgeryCharge=0; $investigationCharge=0; ?>
					@foreach($data2 as $row)
					<tr>
						<td colspan="4">{{ $row->details }}</td>
						<td class="text-right">{{ number_format($row->amount,2) }}</td>
						<td>{{ $row->days }}</td>
						<td class="text-right">{{ number_format($total1 = $row->amount * $row->days,2) }}</td>
					</tr>
					<?php $sum += (int)$total1; ?>
					@endforeach
					<tr>
						<td colspan="7" class="text-right">TOTAL</td>
						<td>{{ number_format($sum,2) }}</td>
					</tr>

					<tr>
						<th colspan="1">Details</th>
						<th>Dosage form</th>
						<th>Dosage</th>
						<th>Price</th>
						<th>10% Payment<br>Deduction</th>
						<th>Amount</th>
						<th>90% Claim</th>
					</tr>
					@foreach($data3 as $row)
					<tr>
						<td colspan="1">{{ $row->name }}</td>
						<td>{{ $row->dosage }}</td>
						<td>{{ (int)$row->qty }}</td>
						<td>{{ (int)$row->price }}</td>
						<td>{{ $percent = number_format( $tenPercent = ( (float)$row->qty * (float)$row->price) * 0.1, 2) }}</td>
						<td>{{ $amount = number_format( $theTotalFee = ((float)$row->qty * (float)$row->price),2) }}</td>
						<td class="text-right">{{ number_format((float)$total2 = $theTotalFee - $tenPercent, 2) }}</td>
					</tr>
					<?php $sum1 += (float)$total2; ?>
					@endforeach
					<tr>
						<td colspan="7"></td>
						<td class="text-right">{{ number_format((float)$sum1,2) }}</td>
					</tr>
					<tr>
						<th colspan="4">Details</th>
						<th>Days/Visits</th>
						<td></td>
					</tr>
					@foreach($data4 as $row)
					<tr>
						<td colspan="5">{{ $row->details }}</td>
						<td>{{ (int)$row->days }}</td>
						<td class="text-right">{{ number_format((int)$total3 = (int)$row->days * (int)$row->price, 2) }}</td>
					</tr>
					<?php $sum2 += $total3; ?>
					@endforeach
					<tr>
						<td colspan="7"></td>
						<td>{{ number_format((int)$sum2,2) }}</td>
					</tr>
					<?php $allsum = $sum + $sum1 + $sum2 ?>
					<tr>
						<th colspan="7" class="text-right">GRAND TOTAL</th>
						<th class="text-right">{{ number_format((int)$allsum,2) }}</th>
					</tr>

				</table>

				<!-- <p style="padding: 10px;"><b>NB </b>Attach photocopies of prescriptions, investigations and other neccesary records to substantiate your claim. Your claim will not be processed if such evidence is not found where applicable</p> -->
				<p>&nbsp;</p>
				<p>
					<table width="90%" style="margin-left: 120px;">
						<tr>
							<td>_______________________</td>
							<td>_______________________</td>
						</tr>
						<tr>
							<td>Name, Sign & Stamp of HCP</td>
							<td>Prepared by</td>
							<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Date</td>
						</tr>
					</table>

					<?php
					foreach($surgery as $surge){
						$surgeryCharge += (int)$surge->price;
					}

					foreach($investigation as $investigations){
						$investigationCharge += (int)$investigations->price;
					}
					?>

					<input type="hidden" name="amount" value="{{ (int)$allsum }}">
					<input type="hidden" name="pro_fee" value="{{ (int)$sum }}">
					<input type="hidden" name="drug" value="{{ (int)$sum1 }}">
					<input type="hidden" name="investigation" value="{{ (int)$investigationCharge }}">
					<input type="hidden" name="surgery" value="{{ (int)$surgeryCharge }}">
					<input type="submit" name="" value="print" class="btn btn-primary btn-block" onclick="window.print()">
				</form>

			</div>


		</div>
	</div>
	@endsection
