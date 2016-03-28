<?php
 include('../database.php');
			$id =$_GET['id'];
			$pdo = Database::connect();
			$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
			$sql = "UPDATE ebm_reg SET ACTIVE_FLAG=2 WHERE ID=$id";
			$q = $pdo->prepare($sql);
			$q->execute();
			 header("Location:userpermissions.php");
?>