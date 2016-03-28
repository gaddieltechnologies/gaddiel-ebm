<?php
 include('../database.php');
 if(isset($_POST['updateValue'])){
	$id = $_POST['upIdVar'];
	$cliname =$_POST['upcliname'];
	$prjname =$_POST['upprjname'];
	$description =$_POST['updescription'];
	$status =$_POST['upstatus'];
	$deadline =$_POST['updeadline'];
	
	 
	
	$pdo = Database::connect();
	$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
	$query ="UPDATE ebm_project SET CLIENT_ID=?,PROJECT_NAME=?,DESCRIPTION=?,STATUS_ID=?,DEADLINE =? WHERE ID ='$id'";
	$result = $pdo->prepare($query);
	$result->execute(array($cliname,$prjname,$description,$status,$deadline));	
	Database::disconnect();
	echo"success Updated";
 
 }else{
	 
	 echo"Error";
 }
							
?>					
