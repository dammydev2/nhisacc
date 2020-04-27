<?php $__env->startSection('content'); ?>
<!-- Script -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src='select2/dist/js/select2.min.js' type='text/javascript'></script>

<!-- CSS -->
<link href='select2/dist/css/select2.min.css' rel='stylesheet' type='text/css'>

<div class="container">
  <div class="row">

   <div class="col-sm-12" style="height: 20px;"></div>
   <div class="col-sm-3"></div>

   <div class="panel panel-primary col-sm-12 col-md-4">
    <div class="panel-heading">Monthly Report <i class="fa fa-calender"></i></div>
    <div class="panel-body">

      <?php if(Session::has('error')): ?>
      <div class="alert alert-danger">
        <?php echo e(Session::get('error')); ?>

      </div>
      <?php endif; ?>

      <form method="post" action="<?php echo e(url('/generatemonth')); ?>">

        <?php echo csrf_field(); ?>

        <div class="form-group">
          <label>Select Health Provider</label>
          <!-- Dropdown --> 
          <select id='selUser' name="provider" class="form-control">
            <option>select Provider</option>
            <?php $__currentLoopData = $data; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $row): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
            <option value="<?php echo e($row->provider); ?>"><?php echo e($row->provider); ?> </option>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
          </select>
        </div>

        <div class="form-group col-sm-6">
          <label>Month</label>
          <select name="month" class="form-control">
            <option>01</option>
            <option>02</option>
            <option>03</option>
            <option>04</option>
            <option>05</option>
            <option>06</option>
            <option>07</option>
            <option>08</option>
            <option>09</option>
            <option>10</option>
            <option>11</option>
            <option>12</option>
          </select>
        </div>

        <?php 
        $year = date('Y');
        $year2 = $year - 3;
        ?>
        <div class="form-group col-sm-6">
          <label>Year</label>
          <select name="year" class="form-control">
            <?php for($i=$year2; $i<=$year; $i++): ?>
            <option><?php echo e($i); ?></option>
            <?php endfor; ?>
          </select>
        </div>

          <input type="submit" class="btn btn-primary btn-block" name="">

        </form>

</div>

    </div>

  </div>


</div>
</div>

<script type="text/javascript">
  $(document).ready(function(){

  // Initialize select2
  $("#selUser").select2();

  // Read selected option
  $('#but_read').click(function(){
    var username = $('#selUser option:selected').text();
    var userid = $('#selUser').val();

    $('#result').html("id : " + userid + ", name : " + username);

  });
});
</script>

<script>
  function isNumberKey(evt){
    var charCode = (evt.which) ? evt.which : event.keyCode
    if (charCode > 31 && (charCode < 48 || charCode > 57))
      return false;
    return true;
  }
</script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\nhisacc\resources\views/month.blade.php ENDPATH**/ ?>