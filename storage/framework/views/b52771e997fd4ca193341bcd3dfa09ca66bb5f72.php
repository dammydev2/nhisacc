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
      </tr><?php /**PATH C:\xampp\htdocs\nhisacc\resources\views/pagination_data.blade.php ENDPATH**/ ?>