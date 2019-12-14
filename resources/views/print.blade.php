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
				


				<h3 style="text-transform: uppercase;"><center>{{ $row->provider }}</center></h3>

				<h5 style="text-transform: uppercase;"><center>Fee Service claim form</center></h5>

				<table class="table table-bordered">
					<tr>
						<td><span>Name of Provider: </span><b>FMC ABEOKUTA</b></td>

						<td><span>Code of HCP: </span><b>{{ $row->hcp }}</b></td
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

					<table class="table table-bordered">
						<tr>
							<th colspan="4">Details</th>
							<th>Unit price</th>
							<th>No of visit(s)</th>
							<th>Amount</th>
						</tr>
						<?php $sum=0; $sum1=0; $sum2=0; ?>
						@foreach($data2 as $row)
						<tr>
							<td colspan="4">{{ $row->details }}</td>
							<td class="text-right">{{ number_format($row->amount,2) }}</td>
							<td>{{ $row->days }}</td>
							<td class="text-right">{{ number_format($total1 = $row->amount * $row->days,2) }}</td>
						</tr>
						<?php $sum += $total1; ?>
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
							<td>{{ $row->qty }}</td>
							<td>{{ $row->price }}</td>
							<td>{{ $percent = number_format(($row->qty * $row->price) * 0.1, 2) }}</td>
							<td>{{ $amount = number_format(($row->qty * $row->price),2) }}</td>
							<td class="text-right">{{ number_format($total2 = $amount - $percent, 2) }}</td>
						</tr>
						<?php $sum1 += $total2; ?>
						@endforeach
						<tr>
							<td colspan="7"></td>
							<td class="text-right">{{ number_format($sum1,2) }}</td>
						</tr>
						<tr>
							<th colspan="4">Details</th>
							<th>Days/Visits</th>
							<td></td>
						</tr>
						@foreach($data4 as $row)
						<tr>
							<td colspan="5">{{ $row->details }}</td>
							<td>{{ $row->days }}</td>
							<td class="text-right">{{ number_format($total3 = $row->days * $row->price, 2) }}</td>
						</tr>
						<?php $sum2 += $total3; ?>
						@endforeach
						<tr>
							<td colspan="7"></td>
							<td>{{ number_format($sum2,2) }}</td>
						</tr>
						<?php $allsum = $sum + $sum1 + $sum2 ?>
						<tr>
							<th colspan="7" class="text-right">GRAND TOTAL</th>
							<th class="text-right">{{ number_format($allsum,2) }}</th>
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
								<td>Prepared by</td>
								<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Date</td>
							</tr>
						</table>

						<input type="hidden" name="amount" value="{{ $allsum }}">
						<input type="hidden" name="pro_fee" value="{{ $sum }}">
						<input type="hidden" name="drug" value="{{ $sum1 }}">
						<input type="hidden" name="surgery" value="{{ $sum2 }}">
						<input type="submit" name="" value="print" class="btn btn-primary btn-block" onclick="window.print()">
					</form>

				</div>


			</div>
		</div>
		@endsection
