<?php
session_start();
error_reporting(0);
include('includes/dbconnection.php');
if (strlen($_SESSION['dmaid']==0)) {
  header('location:logout.php');
  } else{
    if(isset($_POST['submit']))
  {


$title=$_POST['title'];
$desc=$_POST['description'];
$interpretation=$_POST['interpretation'];
$price=$_POST['price'];


$sql="insert into tbllabtest(TestTitle,TestDescription,TestInterpretation,Price)values(:title,:desc,:interpretation,:price)";
$query=$dbh->prepare($sql);
$query->bindParam(':title',$title,PDO::PARAM_STR);
$query->bindParam(':desc',$desc,PDO::PARAM_STR);
$query->bindParam(':interpretation',$interpretation,PDO::PARAM_STR);
$query->bindParam(':price',$price,PDO::PARAM_STR);
 $query->execute();

   $LastInsertId=$dbh->lastInsertId();
   if ($LastInsertId>0) {
    echo '<script>alert("Test detail has been added.")</script>';
echo "<script>window.location.href ='add-test.php'</script>";
  }
  else
    {
         echo '<script>alert("Something Went Wrong. Please try again")</script>';
    }

  
}

?>
<!DOCTYPE html>
<html lang="en">
<head>
  
  <title>DUET MEDICAL Center - Add Test Detail</title>
  
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
     
      <div class="col-md-12">
        <div class="widget">
          <header class="widget-header">
            <h3 class="widget-title">Add Test Detail</h3>
          </header><!-- .widget-header -->
          <hr class="widget-separator">
          <div class="widget-body">
           
            <form class="form-horizontal" method="post">
              <div class="form-group">
                <label for="exampleTextInput1" class="col-sm-3 control-label">Test Title:</label>
                <div class="col-sm-9">
                  <input type="text" class="form-control" id="exampleTextInput1" name="title" value="" required='true'>
                </div>
              </div>
              <div class="form-group">
                <label for="email2" class="col-sm-3 control-label">Test Description:</label>
                <div class="col-sm-9">
                  <textarea type="text" class="form-control" id="email2" name="description" value="" required="true"></textarea>
                </div>
              </div>
              <div class="form-group">
                <label for="email2" class="col-sm-3 control-label">Test Interpretation:</label>
                <div class="col-sm-9">
                  <textarea type="text" class="form-control" id="email2" name="interpretation" value="" required='true'></textarea>
                </div>
              </div>
               <div class="form-group">
                <label for="email2" class="col-sm-3 control-label">Price:</label>
                <div class="col-sm-9">
                  <input type="text" class="form-control" id="email2" name="price" value="" required='true'>
                </div>
              </div>
             
           
              <div class="row">
                <div class="col-sm-9 col-sm-offset-3">
                  <button type="submit" class="btn btn-success" name="submit">Add</button>
                </div>
              </div>
            </form>
          </div><!-- .widget-body -->
        </div><!-- .widget -->
      </div><!-- END column -->

    </div><!-- .row -->
  </section><!-- #dash-content -->
</div><!-- .wrap -->
  <!-- APP FOOTER -->
  <?php include_once('includes/footer.php');?>
  <!-- /#app-footer -->
</main>
<!--========== END app main -->

<?php include_once('includes/customizer.php');?>
  
  <!-- SIDE PANEL -->
 

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