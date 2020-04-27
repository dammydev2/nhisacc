<?php $__env->startSection('content'); ?>
<div class="container">
  <div class="row">

   <div class="panel panel-primary col-sm-12 col-md-11">
    <div class="panel-heading">Drugs</div>
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

      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

      <div class="container col-md-12">
       <div class="row">
        <div class="col-md-9">
          <a href="<?php echo e(url('/add_drug')); ?>" class="btn btn-primary">Add new Drug <i class="fa fa-plus"></i></a>
        </div>
        <div class="col-md-3">
         <div class="form-group">
          <input type="text" name="serach" id="serach" class="form-control" />
        </div>
      </div>
    </div>
    <div class="table-responsive">
      <table class="table table-striped table-bordered">
        <?php echo $data->links(); ?>

       <thead>
        <tr>
         <th class="sorting" data-sorting_type="asc" data-column_name="id" style="cursor: pointer">ID <span id="id_icon"></span></th>
         <th class="sorting" data-sorting_type="asc" data-column_name="post_title" style="cursor: pointer">Name <span id="post_title_icon"></span></th>
         <th>Category</th>
         <th>Dosage</th>
         <th>Strength</th>
         <th>Presentation</th>
         <th>Price</th>
       </tr>
     </thead>
     <tbody>
      <?php $__currentLoopData = $data; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $row): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
      <tr>
       <td><?php echo e($row->id); ?></td>
       <td><?php echo e($row->name); ?></td>
       <td><?php echo e($row->category); ?></td>
       <td><?php echo e($row->dosage); ?></td>
       <td><?php echo e($row->strength); ?></td>
       <td><?php echo e($row->presentation); ?></td>
       <td><?php echo e($row->price); ?></td>
       <td><a href="<?php echo e(url('/edit_drug/'.$row->id)); ?>"><i class="fa fa-edit"></i></a></td>
       <td><a href="<?php echo e(url('/drugdelete/'.$row->id)); ?>"><i class="fa fa-trash btn btn-danger"></i></a></td>
     </tr>
     <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
     <tr>
       <td colspan="3" align="center">
        <?php echo $data->links(); ?>

      </td>
    </tr>
  </tbody>
</table>
<input type="hidden" name="hidden_page" id="hidden_page" value="1" />
<input type="hidden" name="hidden_column_name" id="hidden_column_name" value="id" />
<input type="hidden" name="hidden_sort_type" id="hidden_sort_type" value="asc" />
</div>
</div>



</div>

</div>

</div>
</div>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\nhisacc\resources\views/drug.blade.php ENDPATH**/ ?>