<?php
	session_start();
	?>
<!DOCTYPE html>
<html lang="en">
 <head>
    <meta charset="utf-8">
    <title>Forgot Password - eBM</title>

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
                  <li>						
						<a href="index.php">							
							Login to your account						
						</a>						
					</li>
			</ul>
			
			</div><!--/.nav-collapse -->	
	
		</div> <!-- /container -->
		
	</div> <!-- /navbar-inner -->
	
</div> <!-- /navbar -->



<div class="account-container register">
	
	<div class="content clearfix">
		
		<form action="#" method="post">
		<h3>Enter Your Details</h3>
<div class="login-fields">
			<div class="field">
			
			<p>Username<font color='red'>*</font></p>
			<input type="text"  id="txtIdUser"  name="NameUsername" value="" onblur="firstname()"/>	
			
			
			</div> <!-- /login-fields -->
							

					
				<div class="field">
					<p>What is Your pet Name?<font color='red'>*</font></p>
					<input type="text" id="txtIdsecqn1" name="secqn1" value="" class="login"/>
				</div> <!-- /field -->		
				<div class="field">
					<p>What is Your favourite Movie?<font color='red'>*</font></p>
					<input type="text" id="txtIdsecqn2" name="secqn2" value="" class="login"/>
				</div> <!-- /field -->
			
			<div class="field">
					<p>What is Your favourite Food?<font color='red'>*</font></p>
					<input type="text" id="txtIdsecqn3" name="secqn3" value="" class="login"/>
				</div> <!-- /field -->
			</div> <!-- /login-fields -->
			
			
			<div class="login-actions">
				
				<span class="login-checkbox">
					<font color='red'>*</font>Required
				</span>
									
<button class="button btn btn-success btn-large" type="submit" name ="submit">submit</button>
				
			</div> <!-- .actions -->
			
		</form>
		
	</div> <!-- /content -->
	
</div> <!-- /account-container -->
<script src="resources/js/jquery-1.7.2.min.js"></script>	
<script src="resources/js/bootstrap.js"></script>

<script src="login.js"></script>

</body>
<?php
		include "database.php";
		include "mail1.php";
		function test_input($data) 
		{
		$data = trim($data);
		$data = stripslashes($data);
		$data = htmlspecialchars($data);
		return $data;
		}
		
		if(isset($_POST['submit']))
			{
			  if (!empty($_POST["secqn1"])) {
				$qn1=test_input($_POST['secqn1']);
				 
			   }
			if (!empty($_POST["secqn2"])) {
				$qn2=test_input($_POST['secqn2']);
				 
			   }
			   if (!empty($_POST["secqn3"])) {
				$qn3=test_input($_POST['secqn3']);
				 
			   }
			   $username = $_POST['NameUsername'];
			if(($qn1 !="")&&($qn2!="")&&($qn3!=""))
				{
					try{
			$pdo = Database::connect();
			$sql = "SELECT PASSWORD FROM ebm_reg WHERE EMAIL = '$username' and FIRST_ANSWER= '$qn1' and SECOND_ANSWER= '$qn2'and THIRD_ANSWER= '$qn3'";
			$query =  $pdo->prepare( $sql );
			$query->execute();
			$row = $query->fetch();
			$pass  =  $row['PASSWORD'];
					if($row > 0) 
					{
						$FromEmail="ajprinceton@gmail.com";
						$Subject="Gaddiel Approved You";
						$Message="Your Authentication  password=$pass Thankyou";
						$FromName="Gaddiel Teechnologies";
						$ToEmail=$username;
						sendEmail($FromEmail,$Subject,$Message,$FromName,$ToEmail);
						
						echo "<center><font color='green'>We send your password to your registered email</font> </center>";
					}
				
				else
					{						
						echo "<center><font color='red'>Invalid Email or Answers </font> </center>";
						}
					
					}
				
					catch(Exception $e){
						echo "<center><font color='red'>Please contact Administrator</font> </center>";
							}
							             }	else
					{						
						echo "<center><font color='red'>Required All Fields </font> </center>";
						}
										 }
		?>
 </html>
