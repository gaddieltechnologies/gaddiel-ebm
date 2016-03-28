<?php
 include('../database.php');
 if(isset($_POST['deletevalue'])){
	$id = $_POST['valueId'];
	
	$pdo = Database::connect();
	$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
	$query ="DELETE FROM ebm_work_type WHERE id = '$id'";
	$result = $pdo->prepare($query);
	$result->execute();

	/*$rows = $result->fetch(PDO::FETCH_OBJ);						
	header("Content-type: text/x-json");
	echo json_encode($rows);*/
	Database::disconnect();
	echo"Deleted";
 }else{
	 
	 echo"Error";
 }
 
							
?>					