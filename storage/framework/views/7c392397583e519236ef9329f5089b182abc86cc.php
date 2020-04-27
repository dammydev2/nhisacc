<?php $__env->startSection('content'); ?>
<div class="container">
  <div class="row">

   <div class="panel panel-primary col-sm-12 col-md-11">
    <div class="panel-heading">Autentication Details</div>
    <div class="panel-body">

      <?php if(Session::has('success')): ?>
      <div class="alert alert-success">
        <?php echo e(Session::get('success')); ?>

      </div>
      <?php endif; ?>

      <?php if(Session::has('error')): ?>
      <div class="alert alert-danger">
        <?php echo e(Session::get('error')); ?>

      </div>
      <?php endif; ?>




      <div class="container col-md-12">
       <div class="row">
        <div class="col-md-9">
        </div>
        <div class="col-md-3">
         <div class="form-group">
          <input type="text" name="serach" id="serach" class="form-control" />
        </div>
      </div>
    </div>
    <div class="table-responsive">
      <table class="table table-striped table-bordered">
       <thead>
        <tr>
         <th class="sorting" data-sorting_type="asc" data-column_name="id" style="cursor: pointer">User ID <span id="id_icon"></span></th>
         <th class="sorting" data-sorting_type="asc" data-column_name="post_title" style="cursor: pointer">Name <span id="post_title_icon"></span></th>
         <th>Login at</th>
         <th>LOgout at</th>
       </tr>
     </thead>
     <tbody>
       <?php $__currentLoopData = $data; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $row): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
       <tr>
         <td><?php echo e($row->user_id); ?></td>
         <td><?php echo e($row->user_name); ?></td>
         <td><?php echo e($row->login_at); ?></td>
         <td><?php echo e($row->logout_at); ?></td>
       </tr>
       <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
       <tr>
         <td colspan="3" align="center">
          <?php echo $data->links(); ?>

        </td>
      </tr>
    </tbody>
  </table>
</div>
</div>






</div>

</div>


</div>
</div>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\nhisacc\resources\views/checkLogin.blade.php ENDPATH**/ ?>