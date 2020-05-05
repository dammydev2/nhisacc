<?php $__env->startSection('content'); ?>
<div class="container">
	<div class="row">

		<div class="col-sm-12 col-lg-8 panel panel-primary">
			<div class="panel-heading">Add Patient</div>
			<div class="panel-body">

				<form method="post" action="<?php echo e(url('/enterpatient')); ?>">
					<?php echo csrf_field(); ?>

					<div class="form-group col-lg-6 has-feedback<?php echo e($errors->has('name') ? ' has-error' : ''); ?>">
						<label>Full Name</label>
						<input type="text" class="form-control" name="name" value="<?php echo e(old('name')); ?>" placeholder="Full Name">
						<span class="form-control-feedback"></span>

						<?php if($errors->has('name')): ?>
						<span class="help-block">
							<strong><?php echo e($errors->first('name')); ?></strong>
						</span>
						<?php endif; ?>
					</div>

					<div class="form-group col-lg-6 has-feedback<?php echo e($errors->has('nhis_id') ? ' has-error' : ''); ?>">
						<label>NHIS ID</label>
						<input type="text" class="form-control" name="nhis_id" value="<?php echo e(old('nhis_id')); ?>" placeholder="NHIS ID">
						<span class="form-control-feedback"></span>

						<?php if($errors->has('nhis_id')): ?>
						<span class="help-block">
							<strong><?php echo e($errors->first('nhis_id')); ?></strong>
						</span>
						<?php endif; ?>
					</div>

					<div class="form-group col-lg-6 has-feedback<?php echo e($errors->has('hmo') ? ' has-error' : ''); ?>">
						<label>HMO</label>
						<input type="text" class="form-control" name="hmo" value="<?php echo e(old('hmo')); ?>" placeholder="HMO">
						<span class="form-control-feedback"></span>

						<?php if($errors->has('hmo')): ?>
						<span class="help-block">
							<strong><?php echo e($errors->first('hmo')); ?></strong>
						</span>
						<?php endif; ?>
					</div>

					<div class="form-group col-lg-6 has-feedback<?php echo e($errors->has('phone') ? ' has-error' : ''); ?>">
						<label>Phone</label>
						<input type="text" class="form-control" name="phone" value="<?php echo e(old('phone')); ?>" placeholder="Phone">
						<span class="form-control-feedback"></span>

						<?php if($errors->has('phone')): ?>
						<span class="help-block">
							<strong><?php echo e($errors->first('phone')); ?></strong>
						</span>
						<?php endif; ?>
					</div>

					<div class="form-group col-lg-6 has-feedback<?php echo e($errors->has('ministry') ? ' has-error' : ''); ?>">
						<label>Ministry</label>
						<input type="text" class="form-control" name="ministry" value="<?php echo e(old('nhis_id')); ?>" placeholder="ministry">
						<span class="form-control-feedback"></span>

						<?php if($errors->has('ministry')): ?>
						<span class="help-block">
							<strong><?php echo e($errors->first('ministry')); ?></strong>
						</span>
						<?php endif; ?>
					</div>

					<div class="form-group col-lg-6 has-feedback<?php echo e($errors->has('address') ? ' has-error' : ''); ?>">
						<label>Address</label>
						<input type="text" class="form-control" name="address" value="<?php echo e(old('address')); ?>" placeholder="Address">
						<span class="form-control-feedback"></span>

						<?php if($errors->has('address')): ?>
						<span class="help-block">
							<strong><?php echo e($errors->first('address')); ?></strong>
						</span>
						<?php endif; ?>
					</div>

					<div class="form-group col-lg-6 has-feedback<?php echo e($errors->has('gender') ? ' has-error' : ''); ?>">
						<label>Gender</label>
						<select name="gender" class="form-control">
							<option>Male</option>
							<option>Female</option>
						</select>
					</div>

					<div class="form-group col-lg-6 has-feedback<?php echo e($errors->has('dob') ? ' has-error' : ''); ?>">
						<label>Date of Birth</label>
						<input type="date" class="form-control" name="dob" value="<?php echo e(old('dob')); ?>" placeholder="DAte of Birth">
						<span class="form-control-feedback"></span>

						<?php if($errors->has('dob')): ?>
						<span class="help-block">
							<strong><?php echo e($errors->first('dob')); ?></strong>
						</span>
						<?php endif; ?>
					</div>

					<div class="form-group col-lg-6 has-feedback<?php echo e($errors->has('marital') ? ' has-error' : ''); ?>">
						<label>Marital Status</label>
						<input type="text" class="form-control" name="marital" value="<?php echo e(old('marital')); ?>" placeholder="Marital Status">
						<span class="form-control-feedback"></span>

						<?php if($errors->has('marital')): ?>
						<span class="help-block">
							<strong><?php echo e($errors->first('marital')); ?></strong>
						</span>
						<?php endif; ?>
					</div>

					<div class="form-group col-lg-6 has-feedback<?php echo e($errors->has('occupation') ? ' has-error' : ''); ?>">
						<label>Occupation</label>
						<input type="text" class="form-control" name="occupation" value="<?php echo e(old('occupation')); ?>" placeholder="Occupation">
						<span class="form-control-feedback"></span>

						<?php if($errors->has('occupation')): ?>
						<span class="help-block">
							<strong><?php echo e($errors->first('occupation')); ?></strong>
						</span>
						<?php endif; ?>
					</div>

					<div class="form-group col-lg-6 has-feedback<?php echo e($errors->has('religion') ? ' has-error' : ''); ?>">
						<label>Religion</label>
						<input type="text" class="form-control" name="religion" value="<?php echo e(old('religion')); ?>" placeholder="Religion">
						<span class="form-control-feedback"></span>

						<?php if($errors->has('religion')): ?>
						<span class="help-block">
							<strong><?php echo e($errors->first('religion')); ?></strong>
						</span>
						<?php endif; ?>
					</div>

					<div class="form-group col-lg-6 has-feedback<?php echo e($errors->has('relationship') ? ' has-error' : ''); ?>">
						<label>Relationship</label>
						<input type="text" class="form-control" name="relationship" value="<?php echo e(old('relationship')); ?>" placeholder="Relationship">
						<span class="form-control-feedback"></span>

						<?php if($errors->has('relationship')): ?>
						<span class="help-block">
							<strong><?php echo e($errors->first('relationship')); ?></strong>
						</span>
						<?php endif; ?>
					</div>

					<div class="form-group col-lg-12 has-feedback<?php echo e($errors->has('summary') ? ' has-error' : ''); ?>">
						<label>Summary of Treatment</label>
						<input type="text" class="form-control" name="summary" value="NIL" readonly="" placeholder="Summary of Treatment">
						<span class="form-control-feedback"></span>

						<?php if($errors->has('summary')): ?>
						<span class="help-block">
							<strong><?php echo e($errors->first('summary')); ?></strong>
						</span>
						<?php endif; ?>
					</div>

					<div class="form-group col-lg-6 has-feedback<?php echo e($errors->has('diagnosis') ? ' has-error' : ''); ?>">
						<label>Diagnosis</label>
						<input type="text" class="form-control" name="diagnosis" value="NIL" readonly="" placeholder="Diagnosis">
						<span class="form-control-feedback"></span>

						<?php if($errors->has('diagnosis')): ?>
						<span class="help-block">
							<strong><?php echo e($errors->first('diagnosis')); ?></strong>
						</span>
						<?php endif; ?>
					</div>

					<div class="form-group col-lg-6 has-feedback<?php echo e($errors->has('date') ? ' has-error' : ''); ?>">
						<label>Date of Registration</label>
						<input type="text" class="form-control" name="date" value="<?php echo e(old('date')); ?>" placeholder="Date of Registration">
						<span class="form-control-feedback"></span>

						<?php if($errors->has('date')): ?>
						<span class="help-block">
							<strong><?php echo e($errors->first('date')); ?></strong>
						</span>
						<?php endif; ?>
					</div>

					<input type="submit" class="btn btn-primary" value="Register" name="">

				</form>
			</div>
		</div>


	</div>
</div>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\nhisacc\resources\views/patient/addpatient.blade.php ENDPATH**/ ?>