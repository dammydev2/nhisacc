<?php $__env->startSection('content'); ?>
<div class="container">
	<div class="row">
<button onclick="window.print()" class="btn btn-primary">Print</button>
		<div class="col-lg-10" style="border: 1px solid #000">
			<h4><center>FEDERAL MEDICAL CENTRE, ABEOKUTA</center></h4>
			<?php $__currentLoopData = $data; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $row): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
			<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
			<h4><center><?php echo e($row->provider); ?></center></h4>
			<h5><center>FEE SERVICE CLAIM FOR <?php echo e($row->month); ?> / <?php echo e($row->year); ?></center></h5>
			



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
				<?php $__currentLoopData = $data; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $row): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>

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
					<td style="font-size: 10px;"><?php echo e($strip); ?></td>
					<td><?php echo e($row->name); ?></td>
					<td><?php echo e($row->approval_code); ?></td>
					<td><?php echo e($row->nhis); ?></td>
					<td><?php echo e($row->diagnosis); ?></td>
					<td><?php echo e($row->pro_fee); ?></td>
					<td><?php echo e($row->drug); ?></td>
					<td><?php echo e($row->investigation); ?></td>
					<td><?php echo e($row->surgery); ?></td>
					<td><?php echo e(number_format($row->amount, 2)); ?></td>
				</tr>
				<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
				<tr>
					<th colspan="5" class="text-right">TOTAL</th>
					<th><?php echo e($pro); ?></th>
					<th><?php echo e($drug); ?></th>
					<th><?php echo e($inv); ?></th>
					<th><?php echo e($surg); ?></th>
					<th><?php echo e(number_format($sum,2)); ?></th>
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
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\nhisacc\resources\views/generatemonth.blade.php ENDPATH**/ ?>