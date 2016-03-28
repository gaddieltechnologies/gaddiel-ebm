<?php
 include('../database.php');
 if(isset($_POST['updateValue'])){
	 $suser=$_SESSION['user'];
	$id = $_POST['upIdVar'];
	$prjname =$_POST['upprjname'];
	$phasename =$_POST['upphasename'];
	$compname =$_POST['upcompname'];
	$username =$_POST['upusername'];
	$tardate =$_POST['uptardatename'];
	$status =$_POST['upstatus'];
	$deadline =$_POST['updeadline'];
	$description =$_POST['updescription'];
	$remarks =$_POST['upremarks'];
	$pdo = Database::connect();
	$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
	$query ="UPDATE ebm_week_target SET PROJECT_ID=?,WORKTYPE_ID=?,USER_ID=?,TARGET_DATE=?,WT_STATUS=?,COMPONENT_ID=?,COMPLETION_DATE=?,WORK_DESCRIPTION=?,REMARKS=?,USER_NAME=? WHERE WT_ID ='$id'";
	$result = $pdo->prepare($query);
	$result->execute(array($prjname,$phasename,$username,$tardate,$status,$compname,$deadline,$description,$remarks,$suser));	
	Database::disconnect();
	echo"success Updated";
 
 }else{
	 
	 echo"Error";
 }
							
?>					
