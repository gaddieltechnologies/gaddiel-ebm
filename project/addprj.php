<?php
 include('../database.php');
if(isset($_POST['addValue'])){
			
			$clientname = $_POST["addCliName"];				
			$projectname = $_POST["addPrjName"];
			$projectstatus =$_POST["addStatus"];
			$projectdesc =$_POST['addDesc'];
			$projectdeadline =$_POST["addComp"]; 
			$pdo = Database::connect();
			$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
			$sql = "INSERT INTO ebm_project(CLIENT_ID,PROJECT_NAME,DESCRIPTION,STATUS_ID,DEADLINE)  values	(?,?,?,?,?)";
			$q = $pdo->prepare($sql);
			$q->execute(array($clientname,$projectname,$projectdesc,$projectstatus,$projectdeadline));
			Database::disconnect();				
			echo 'Add Successful';		
					
		}else{
	 
	 echo"Error";
 }	
?>					

