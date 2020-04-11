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
    <div class="panel-heading">Retrieve Patient <i class="fa fa-user"></i></div>
    <div class="panel-body">

      <?php if(Session::has('success')): ?>
      <div class="alert alert-success">
        <?php echo e(Session::get('success')); ?>

      </div>
      <?php endif; ?>

      <form method="post" action="<?php echo e(url('/enterconsultation')); ?>">

        <?php echo csrf_field(); ?>

        <div class="form-group">
          <label>Select Patient</label>
          <!-- Dropdown --> 
          <select id='selUser' class="form-control">
            <option>select patient</option>
            <?php $__currentLoopData = $data; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $row): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
            <option  data-nhis="<?php echo e($row->nhis_id); ?>"  data-patient="<?php echo e($row->patient_id); ?>" data-phone="<?php echo e($row->phone); ?>" data-name="<?php echo e($row->name); ?>">(<?php echo e($row->patient_id); ?>) <?php echo e($row->name); ?></option>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
          </select>
        </div>
        <hr>
        <br>

        <div class="form-group">
          <label class="control-label">Patient Name</label>
          <div class="controls">
            <input type="text" class="form-control" name="name" value="" readonly id="name" required="required">
          </div>
        </div>

        <div class="form-group">
          <label class="control-label">NHIS NO</label>
          <div class="controls">
            <input type="text" class="form-control" name="NHIS" readonly="readonly" readonly value="" id="nhis" required="required">
          </div>
        </div>

        <div class="form-group">
          <label class="control-label">System Number</label>
          <div class="controls">
            <input type="text" class="form-control" name="patient" readonly="readonly" readonly value="" id="patient" required="required">
          </div>
        </div>

        <div class="form-group">
          <label class="control-label">Service Provider</label>
          <div class="controls">
            <input type="text" class="form-control" name="provider" placeholder="e.g: UNITED HEALTH CARE" id="required" required="required">
          </div>
        </div>

        <div class="form-group">
          <label class="control-label">Authorization Code</label>
          <div class="controls">
            <input type="text" name="authorization" class="form-control" value="" id="required" required="required">
          </div>
        </div>

        <div class="form-group">
          <label class="control-label">HCP Code</label>
          <div class="controls">
            <input type="text" name="HCP" class="form-control" id="required" required="required">
          </div>
        </div>

        <div class="form-group">
          <label class="control-label">Date of Presentation</label>
          <div class="controls">
            <input type="date" class="form-control" name="presentation" id="required" >
          </div>
        </div>

        <div class="form-group">
          <label class="control-label">Date of Admission</label>
          <div class="controls">
            <input type="date" class="form-control" name="admission" id="required">
          </div>
        </div>

        <div class="form-group">
          <label class="control-label">Date of Discharge</label>
          <div class="controls">
            <input type="date" class="form-control" name="discharge" id="required">
          </div>
        </div>

        <div class="form-group">
          <label class="control-label">Diagnosis</label>
          <div class="controls">
            <input type="text" class="form-control" name="diagnosis" id="required">
          </div>
        </div>

        <div class="form-group">
          <label class="control-label">Patient Phone Number</label>
          <div class="controls">
            <input type="text" readonly="" name="phone" maxlength="11"  id="phone" pattern="\d{11}" class="form-control">
          </div>
        </div>

        <div class="form-group">
          <label class="control-label">Type of PA Code</label>
          <div class="controls">
            <label>
              <input type="radio" class="inputbox" name="code" onchange="show(this.value)" value="Referral">Referral
            </label><br>
            <label>
              <input type="radio" class="inputbox" id="e1" onchange="show2()" name="code" value="Station">Out of Station
            </label>                         
          </div>
        </div>

        <input type="submit" class="btn btn-primary btn-block" name="">

      </form>

        <script type="text/javascript">
          $(document).ready(function(){ 
            $("#selUser").on('change',function(){
              var name = $("#selUser :selected").attr("data-name");
              var nhis = $("#selUser :selected").attr("data-nhis");
              var patient = $("#selUser :selected").attr("data-patient");
              var phone = $("#selUser :selected").attr("data-phone");
              $('#name').val(name);
              $('#nhis').val(nhis);
              $('#patient').val(patient);
              $('#phone').val(phone);
            });
          });
        </script>

      </form>

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

<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\nhisacc\resources\views/consultation.blade.php ENDPATH**/ ?>