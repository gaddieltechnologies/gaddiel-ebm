<?php
 include('../database.php');
if(isset($_POST['addValue'])){
			
			$phasename=$_POST['adName'];				
			$phasedesc =$_POST['adDescription'];
			
			$pdo = Database::connect();
			$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
			$sql = "INSERT INTO ebm_work_type(WORK_TYPE,DESCRIPTION) values(?,?)";
			$q = $pdo->prepare($sql);
			$q->execute(array($phasename,$phasedesc));
			Database::disconnect();				
			echo 'Add Successful';		
					
		}else{
	 
	 echo"Error";
 }	
?>					

