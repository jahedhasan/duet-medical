<!doctype html>
<!DOCTYPE html>
<html lang="en">
<head>
	
	<title>Diagnostic - Login Page</title>
	

	<link rel="stylesheet" href="libs/bower/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="libs/bower/material-design-iconic-font/dist/css/material-design-iconic-font.min.css">
	<!-- <link rel="stylesheet" href="libs/bower/animate.css/animate.min.css"> -->
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
			
				<span style="color: white"><i class="fa fa-gg"></i></span>
				<span style="color: white">DIAGNOSTIC Centre</span>
			
		</div><!-- logo -->
		<div class="simple-page-form " id="login-form">
	<h4 class="form-title m-b-xl text-center">Sign In</h4>
	<form action="#" method="post">
		<div class="form-group">
			<input type="text" class="form-control" placeholder="User Name" required="true" name="username" value="" >
		</div>

		<div class="form-group">
			<input type="password" class="form-control" placeholder="Password" name="password" required="true" value="">
		</div>

		<div class="form-group m-b-xl">
			<div class="checkbox checkbox-primary">
				<input type="checkbox" id="remember" name="remember" />
				<label for="keep_me_logged_in">Keep me signed in</label>
			</div>
		</div>
		<input type="submit" class="btn btn-primary" name="login" value="SIGN IN">
	</form>
</div><!-- #login-form -->

<div class="simple-page-footer">
	<p><a href="forgot-password.php">FORGOT YOUR PASSWORD ?</a></p>
	
</div><!-- .simple-page-footer -->


	</div><!-- .simple-page-wrap -->
</body>
</html>