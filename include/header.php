<?php
session_start();
//ob_start();
 if(empty($_SESSION["user"])){
		echo '<script type="text/javascript">
			window.location.href = "../index.php";
			</script>'; 
			

}
$srole=$_SESSION["role"]; 
$suser=$_SESSION["user"];
$sid=$_SESSION["id"];
date_default_timezone_set('Asia/Kolkata');
$dt = new DateTime();
 $curDate = $dt->format("Y-m-d");
?>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>eBM</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<meta name="apple-mobile-web-app-capable" content="yes">
<link rel="stylesheet" href="../resources/css/bootstrap.min.css" >
<link rel="stylesheet" href="../resources/css/bootstrap-responsive.min.css" >
<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600">
<link rel="stylesheet" href="../resources/css/font-awesome.css">
<link rel="stylesheet" href="../resources/css/style.css">
<link rel="stylesheet" href="../resources/css/jquery-clockpicker.min.css">
<link rel="stylesheet" href="../resources/css/pikaday.css" >
<link rel="stylesheet" href="../resources/css/jquery-ui.css">
<link rel="stylesheet" href="../resources/css/pages/dashboard.css">

<!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
</head>
<body>
<div class="navbar navbar-fixed-top">
  <div class="navbar-inner">
    <div class="container"> 
		<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
			<span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span> </a>
			<a class="brand" href="../dashboard/dashboard.php"">eBM</a>
      <div class="nav-collapse">
        <ul class="nav pull-right">
		 <li class="dropdown">
			<a href="#" class="dropdown-toggle" data-toggle="dropdown">
				<i class="icon-cog"></i> Account <b class="caret"></b></a>
            <ul class="dropdown-menu">
              <li><a href="javascript:;">Settings</a></li>
              <li><a href="javascript:;">Help</a></li>
            </ul>
          </li>
          <li class="dropdown">
			<a href="#" class="dropdown-toggle" data-toggle="dropdown">
				<i class="icon-user" value=""></i>&nbsp;<?php echo $_SESSION['user']; ?>  <b class="caret"></b></a>
            <ul class="dropdown-menu">
              <li><a href="#profile" data-toggle="modal">Profile</a></li>
              <li><a href="../logout.php">Logout</a></li>
            </ul>
          </li>
        </ul>
      </div>
 <!-- Modal -->
					<div id="profile" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
					  <div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">x</button>
						<h3 id="myModalLabel">Profile</h3>
					  </div>
					  <div class="modal-body" id="modal-body">	
					
							<div class="span3">
								<label for="firstName">First Name</label>
								<input type="text" name="firstName" class="span3" id="txtfirstNameid" value="<?php echo $_SESSION['fn']; ?>"  disabled="disabled">
								<span id="errfirstNameId" class="error"></span>
							</div>
							<div class="span3">
								<label for="lastName">Last Name</label>
								<input type="text"  name="lastName" id="txtlastNameid" class="span3" value="<?php echo $_SESSION['ln']; ?>"  disabled="disabled"/>
								<span id="errlastNameId" class="error"></span>
							</div>	
							<div class="span3">
								<label for="email">Email</label>
								<input type="text" id="emailId" name="emailName" class="span3" value="<?php echo $_SESSION['user']; ?>" disabled="disabled"/>		
								<span id="errEmailId" class="error"></span>
							</div>			
		
			
					  </div>
					  <div class="modal-footer">
						<button class="btn" id="btnIdCancel" data-dismiss="modal" aria-hidden="true">Close</button>						
					  </div>
					</div>
					<!-- Modal -->
      <!--/.nav-collapse --> 
    </div>
    <!-- /container --> 
  </div>
  <!-- /navbar-inner --> 
</div>
<!-- /navbar -->


