<?php

 function sendEmail($FromEmail,$Subject,$Message,$FromName,$ToEmail)
		{
 
		 require_once "classes/class.phpmailer.php"; 
		 
		 $mail = new PHPMailer();
		 
		 $mail->From     = $FromEmail;
		 $mail->FromName = $FromName;
		 
		 $mail->IsSMTP(); 
		 
		 $mail->SMTPAuth = true;     // turn of SMTP authentication
		 $mail->Username = "ajprincejob@gmail.com";  // SMTP username  (Ex: sumithnets@yahoo.com)
		 $mail->Password = "9751711325"; // SMTP password  (Ex: yahoo email password)
		 $mail->SMTPSecure = "ssl";
		
		 $mail->Host = "smtp.gmail.com";
		 $mail->Port = 465;
		 
		// $mail->SMTPDebug  = 2; // Enables SMTP debug information (for testing, remove this line on production mode)
		 // 1 = errors and messages
		 // 2 = messages only
		  
		 $mail->Sender   =  $FromEmail;// $bounce_email;
		 $mail->ConfirmReadingTo  = $FromEmail;
		 
		 $mail->AddReplyTo($FromEmail);
		 $mail->IsHTML(true); //turn on to send html email
		 $mail->Subject = $Subject;
		
		 $mail->Body     =  $Message;
		 $mail->AltBody  =  "ALTERNATIVE MESSAGE FOR TEXT WEB BROWSER LIKE SQUIRRELMAIL";
		  
		 $mail->AddAddress($ToEmail,$ToEmail);
		 if($mail->Send()){
		  $mail->ClearAddresses();  
		 }
 }
 ?>