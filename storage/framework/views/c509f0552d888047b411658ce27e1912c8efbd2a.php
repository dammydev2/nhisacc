<?php $__env->startSection('content'); ?>
<div class="container">
  <div class="row">

   <div class="col-sm-1"></div>

   <div class="panel panel-primary col-sm-12 col-md-4">
    <div class="panel-heading">Add New Service <i class="fa fa-plus"></i></div>
    <div class="panel-body">

      <?php if(Session::has('success')): ?>
      <div class="alert alert-success">
        <?php echo e(Session::get('success')); ?>

      </div>
      <?php endif; ?>

      <form method="post" action="<?php echo e(url('/enterservice')); ?>">

        <?php echo csrf_field(); ?>

        <div class="form-group">
          <label class="control-label">NHIS CODE</label>
          <div class="controls">
            <input type="text" class="form-control" name="NHIS_code" id="required" maxlength="12" required="required"><!-- pattern="\d{12}" -->
          </div>
        </div>

        <div class="form-group">
          <label class="control-label">Type</label>
          <div class="controls">
            <select name="type" class="form-control">
              <option>Investigation</option>
              <option>General</option>
              <option>Surgery/Other procedure</option>
              <option>None</option>
            </select>
          </div>
        </div>

        <div class="form-group">
          <label class="control-label">DESCRIPTON</label>
          <div class="controls">
            <textarea class="form-control" name="description"></textarea>
          </div>
        </div>
        <div class="form-group">
          <label class="control-label">Price</label>
          <div class="controls">
            <input type="text" class="form-control" name="price" id="required" required="required" onkeypress="return isNumberKey(event)">
          </div>
        </div>

        <input type="submit" name="" class="btn btn-primary btn-block">

      </form>

    </div>

  </div>


</div>
</div>

<script>
      function isNumberKey(evt){
        var charCode = (evt.which) ? evt.which : event.keyCode
        if (charCode > 31 && (charCode < 48 || charCode > 57))
          return false;
        return true;
      }
    </script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\nhisacc\resources\views/addservice.blade.php ENDPATH**/ ?>