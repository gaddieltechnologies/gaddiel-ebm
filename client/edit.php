<?php
 include('../database.php');
 if(isset($_POST['editvalue'])){
	$id = $_POST['valueId'];
	
	$pdo = Database::connect();
	$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
	$query ="SELECT * FROM ebm_client WHERE ID = $id";
	$result = $pdo->prepare($query);
	$result->execute();

	$rows = $result->fetch(PDO::FETCH_OBJ);						
	header("Content-type: text/x-json");
	echo json_encode($rows);
	Database::disconnect();
 }							
?>					