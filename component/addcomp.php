<?php
 include('../database.php');
if(isset($_POST['addValue'])){
			
			$projectname =$_POST['addPrjName'];
			$status =$_POST['addStatus'];
			$componentname =$_POST['addCompname'];
			$deadline =$_POST['addComp'];  
			$pdo = Database::connect();
			$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
			$sql = "INSERT INTO ebm_wt_component(PROJECT_ID,STATUS_ID,COMP_NAME,COMPLETION_DATE) values(?,?,?,?)";
			$q = $pdo->prepare($sql);
			$q->execute(array($projectname,$status,$componentname,$deadline));
			Database::disconnect();				
			echo 'Add Successful';		
					
		}else{
	 
	 echo"Error";
 }	
?>					

