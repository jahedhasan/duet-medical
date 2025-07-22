<?php
session_start();
error_reporting(0);
include('includes/dbconnection.php');
if (strlen($_SESSION['odlmsuid']==0)) {
	header('location:logout.php');
} else{



	?>
	<!DOCTYPE html>
	<html lang="en">
	<head>

		<title>Diaognostic Centre || View Test Detail</title>
		
		<link rel="stylesheet" href="libs/bower/font-awesome/css/font-awesome.min.css">
		<link rel="stylesheet" href="libs/bower/material-design-iconic-font/dist/css/material-design-iconic-font.css">
		<!-- build:css assets/css/app.min.css -->
		<link rel="stylesheet" href="libs/bower/animate.css/animate.min.css">
		<link rel="stylesheet" href="libs/bower/fullcalendar/dist/fullcalendar.min.css">
		<link rel="stylesheet" href="libs/bower/perfect-scrollbar/css/perfect-scrollbar.css">
		<link rel="stylesheet" href="assets/css/bootstrap.css">
		<link rel="stylesheet" href="assets/css/core.css">
		<link rel="stylesheet" href="assets/css/app.css">
		<!-- endbuild -->
		<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway:400,500,600,700,800,900,300">
		<script src="libs/bower/breakpoints.js/dist/breakpoints.min.js"></script>
		<script>
			Breakpoints();
		</script>
	</head>
	
	<body class="menubar-left menubar-unfold menubar-light theme-primary">
		<!--============= start main area -->



		<?php include_once('includes/header.php');?>

		<?php include_once('includes/sidebar.php');?>



		<!-- APP MAIN ==========-->
		<main id="app-main" class="app-main">
			<div class="wrap">
				<section class="app-content">
					<div class="row">
						<!-- DOM dataTable -->
						<div class="col-md-12">
							<div class="widget">
								<header class="widget-header">
									<h4 class="widget-title">Test Details</h4>
								</header><!-- .widget-header -->
								<hr class="widget-separator">
								<div class="widget-body">
									<div class="table-responsive">
										<table class="table table-bordered table-hover js-basic-example dataTable table-custom">
											<thead>
												<tr>
													<th>S.No</th>
													<th>Test Title</th>
													<th>Price</th>

													<th>Action</th>
													
												</tr>
											</thead>
											
											<tbody>

												<tr>
													<td>1</td>
													<td>Dengue Antigen NS1, IgG & IgM</td>
													<td>500</td>
													<td><a href="#"><i class="fa fa-eye" aria-hidden="true"></i></a></td>
												</tr>
												<tr>
													<td>2</td>
													<td>HbA1c</td>
													<td>300</td>
													<td><a href="#"><i class="fa fa-eye" aria-hidden="true"></i></a></td>
												</tr>
												<tr>
													<td>3</td>
													<td>Urine R/M Measure</td>
													<td>600</td>
													<td><a href="#"><i class="fa fa-eye" aria-hidden="true"></i></a></td>
												</tr>
												<tr>
													<td>4</td>
													<td>KFT</td>
													<td>700</td>
													<td><a href="#"><i class="fa fa-eye" aria-hidden="true"></i></a></td>
												</tr>
												<tr>
													<td>5</td>
													<td>Full body check up</td>
													<td>500</td>
													<td><a href="#"><i class="fa fa-eye" aria-hidden="true"></i></a></td>
												</tr>


												
											</tbody>
											<tfoot>
												<tr>
													<th>S.No</th>
													<th>Test Title</th>
													<th>Price</th>
													<th>Action</th>
												</tr>
											</tfoot>
										</table>
									</div>
								</div><!-- .widget-body -->
							</div><!-- .widget -->
						</div><!-- END column -->
						
						
					</div><!-- .row -->
				</section><!-- .app-content -->
			</div><!-- .wrap -->
			<!-- APP FOOTER -->
			<?php include_once('includes/footer.php');?>
			<!-- /#app-footer -->
		</main>
		<!--========== END app main -->

		
		<!-- build:js assets/js/core.min.js -->
		<script src="libs/bower/jquery/dist/jquery.js"></script>
		<script src="libs/bower/jquery-ui/jquery-ui.min.js"></script>
		<script src="libs/bower/jQuery-Storage-API/jquery.storageapi.min.js"></script>
		<script src="libs/bower/bootstrap-sass/assets/javascripts/bootstrap.js"></script>
		<script src="libs/bower/jquery-slimscroll/jquery.slimscroll.js"></script>
		<script src="libs/bower/perfect-scrollbar/js/perfect-scrollbar.jquery.js"></script>
		<script src="libs/bower/PACE/pace.min.js"></script>
		<!-- endbuild -->

		<!-- build:js assets/js/app.min.js -->
		<script src="assets/js/library.js"></script>
		<script src="assets/js/plugins.js"></script>
		<script src="assets/js/app.js"></script>
		<!-- endbuild -->
		<script src="libs/bower/moment/moment.js"></script>
		<script src="libs/bower/fullcalendar/dist/fullcalendar.min.js"></script>
		<script src="assets/js/fullcalendar.js"></script>
	</body>
	</html>
	<?php }  ?>