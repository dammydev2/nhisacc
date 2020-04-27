
<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script> -->
  <?php
  $date1=date_create(date('Y-m-d'));
  $date2=date_create("2020-09-15");
  $diff=date_diff($date1,$date2);
  echo $diff =  $diff->format("%R%a days");
  $diff2 = 60;
  if ($diff <= $diff2) {
    echo "<h3 style='color: red; font-style: Trattatello;'>Demo Software may go down soonest. ALERT DEVELOPER<h3/>";
}
if ($diff < 1) {
  ?>

  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

  <div class="container">
      <!-- Trigger the modal with a button -->
      <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Open Modal</button>

      <!-- Modal -->
      <div class="modal show" id="myModal" role="dialog">
        <div class="modal-dialog">
            
          <!-- Modal content-->
          <div class="modal-content">
        <div class="modal-header"><!-- 
          <button type="button" class="close" data-dismiss="modal">&times;</button> -->
          <h4 class="modal-title"></h4>
      </div>
      <div class="modal-body">
          <p>Contact Developer.</p>
      </div>
      <div class="modal-footer">
          <!-- <button type="button" class="btn btn-default" data-dismiss="modal">Close</button> -->
      </div>
  </div>
  
</div>
</div>

</div>
<?php
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Material Login Form a Responsive Widget Template :: w3layouts</title>
    <!-- meta tags -->
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="keywords" content="Art Sign Up Form Responsive Widget, Audio and Video players, Login Form Web Template, Flat Pricing Tables, Flat Drop-Downs, Sign-Up Web Templates, 
    Flat Web Templates, Login Sign-up Responsive Web Template, Smartphone Compatible Web Template, Free Web Designs for Nokia, Samsung, LG, Sony Ericsson, Motorola Web Design"
    />
    <!-- /meta tags -->
    <!-- custom style sheet -->
    <link href="css/style.css" rel="stylesheet" type="text/css" />
    <!-- /custom style sheet -->
    <!-- fontawesome css -->
    <link href="css/fontawesome-all.css" rel="stylesheet" />
    <!-- /fontawesome css -->
    <!-- google fonts-->
    <link href="//fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i"
    rel="stylesheet">
    <!-- /google fonts-->

</head>


<body>
    <h1>NHIS Login Form</h1>
    <div class=" w3l-login-form">
        <h2>Login Here</h2>
        <form action="<?php echo e(url('/login')); ?>" method="POST">

            <?php echo csrf_field(); ?>


            <div class=" w3l-form-group <?php echo e($errors->has('email') ? ' has-error' : ''); ?>">
                <label>Username:</label>
                <div class="group">
                    <i class="fas fa-user"></i>
                    <input type="text" name="email" class="form-control" placeholder="Username" required="required" />
                </div>
                <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
                <?php if($errors->has('email')): ?>
                <span class="help-block">
                    <strong><?php echo e($errors->first('email')); ?></strong>
                </span>
                <?php endif; ?>
            </div>
            <div class=" w3l-form-group">
                <label>Password:</label>
                <div class="group">
                    <i class="fas fa-unlock"></i>
                    <input type="password" class="form-control" placeholder="Password" required="required" name="password" />
                </div>
                <span class="glyphicon glyphicon-lock form-control-feedback"></span>
                <?php if($errors->has('password')): ?>
                <span class="help-block">
                    <strong><?php echo e($errors->first('password')); ?></strong>
                </span>
                <?php endif; ?>
            </div>
            <div class="forgot">
                <!-- <a href="#">Forgot Password?</a>
                    <p><input type="checkbox">Remember Me</p> -->
                </div>
                <button type="submit">Login</button>
            </form>
            <!-- <p class=" w3l-register-p">Don't have an account?<a href="#" class="register"> Register</a></p> -->
        </div>
        <footer>
            <!-- <p class="copyright-agileinfo"> &copy; 2018 Material Login Form. All Rights Reserved | Design by <a href="http://w3layouts.com">W3layouts</a></p> -->
        </footer>
        <!-- <form action="<?php echo e(route('our_backup_database')); ?>" method="get">
            <button style="submit" class="btn btn-primary"> download Database Backup</button>
        </form> -->
    </body>

    </html><?php /**PATH C:\xampp\htdocs\nhisacc\resources\views/index.blade.php ENDPATH**/ ?>