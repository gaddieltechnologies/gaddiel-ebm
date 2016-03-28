<?php
 include('../database.php');
if(isset($_POST['addValue'])){
			
			$clientname=$_POST['adName'];				
			$clientdesc =$_POST['adDescription'];
			$pdo = Database::connect();
			try{
			$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
			$sql = "INSERT INTO ebm_client(CLIENT_NAME,DESCRIPTION) values(?,?)";
			$q = $pdo->prepare($sql);
			$q->execute(array($clientname,$clientdesc));
			Database::disconnect();
			echo 'Add Successful';
            }
			catch(Exception $e){
				
			echo "1";
					}			
					
					
		}else{
	 
	 echo"Error";
 }	
?>					

