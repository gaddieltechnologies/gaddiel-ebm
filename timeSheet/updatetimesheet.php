<?php
session_start();
 include('../database.php');
 if(isset($_POST['updateValue'])){
	 $suser=$_SESSION['user'];
	$id = $_POST['upIdVar'];
	$date =$_POST['update'];
	$starttime =$_POST['upstarttime'];
	$endtime =$_POST['upendtime'];
	$minutes =$_POST['upminutes'];
	$projectname =$_POST['upprjname'];
	$phasename=$_POST["upphasename"];
	$status =$_POST['upstatus'];
	$achievements=$_POST['upachievements'];
	$remarks=$_POST['upremarks'];
	$fle =$_POST['upfile'];
	$pdo = Database::connect();
	$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
	$query ="UPDATE ebm_timesheet  set TS_DATE=?, START_TIME =?, End_TIME =?, TS_MINTUES =?, PROJECT_ID =?, WORKTYPE_ID =?,STATUS_ID =?, REMARKS =?, ACHIEVEMENT =?,USER_NAME=?,DOC_ATTACHMENT=? WHERE ID ='$id'";
	$result = $pdo->prepare($query);
	$result->execute(array($date,$starttime,$endtime,$minutes,$projectname,$phasename,$status,$remarks,$achievements,$suser,$fle));	
	Database::disconnect();
	echo"success Updated";
 
 }else{
	 
	 echo"Error";
 }
							
?>					
