<?php $__env->startSection('content'); ?>
<div class="container">
    <div class="row">

        <div class="col-sm-12" style="height: 100px;"></div>
    	<div class="col-sm-3"></div>

    	<div class="panel panel-primary col-sm-12 col-md-4">
    		<div class="panel-heading">Add Category</div>
    		<div class="panel-body">

    			<form method="post" action="<?php echo e(url('/entercategory')); ?>">

                    <?php echo csrf_field(); ?>

                    <div class="form-group has-feedback<?php echo e($errors->has('name') ? ' has-error' : ''); ?>">
                        <input type="text" class="form-control" name="name" value="<?php echo e(old('name')); ?>" placeholder="Category Name">

                        <?php if($errors->has('name')): ?>
                        <span class="help-block">
                            <strong><?php echo e($errors->first('name')); ?></strong>
                        </span>
                        <?php endif; ?>
                    </div>

                    <input type="submit" name="" class="btn btn-primary btn-block">
                    
                </form>

            </div>

        </div>


    </div>
</div>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\nhisacc\resources\views/add_category.blade.php ENDPATH**/ ?>