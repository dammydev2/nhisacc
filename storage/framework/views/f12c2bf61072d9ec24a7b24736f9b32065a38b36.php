<?php $__env->startSection('content'); ?>
<div class="container">
  <div class="row">

   <div class="col-sm-1"></div>

   <div class="panel panel-primary col-sm-12 col-md-4">
    <div class="panel-heading">Add New Drugs <i class="fa fa-plus"></i></div>
    <div class="panel-body">

      <?php if(Session::has('success')): ?>
      <div class="alert alert-success">
        <?php echo e(Session::get('success')); ?>

      </div>
      <?php endif; ?>

      <form method="post" action="<?php echo e(url('/updatedrug')); ?>">

        <?php echo csrf_field(); ?>

        <?php $__currentLoopData = $data; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $row): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>

        <div class="form-group">
          <label>Drug Category</label>
            <div class="controls">
              <input type="text" class="form-control" readonly="" value="<?php echo e($row->category); ?>" name="category" id="required" required="required">
            </div>
          </div>

          <div class="form-group">
            <label class="control-label">Drug Name</label>
            <div class="controls">
              <input type="text" class="form-control" value="<?php echo e($row->name); ?>" name="name" id="required" required="required">
            </div>
          </div>

          <div class="form-group">
            <label class="control-label">Dosage Form</label>
            <div class="controls">
              <input type="text" class="form-control" value="<?php echo e($row->dosage); ?>" name="dosage" id="HMO" required="required">
            </div>
          </div>

          <div class="form-group">
            <label class="control-label">Strength</label>
            <div class="controls">
              <input type="text" class="form-control" value="<?php echo e($row->strength); ?>" name="strength" id="required" required="required">
            </div>
          </div>

          <div class="form-group">
            <label class="control-label">Presentation</label>
            <div class="controls">
              <input type="text" class="form-control" value="<?php echo e($row->presentation); ?>" name="presentation" id="required" required="required">
            </div>
          </div>

          <div class="form-group">
            <label class="control-label">Price</label>
            <div class="controls">
              <input type="text" value="<?php echo e($row->price); ?>" class="form-control" name="price" id="required" required="required" onkeypress="return isNumberKey(event)">
            </div>
          </div>

          <input type="hidden" name="id" value="<?php echo e($row->id); ?>">

          <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

          <input type="submit" value="update drug" name="" class="btn btn-primary btn-block">

        </form>

      </div>

    </div>


  </div>
</div>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\nhisacc\resources\views/edit_drug.blade.php ENDPATH**/ ?>