<!DOCTYPE html>
<html lang="en">
<head>
	
	<title>MTM LAB - User Sign Up</title>
	
	
	<link rel="stylesheet" href="libs/bower/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="libs/bower/material-design-iconic-font/dist/css/material-design-iconic-font.min.css">
	<link rel="stylesheet" href="assets/css/bootstrap.css">
	<link rel="stylesheet" href="assets/css/core.css">
	<link rel="stylesheet" href="assets/css/misc-pages.css">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway:400,500,600,700,800,900,300">
</head>
<body class="simple-page">
	<div id="back-to-home">
		<a href="../index.php" class="btn btn-outline btn-default"><i class="fa fa-home animated zoomIn"></i></a>
	</div>
	<div class="simple-page-wrap">
		<div class="simple-page-logo">
			
				<span style="color: white">DIAGNOSTIC Centre</span>
			
		</div><!-- logo -->
		
<div class="simple-page-form" id="signup-form">
	<h4 class="form-title m-b-xl text-center">Sign Up For a new Account</h4>
	<form action="" method="post">
		<div class="form-group">
			<input id="fname" type="text" class="form-control" placeholder="Full Name" name="fname" required="true">
		</div>

		<div class="form-group">
			<input id="email" type="email" class="form-control" placeholder="Email" name="email" required="true">
		</div>
		<div class="form-group">
			<input id="mobno" type="text" class="form-control" placeholder="Mobile" name="mobno" maxlength="10" pattern="[0-9]+" required="true">
		</div>

		<div class="form-group">
			<input id="password" type="password" class="form-control" placeholder="Password" name="password" required="true">
		</div>

		<input type="submit" class="btn btn-primary" value="Register" name="submit">
	</form>
</div><!-- #login-form -->

<div class="simple-page-footer">
	<p>
		<small>Do you have an account ?</small>
		<a href="login.php">SIGN IN</a>
	</p>
</div><!-- .simple-page-footer -->


	</div><!-- .simple-page-wrap -->
</body>
</html>