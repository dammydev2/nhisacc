<?php $__env->startSection('content'); ?>
<div class="container">
    <div class="row">

        <div class="col-sm-12" style="height: 20px;"></div>

        <div class="panel panel-primary col-sm-12 col-md-10">
          <div class="panel-heading">Other Description</div>
          <div class="panel-body">

             <form method="post" action="<?php echo e(url('/enterfirst')); ?>">

                <?php echo csrf_field(); ?>

                <input type="text" value="<?php echo e(Session::get('patient')); ?>" name="patient" style="display: none;">
                <input type="text" value="<?php echo e(Session::get('rec')); ?>" name="rec" style="display: none;">

                <table class="table table-bordered table-striped list">
                    <thead>
                      <tr>
                        <th>Details</th>
                        <th style="width: 20%">Amount</th>
                        <th style="width: 20%">Days</th>
                    </tr>
                </thead>
                <tbody>
                  <tr>
                    <td><input type="text" class="form-control" name="nm[]" value="INITIAL SPECIALIST CONSULTATION" readonly></td>
                    <td><input type="number" class="form-control" min="0" name="amount[]"></td>
                    <td><input type="number" min="0" value="0" class="form-control" name="day[]"></td>
                </tr>
                <tr>
                    <td><input type="text" class="form-control" name="nm[]" value="NUMBER OF REVIEWS" readonly></td>
                    <td><input type="number" class="form-control" min="0" name="amount[]"></td>
                    <td><input type="number" min="0" class="form-control" name="day[]"></td>
                </tr>
                <tr>
                    <td><input type="text" class="form-control" name="nm[]" value="NURSING CARE DAYS" readonly></td>
                    <td><input type="number" class="form-control" required="" name="amount[]"></td>
                    <td><input type="number" required="" class="form-control" name="day[]"></td>
                </tr>
                <tr>
                    <td><input type="text" class="form-control" name="nm[]" value="OTHERS / SUBSEQUENT VISITS" readonly></td>
                    <td><input type="number" class="form-control" required="" name="amount[]"></td>
                    <td><input type="number" required="" class="form-control" name="day[]"></td>
                </tr>
            </tbody>
        </table>



        <input type="submit" name="" class="btn btn-primary btn-block">

    </form>

</div>

</div>


</div>
</div>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\nhisacc\resources\views/first.blade.php ENDPATH**/ ?>