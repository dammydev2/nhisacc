<?php $__env->startSection('content'); ?>
<div class="container">
	<div class="row">

		<?php if(Session::has('success')): ?>
		<div class="alert alert-success">
			<?php echo e(Session::get('success')); ?>

		</div>
		<?php endif; ?>

		<?php if(Session::has('danger')): ?>
		<div class="alert alert-danger">
			<?php echo e(Session::get('danger')); ?>

		</div>
		<?php endif; ?>

		<?php echo e($data->links()); ?>


		<div class="span3 achievements-wrapper">
			<table class="table" >
				<tr>
					<th colspan="16"><center><a href="<?php echo e(url('/addpatient')); ?>" class="btn btn-primary" ><i class="fa fa-user-plus">Add New patient</i></a></center></th>
				</tr>
				<tr>
					<th></th>
					<th>Name</th>
					<th>Patient id</th>
					<th>NHIS ID</th>
					<th>HMO</th>
					<th>Phone</th>
					<th>Ministry</th>
					<th>Address</th>
					<th>Gender</th>
					<th>DOB</th>
					<th>Marital</th>
					<th>Occupation</th>
					<th>Religion</th>
					<th>Relationship</th>
					<th>Summary</th>
					<th>Diagnosis</th>
					<th>Regst. Date</th>
					<th></th>
				</tr>
				<?php $__currentLoopData = $data; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $row): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
				<tr>
					<td><a href="<?php echo e(url('/slot/'.$row->id)); ?>">Slot</a></td>
					<td><?php echo e($row->name); ?></td>
					<td><?php echo e($row->patient_id); ?></td>
					<td><?php echo e($row->nhis_id); ?></td>
					<td><?php echo e($row->hmo); ?></td>
					<td><?php echo e($row->phone); ?></td>
					<td><?php echo e($row->ministry); ?></td>
					<td><?php echo e($row->address); ?></td>
					<td><?php echo e($row->gender); ?></td>
					<td><?php echo e($row->dob); ?></td>
					<td><?php echo e($row->marital); ?></td>
					<td><?php echo e($row->occupation); ?></td>
					<td><?php echo e($row->religion); ?></td>
					<td><?php echo e($row->relationship); ?></td>
					<td><?php echo e($row->summary); ?></td>
					<td><?php echo e($row->diagnosis); ?></td>
					<td><?php echo e($row->date); ?></td>
					<td><a href="<?php echo e(url('/patientDelete/'.$row->id)); ?>"><i class="fa fa-trash btn btn-danger"></i></a></td>
				</tr>
				<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
			</table>
		</div>


	</div>
</div>

<style type="text/css">
	.achievements-wrapper 
	{ 
		height: 700px; 
		width: 1000px; 
		overflow: auto; 
	}

th, td{
	border: 1px solid #000;
}

</style>

<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\nhisacc\resources\views/patient/patient.blade.php ENDPATH**/ ?>