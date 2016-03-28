<?php
 include('../database.php');
 if(isset($_POST['updateValue'])){
	$id = $_POST['upIdVar'];
	$name =$_POST['upname'];
	$description =$_POST['updescription'];
	 
	
	$pdo = Database::connect();
	try{
	$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
	$query ="UPDATE ebm_client SET CLIENT_NAME =?, DESCRIPTION =? WHERE ID ='$id'";
	$result = $pdo->prepare($query);
	$result->execute(array($name,$description));	
	Database::disconnect();
	echo"success Updated";
       }
			catch(Exception $e){
				
			echo "1";
					}			

 }else{
	 
	 echo"Error";
 }
							
?>					

