<?php
 include('../database.php');
if(isset($_POST['checkvalue'])){
			
			$clientname=$_POST['checkclient'];				
			$pdo = Database::connect();
		
				$sql = "SELECT * FROM ebm_client WHERE CLIENT_NAME = '$clientname'";
				$query =  $pdo->prepare( $sql );
				$query->execute();
				$row = $query->fetch();
				
						if($row > 0) 
							{
								echo "Client Name Already Exist";
							}				
					
					
		}else{
	 
	 echo"Error";
 }	
?>					

