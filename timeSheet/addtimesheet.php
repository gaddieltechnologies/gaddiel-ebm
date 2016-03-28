<?php
session_start();
 include('../database.php');
if(isset($_POST['addValue'])){
			$suser=$_SESSION['user'];
			$date =$_POST['adddate'];
			$starttime =$_POST['addstarttime'];
			$endtime =$_POST['addendtime'];
			$minutes =$_POST['addminutes'];
			$projectname =$_POST['addprjname'];
			$phasename=$_POST["addphasename"];
			$status =$_POST['addstatus'];
			$achievements=$_POST['addachievements'];			
			$remarks=$_POST['addremarks'];
			$fle =$_POST['addfile'];
			//$user =$_POST['adduser'];
			$pdo = Database::connect();
			$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
			$sql = "INSERT INTO ebm_timesheet(TS_DATE,START_TIME,End_TIME,TS_MINTUES,PROJECT_ID,WORKTYPE_ID,STATUS_ID,REMARKS,ACHIEVEMENT,USER_NAME,DOC_ATTACHMENT) values(?,?,?,?,?,?,?,?,?,?,?)";
			$q = $pdo->prepare($sql);
			$q->execute(array($date,$starttime,$endtime,$minutes,$projectname,$phasename,$status,$remarks,$achievements,$suser,$fle));
			Database::disconnect();				
			echo 'Add Successful';		
					
		}else{
	 
	 echo"Error";
 }	
?>				

