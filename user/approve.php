<?php
 include('../database.php');
 include "../mail1.php";
			$id =$_GET['id'];
			if(!empty($id))
				{	
					$pdo = Database::connect();
					$sql = "SELECT * FROM ebm_reg WHERE ID = '$id'";
					$query =  $pdo->prepare( $sql );
					$query->execute();
				for($i=0; $row = $query->fetch(); $i++)
					{
						$email = $row['EMAIL'];
						$FirstName = $row['FIRSTNAME'];
						$LastName =  $row['LASTNAME'];
					}
				}
			$date = date('Ydmhsi');
			$pwd= $FirstName.$date;
			$name=$FirstName.$LastName;
			$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
			$sql = "UPDATE ebm_reg SET ACTIVE_FLAG=1,PASSWORD=?  WHERE ID=$id";
			$q = $pdo->prepare($sql);
			$q->execute(array($pwd));
			$q->execute();
			Database::disconnect();	
			$FromEmail="ajprincejob@gmail.com";
			$Subject="Gaddiel Technologies Has Approved You As An Authenticated User";
			$Message="Hello &nbsp;$name,
			<p><strong>Gaddiel Technologies</strong> had approved Your Request.Your User Login Access Details Are,  
			<ol>
			<li><strong>Username</strong>=<em>&nbsp;$email</em></li>
			<li><strong>Password</strong>=<em>&nbsp;$pwd</em></li>
			</ol>
			Please Give these access as your first login and start using. Thankyou";
			$FromName="GaddielTech Pvt ltd..,";
			$ToEmail=$email;
			sendEmail($FromEmail,$Subject,$Message,$FromName,$ToEmail);
			 header("Location:userpermissions.php");
?>