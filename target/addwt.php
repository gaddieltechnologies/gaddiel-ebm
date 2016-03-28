<?php
session_start();
 include('../database.php');
if(isset($_POST['addValue'])){
			$suser=$_SESSION['user'];
			$projectname =$_POST['addprjname'];
			$phasename=$_POST['addphasename'];
			$username=$_POST['addusername'];
			$targetdate=$_POST['addtardate'];
			$status =$_POST['addstatus'];
			$componentname =$_POST['addcompname'];
			$deadline =$_POST['adddeadline'];  
			$workdescp=$_POST['adddescription'];
			$remarks=$_POST['addremarks'];
			$pdo = Database::connect();
			$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
			$sql = "INSERT INTO ebm_week_target(PROJECT_ID,WORKTYPE_ID,USER_ID,TARGET_DATE,WT_STATUS,COMPONENT_ID,COMPLETION_DATE,WORK_DESCRIPTION,REMARKS,USER_NAME) values(?,?,?,?,?,?,?,?,?,?)";
			$q = $pdo->prepare($sql);
			$q->execute(array($projectname,$phasename,$username,$targetdate,$status,$componentname,$deadline,$workdescp,$remarks,$suser));
			Database::disconnect();				
			echo 'Add Successful';		
					
		}else{
	 
	 echo"Error";
 }	
?>					

