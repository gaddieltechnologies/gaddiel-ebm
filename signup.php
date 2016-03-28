<!DOCTYPE html>
<html lang="en">
 <style>
.error {color: #FF0000;}
</style>
 <head>
    <meta charset="utf-8">
    <title>Signup - eBM</title>

	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="apple-mobile-web-app-capable" content="yes"> 
    
<link href="resources/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="resources/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css" />

<link href="resources/css/font-awesome.css" rel="stylesheet">
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600" rel="stylesheet">
    
<link href="resources/css/style.css" rel="stylesheet" type="text/css">
<link href="resources/css/pages/signin.css" rel="stylesheet" type="text/css">

</head>

<body>
	
	<div class="navbar navbar-fixed-top">
	
	<div class="navbar-inner">
		
		<div class="container">
			
			<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</a>
			
			<a class="brand" href="index.php">
				eBM				
			</a>		
			
			<div class="nav-collapse">
				<ul class="nav pull-right">
					<li class="">						
						<a href="index.php" class="">
							Already have an account? Login now
						</a>
						
					</li>					
				</ul>
				
			</div><!--/.nav-collapse -->	
	
		</div> <!-- /container -->
		
	</div> <!-- /navbar-inner -->
	
</div> <!-- /navbar -->



<div class="account-container register">
	
	<div class="content clearfix">
		
		<form action="#" id="a" method="post" >
		<table width="400" border="0" align="center" cellpadding="5" cellspacing="1" class="table">
    
			<h1>Signup</h1>			
			
			<div class="login-fields">
								
				
				<div class="field">
					<label for="firstname">First Name:</label>
					<input type="text" id="txtIdFirstname"  name="NameFirstname" value="" placeholder="First Name" class="login" onblur="firstname()"/>
					<span id="errFirstname" class="error"></span>
				</div> <!-- /field -->
				
				<div class="field">
					<label for="lastname">Last Name:</label>	
					<input type="text" id="txtIdLastname" name="NameLastname" value="" placeholder="Last Name" class="login" />
				</div> <!-- /field -->
				
				
				<div class="field">
					<label for="email">Email Address:</label>
					<input type="text" id="txtIdEmail" name="NameEmail" value="" placeholder="Email" class="login"  onblur="email()"/>
					<span id="errIdEmail" class="error"></span>
				</div> <!-- /field -->
				
				<div class="field">
					<label for="mobile">Mobile Number:</label>
					<input type="text" id="txtIdMobile" name="NameMobile" value="" placeholder="Mobile Number" class="login"  onblur="mobile()"/>
					<span id="errMobile" class="error"></span>			
				</div> <!-- /field -->					
			</div> <!-- /login-fields -->
			
			<div class="login-actions">
				
				<span class="login-checkbox">
					<input id="agree" name="terms" type="checkbox" required  class="field login-checkbox" value="First Choice" tabindex="4" onchange="this.setCustomValidity(validity.valueMissing ? 'Please accept the Terms and Conditions' : '');" />
					<label class="choice" for="agree">Agree with the Terms & Conditions.</label>
				</span>
								
									
<button class="button btn btn-success btn-large" type="submit" name ="Register" onclick="return sivalidation()">Register</button>
				
			</div> <!-- .actions -->
			
		</form>
		
	</div> <!-- /content -->
	
</div> <!-- /account-container -->

<!-- Text Under Box -->
<div class="login-extra" >
<p>&nbsp;&nbsp;</p>
	Already have an account? <a href="index.php">Login to your account</a>
</div> <!-- /login-extra -->

<script src="resources/js/jquery-1.7.2.min.js"></script>	
<script src="resources/js/bootstrap.js"></script>
<script src="login.js"></script>

</body>
<?php
	$firstname = $email = $mobile  ="";	
	require "database.php";
		include "mail1.php"; 
		
		function test_input($data) 
			{
			   $data = trim($data);
			   $data = stripslashes($data);
			   $data = htmlspecialchars($data);
			   return $data;
			}
	
		if(isset($_POST['Register']))
		{
			
			if (!empty($_POST["NameFirstname"])){
				$firstname = test_input($_POST["NameFirstname"]);
					}
			if (!empty($_POST["NameEmail"])) {     
				if(filter_var($_POST["NameEmail"], FILTER_VALIDATE_EMAIL)) {
				 $email = test_input($_POST["NameEmail"]);
					}
			   }
			
			if (!empty($_POST["NameMobile"])) {
				$mobile=test_input($_POST["NameMobile"]);
				}	
			   	
			if(($firstname !="")&&($email!="")&&($mobile!=""))
		 {
			 try
				{
					
					$lastname =$_POST['NameLastname'];
					$email1="ajprincejob@gmail.com";
					$name=$firstname.$lastname;
					$pdo = Database::connect();
					$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
					$sql = "INSERT INTO ebm_reg(FIRSTNAME,LASTNAME,EMAIL,MOBILE) values(?,?,?,?)";
					$q = $pdo->prepare($sql);
					$q->execute(array($firstname,$lastname,$email,$mobile));
					Database::disconnect();
					echo '<script type="text/javascript">
					  window.location.href = "index.php";
					 </script>'; 
						if($email)
						{
							$FromEmail	=	'ajprincejob@gmail.com'; 
							$Subject	=	'Gaddiel Technologies Registration Mail';  
							$Message	=	"Hi $name,
							<p>You have successfully registered. <br>Thank you for the registration .<br></p>";
							$FromName	=	'Gaddiel Technologies'; 
							
							sendEmail($FromEmail,$Subject,$Message,$FromName,$email);
						}
						if($email1)
						{
							$FromEmail	=	'ajprincejob@gmail.com'; 
							$Subject	=	'Gaddiel Registration Notification';  
							 $Message1=		"Hi Admin,
											<p>A New User &nbsp;$name Registered.<br>
										     This is for your information and necessary approval.</p>";
							$FromName	=	'GaddielTech Pvt ltd..,'; 
							
							sendEmail($FromEmail,$Subject,$Message1,$FromName,$email1);
						}
				}
					catch(Exception $e){
						echo "<center><font color='red'>Email Already Exists</font> </center>";
							
						}
					}else{
						echo "<center><font color='red'>All Required Field</font> </center>";						
					}	
		}
?> 
 </html>