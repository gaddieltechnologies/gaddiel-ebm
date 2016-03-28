<?php session_start(); ?>
<!DOCTYPE html>
<html lang="en">
 <head>
    <meta charset="utf-8">
    <title>First Login - eBM</title>

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
				
				
			</div><!--/.nav-collapse -->	
	
		</div> <!-- /container -->
		
	</div> <!-- /navbar-inner -->
	
</div> <!-- /navbar -->



<div class="account-container register">
	
	<div class="content clearfix">
		
		<form action="#" method="post">
		
			<h1><input type="text"  id="txtIdUser" disabled name="NameUsername" value="<?php echo $_SESSION['user']; ?>" onblur="firstname()"/></h1>	
							<div class="login-fields">

				<p>Security Check1</p>		
				<div class="field">
					<p>What is Your pet Name?</p>
					<input type="text" id="txtIdsecqn1" name="secqn1" value="" class="login"/>
				</div> <!-- /field -->		
				<div class="field">
					<p>What is Your favourite Movie?</p>
					<input type="text" id="txtIdsecqn2" name="secqn2" value="" class="login"/>
				</div> <!-- /field -->
			
			<div class="field">
					<p>What is Your favourite Food?</p>
					<input type="text" id="txtIdsecqn3" name="secqn3" value="" class="login"/>
				</div> <!-- /field -->
			</div> <!-- /login-fields -->
			<div class="login-fields">
				<p>Security Check</p>
				
				<div class="field">
					<label for="password">New Password</label>
					<input type="password" id="txtIdPassword" name="NamePassword" value="" placeholder="Password" class="login" onblur="password()"/>
					<span id="errPassword"></span>
				</div> <!-- /field -->
				
				<div class="field">
					<label for="confirm_password">Confirm Password:</label>
					<input type="password" id="txtIdConfirm_password" name="NameConfirm_password" value="" placeholder="Confirm Password" class="login" onblur="confirmpassword()"/>
					<span id="errCPassword"></span>
				</div> <!-- /field -->
				
			</div> <!-- /login-fields -->
			
			<div class="login-actions">
				
				<span class="login-checkbox">
					<input id="Field" name="Field" type="checkbox" class="field login-checkbox" value="First Choice" tabindex="4" />
					<label class="choice" for="Field">Agree with the Terms & Conditions.</label>
				</span>
									
<button class="button btn btn-success btn-large" type="submit" name ="Register">Register</button>
				
			</div> <!-- .actions -->
			
		</form>
		
	</div> <!-- /content -->
	
</div> <!-- /account-container -->
<script src="resources/js/jquery-1.7.2.min.js"></script>	
<script src="resources/js/bootstrap.js"></script>

<script src="login.js"></script>

</body>sss
<?php
		include "database.php";
		function test_input($data) 
		{
		$data = trim($data);
		$data = stripslashes($data);
		$data = htmlspecialchars($data);
		return $data;
		}
		$Password=$Cpassword="";
		if(isset($_POST['Register']))
			{
			   if (!empty($_POST["NamePassword"])) {
					$Password=test_input($_POST['NamePassword']);
							   }
				if (!empty($_POST["NameConfirm_password"])) {
					$Cpassword=test_input($_POST['NameConfirm_password']);
							   }
				$Username=$_SESSION["user"];
				$changedate='Y';
				$ROLE='USER';
				$FIRST_QUESTION='What is Your Name?';
				$ans1 =$_POST['secqn1'];
				$ans2 =$_POST['secqn2'];
				$ans3 =$_POST['secqn3'];
				if(($Password !="")&&($Cpassword!=""))
			{	
				try{
				$pdo = Database::connect();
				$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
				$sql = "UPDATE ebm_reg  set PASSWORD =?,DEFAULT_PASSWORD_CHANGED =?,ROLE =?,FIRST_ANSWER=?,SECOND_ANSWER=?,THIRD_ANSWER=? WHERE EMAIL = '$Username'";
				$q = $pdo->prepare($sql);
				$q->execute(array($Password,$changedate,$ROLE,$ans1,$ans2,$ans3));					
				Database::disconnect();
				echo '<script type="text/javascript">
				window.location.href = "index.php";
				</script>';
			}	
			catch(Exception $e){
				echo "<center>Please contact Administrator </center>";
			}
		}
			}
		?>
 </html>
