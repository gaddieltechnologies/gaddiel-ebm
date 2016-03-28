<?php
 include('../database.php');
 if(isset($_POST['updateValue'])){
	$id = $_POST['upIdVar'];
	$name =$_POST['upname'];
	$description =$_POST['updescription'];
	 
	
	$pdo = Database::connect();
	$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
	$query ="UPDATE ebm_work_type SET WORK_TYPE =?, DESCRIPTION =? WHERE ID ='$id'";
	$result = $pdo->prepare($query);
	$result->execute(array($name,$description));	
	Database::disconnect();
	echo"success Updated";
 
 }else{
	 
	 echo"Error";
 }
							
?>					
