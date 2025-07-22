
<!DOCTYPE HTML>
<html>
<head>
<title>DUET MEDICAL| Home Page</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />


<script src="js/jquery-1.8.3.min.js"></script>
<script src="js/modernizr.custom.97074.js"></script>
<!---- start-smoth-scrolling---->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
 <script type="text/javascript">
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event){		
				event.preventDefault();
				$('html,body').animate({scrollTop:$(this.hash).offset().top},1200);
			});
		});
	</script>
<!---End-smoth-scrolling---->


</head>
<body>
	<div class="header" id="home">
		<div class="header-top">
			<div class="container">
			   <div class="logo">
				  <a href="index.php">DUET MEDICAL<span>Centre</span></a>
				</div>
				<div class="top-menu">
					<span class="menu"><img src="images/nav.png" alt=""/> </span>
						<ul>
						<li><a href="index.php" class="active scroll">home</a></li>
						<li><a href="#aboutus" class="scroll">about us</a></li>
						<li><a href="#contactus" class="scroll">contact us</a></li>
						<li><a href="#gallery" class="scroll">gallery</a></li>
						<li><a href="admin/login.php">Admin</a></li>
						<li><a href="user/login.php">Users</a></li>
						<li><a href="employee/login.php">Employee</a></li>
					</ul>
				</div>
					 <!--script-nav-->
						 <script>
						 $("span.menu").click(function(){
						 $(".top-menu ul").slideToggle("slow" , function(){
						 });
						 });
						 </script>
		 
						<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<div class="content">
			<div class="about-section" id="aboutus">
				<div class="container">
					<h3>welcome to the laboratory !</h3>
					    <div class="about-grids">
							<div class="col-md-4 about-grid">
								<img src="images/p1.jpg" class="img-responsive" alt="">
								<h4>CHIKUNGUNYA</h4>
								<p>Chikungunya is a mosquito-borne viral disease caused by the chikungunya virus (CHIKV), an RNA virus in the alphavirus genus of the family Togaviridae. The name chikungunya derives from a word in the Kimakonde language, meaning “to become contorted”.</p>
							</div>
							<div class="col-md-4 about-grid">
								<img src="images/p2.jpg"  class="img-responsive" alt="">
								<h4>COVID-19</h4>
								<p>Coronavirus disease 2019 (COVID-19) is a contagious disease caused by the virus SARS-CoV-2. The first known case was identified in Wuhan, China, in December 2019. The disease quickly spread worldwide, resulting in the COVID-19 pandemic.</p>
							</div>
							<div class="col-md-4 about-grid">
								<img src="images/p3.jpg"  class="img-responsive" alt="">
								<h4>ULTRASONOGRAPHY</h4>
								<p>Ultrasonography is a type of medical imaging that uses high-frequency sound (ultrasound) waves to produce images of internal organs and other tissues. During an ultrasound, a device called a transducer converts electrical current into sound waves, which are sent into the body's tissues.</p>
							</div>
								<div class="clearfix"></div>
						</div>
					</div>
				</div>
		
	<div class="gallery" id="gallery">
		<div class="container">
			<h3>gallery</h3>
			<div class="row" style="margin-top: 10px">
			  <div class="col-md-4">
			    <div class="thumbnail">
			        <img src="images/g1.jpg" alt="Lights" style="width:100%">
			    </div>
			  </div>
			  <div class="col-md-4">
			    <div class="thumbnail">
			        <img src="images/g2.jpg" alt="Nature" style="width:100%">
			    </div>
			  </div>
			  <div class="col-md-4">
			    <div class="thumbnail">
			        <img src="images/g3.jpg" alt="Fjords" style="width:100%">
			    </div>
			  </div>
			  <div class="col-md-4">
			    <div class="thumbnail">
			        <img src="images/g4.jpg" alt="Fjords" style="width:100%">
			    </div>
			  </div>
			  <div class="col-md-4">
			    <div class="thumbnail">
			        <img src="images/g5.jpg" alt="Fjords" style="width:100%">
			    </div>
			  </div>
			  <div class="col-md-4">
			    <div class="thumbnail">
			        <img src="images/g6.jpg" alt="Fjords" style="width:100%">
			    </div>
			  </div>
			</div>
	</div>
</div>
<!--//gallery-->

<div class="contact_us" id="contactus">
		<div class="container">
			<center>
				<h3>Contact Us </h3>
				<div style="padding: 20px;font-weight: bold;">
					
					
					<p>204003 - Jahed hasan </p>
					<p>204057 - Sabbir Hossain Sojib</p>
					<p>204058 - Md. Ayatullah</p>
				</div>
				
			</center>
        </div>
	</div>
</div>
<!--//Contact us-->


	<div class="footer-section">
						<div class="container">
							<div class="footer-bottom">
						<p>All rights reserved. @ 2025</p>
									</div>
							<script type="text/javascript">
						$(document).ready(function() {
							/*
							var defaults = {
					  			containerID: 'toTop', // fading element id
								containerHoverID: 'toTopHover', // fading element hover id
								scrollSpeed: 1200,
								easingType: 'linear' 
					 		};
							*/
							
							$().UItoTop({ easingType: 'easeOutQuart' });
							
						});
					</script>
				<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
				</div>
			</div>
</body>
</html>