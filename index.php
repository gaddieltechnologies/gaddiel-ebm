<?php
session_start();
?> 
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>eBM - Login</title>

	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="apple-mobile-web-app-capable" content="yes"> 
    
<link href="resources/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="resources/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css" />

<link href="resources/css/font-awesome.css" rel="stylesheet">
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600" rel="stylesheet">
    
<link href="resources/css/style.css" rel="stylesheet" type="text/css">
<link href="resources/css/pages/signin.css" rel="stylesheet" type="text/css">
<style>
.error {color: #FF0000;}
</style>
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
						<a href="fpassword.php" class="brand">
							Forgot Password
						</a>
						
					</li>
					
					<li class="">						
						<a href="signup.php" class="">
							<i class="icon-chevron-left"></i>
							Don't have an account?							
						</a>						
					</li>
				</ul>
				
			</div><!--/.nav-collapse -->	
	
		</div> <!-- /container -->
		
	</div> <!-- /navbar-inner -->
	
</div> <!-- /navbar -->



<div class="account-container">
	
	<div class="content clearfix">
		
		<form action="#" method="post">
		
			<h1>Member Login</h1>		
			
			<div class="login-fields">
				
				<p>Please provide your details</p>
				
				<div class="field">
					<label for="username">Username</label>
					<input type="text" id="txtIdUsername" name="NameUsername" value="" placeholder="Username" class="login username-field" onblur="username()" />
					<span id="errIdUsername" class="error"></span>
				</div> <!-- /field -->
				
				<div class="field">
					<label for="password">Password:</label>
					<input type="password" id="txtIdPassword" name="NamePassword" value="" placeholder="Password" class="login password-field"/>
				</div> <!-- /password -->
				
			</div> <!-- /login-fields -->
			
			<div class="login-actions">
				
				<span class="login-checkbox">
					<input id="Field" name="Field" type="checkbox" class="field login-checkbox" value="First Choice" tabindex="4" />
					<label class="choice" for="Field">Keep me signed in</label>
				</span>
					<button class="button btn btn-success btn-large" type="submit" name ="login">Sign In</button>			
					
			</div> <!-- .actions -->
			
			
			
		
		<?php
		require 'database.php';
		function test_input($data) 
		{
		   $data = trim($data);
		   $data = stripslashes($data);
		   $data = htmlspecialchars($data);
		   return $data;
		}

		if(isset($_POST['login']))
			{
				$username= $password="";
				if (!empty($_POST["NameUsername"])) {     
				if(filter_var($_POST["NameUsername"], FILTER_VALIDATE_EMAIL)) {
					

				 $username = test_input($_POST["NameUsername"]);
				 $username =strtolower($username);

			   }
			   }
				if (!empty($_POST["NamePassword"])) {
					$password=test_input($_POST['NamePassword']);
					 
						}
					if(($username !="")&&($password!=""))
						{	
					try{
				$pdo = Database::connect();
				$sql = "SELECT * FROM ebm_reg WHERE EMAIL = '$username' and PASSWORD= '$password'";
				$query =  $pdo->prepare( $sql );
				$query->execute();
				$count = $query->rowCount();
				if($count<2)
				{
					$pdo = Database::connect();
				$sql = "SELECT * FROM ebm_reg WHERE EMAIL = '$username' and PASSWORD= '$password'";
				$query =  $pdo->prepare( $sql );
				$query->execute();
				$row = $query->fetch();
				$user = $row['EMAIL'];
				$role = $row['ROLE'];
                                $id= $row['ID'];
                                $sFirstName = $row['FIRSTNAME'];
				$sLastName = $row['LASTNAME'];
				$_SESSION["user"]=$user;
				$_SESSION["role"]=$role;
                                $_SESSION["id"]=$id;
                                $_SESSION["fn"]=$sFirstName;
				$_SESSION["ln"]=$sLastName;
				$active_flag = $row['ACTIVE_FLAG'];
				$change_pwd = $row['DEFAULT_PASSWORD_CHANGED'];
				
			if($row > 0) 
			{
				if($active_flag == 1)
				{
					if($change_pwd == 'Y')
					{
						echo '<script type="text/javascript">
				window.location.href = "dashboard/dashboard.php";
				</script>';
					}
					else
					{
						echo '<script type="text/javascript">
				window.location.href = "firstlogin.php";
				</script>';
					}
				}
				else{
					echo "<font color='red'> Your Username and Password is not still approved.   Please contact System Administrator for your Access.
</font>";
				}
				
			}

			else{
				echo "<font color='red'>Invalid  Username Or Password.</font>";
			}
			
		}				
				
		else{
			echo "<font color='red'>System Error.  Please contact System Administrator.</font>";
		}	
					}		
	catch(Exception $e){
		echo "<center><font color='red'>Please contact Administrator</font> </center>";
		}
   }else{
			echo "<font color='red'>Please Enter Username  Password.</font>";
		}
   
			}
?>
</form>
	</div> <!-- /content -->
	
</div> <!-- /account-container -->


<script src="resources/js/jquery-1.7.2.min.js"></script>
<script src="resources/js/bootstrap.js"></script>

<script src="login.js"></script>

</body>
</html>
    

