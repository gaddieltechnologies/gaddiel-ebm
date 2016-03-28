<?php
 include('../database.php');
 if(isset($_POST['updateValue'])){
	$id = $_POST['upIdVar'];
	//$cliname =$_POST['upcliname'];
	$prjname =$_POST['upprjname'];
	$compname =$_POST['upcompname'];
	//$description =$_POST['updescription'];
	$status =$_POST['upstatus'];
	$deadline =$_POST['updeadline'];
	
	 
	
	$pdo = Database::connect();
	$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
	$query ="UPDATE ebm_wt_component SET PROJECT_ID=?,STATUS_ID=?,COMP_NAME=?,COMPLETION_DATE=? WHERE COMP_ID ='$id'";
	$result = $pdo->prepare($query);
	$result->execute(array($prjname,$status,$compname,$deadline));	
	Database::disconnect();
	echo"success Updated";
 
 }else{
	 
	 echo"Error";
 }
							
?>					
