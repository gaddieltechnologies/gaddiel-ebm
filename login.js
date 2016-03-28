 
function username()
					{
					var valid=true;	
						var email =document.getElementById("txtIdUsername").value;
							
						var ema =/^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;  
						if(email=="")
							{
						document.getElementById("errIdUsername").innerHTML = "Enter valid User Name";
						document.getElementById("txtIdEmail").style.borderColor="#FF0000";
						valid=false;
							}
						else if(!email.match(ema))  
							{  
						document.getElementById("errIdUsername").innerHTML = "Enter valid email id";
						document.getElementById("txtIdEmail").style.borderColor="#FF0000";
						valid=false;
							}  
						else  
							{  
						document.getElementById("errIdUsername").innerHTML = "";
						document.getElementById("txtIdEmail").style.borderColor="";	
							valid=true;
							}  
return valid;
					}
function email()
					{
						var emai =document.getElementById("txtIdEmail").value;
							
						var ema =/^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;  
						if(emai=="")
							{
						document.getElementById("errIdEmail").innerHTML = "Enter valid email id";
						document.getElementById("txtIdEmail").style.borderColor="#FF0000";
						valid=false;
							}
						else if(!emai.match(ema))  
							{  
						document.getElementById("errIdEmail").innerHTML = "Enter valid email id";
						document.getElementById("txtIdEmail").style.borderColor="#FF0000";
						valid=false;
							}  
						else  
							{  
						document.getElementById("errIdEmail").innerHTML = "";
						document.getElementById("txtIdEmail").style.borderColor="";	
							valid=true;
							}  
					}
function firstname()
					{
						var firstname=document.getElementById("txtIdFirstname").value;
						if (firstname=="")
							{
						document.getElementById("errFirstname").innerHTML="First Name Required";
						document.getElementById("txtIdFirstname").style.borderColor="#FF0000";	
							}
						else
							{
						document.getElementById("errFirstname").innerHTML="";
						document.getElementById("txtIdFirstname").style.borderColor="";		
						}				
					}
function password()
					{
						var Password=document.getElementById("txtIdPassword").value;
						var re = /.{8,}/;
    					if (Password=="")
							{
						document.getElementById("errPassword").innerHTML="New Password Required";
						document.getElementById("txtIdPassword").style.borderColor="#FF0000";	
							}
						else if(!Password.match(re))
							{
						document.getElementById("errPassword").innerHTML="Minimum 8 Digit Required";
						document.getElementById("txtIdPassword").style.borderColor="#FF0000";
							}	
						else
							{
						document.getElementById("errPassword").innerHTML="";
						document.getElementById("txtIdPassword").style.borderColor="";	
							}
					}
function confirmpassword()
				{
						var Password=document.getElementById("txtIdPassword").value;
						var CPassword = document.getElementById("txtIdConfirm_password").value;
    					if (CPassword=="")
						{
						document.getElementById("errCPassword").innerHTML="Confirm Password Required";
						document.getElementById("txtIdConfirm_password").style.borderColor="#FF0000";
						}
						else if(!CPassword.match(Password))
						{
						document.getElementById("errCPassword").innerHTML = "Passwords Do Not Match!";
						document.getElementById("txtIdConfirm_password").style.borderColor="#FF0000";
						}
						else
						{
							document.getElementById("errCPassword").innerHTML = "";
							document.getElementById("txtIdConfirm_password").style.borderColor="";
						}
				} 	
function sivalidation()
{
		var firstname=document.getElementById("txtIdFirstname").value;
		var Email =document.getElementById("txtIdEmail").value;
		var Password=document.getElementById("txtIdPassword").value;
		var CPassword = document.getElementById("txtIdConfirm_password").value;
		var ema =/^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;  
		var re = /.{8,}/;
		var valid=true;
			if (firstname=="")
					{
						document.getElementById("errFirstname").innerHTML="First Name Required";
						document.getElementById("txtIdFirstname").style.borderColor="#FF0000";
						valid=false;
						
					}  
				else
					{
						
						valid=true;								
						document.getElementById("errFirstname").innerHTML="";
						document.getElementById("txtIdFirstname").style.borderColor="";
					 }
			if (Email=="")
				{
			document.getElementById("errIdEmail").innerHTML="Email Required";
			document.getElementById("txtIdEmail").style.borderColor="#FF0000";
			valid=false;
				}
			else if(!Email.match(ema))  
					{  
				document.getElementById("errIdEmail").innerHTML = "Enter valid email id";
				document.getElementById("txtIdEmail").style.borderColor="#FF0000";
				valid=false;
					}  
			else
			   {
			valid=true;								
			document.getElementById("errIdEmail").innerHTML="";
			document.getElementById("txtIdEmail").style.borderColor="";
				}
			if (Password=="")
				{
			document.getElementById("errPassword").innerHTML="Password Required";
			document.getElementById("txtIdPassword").style.borderColor="#FF0000";
			valid=false;
				}
				else if(!Password.match(re))
						{
					document.getElementById("errPassword").innerHTML="Minimum 8 Digit Required";
			document.getElementById("txtIdPassword").style.borderColor="#FF0000";
			valid=false;
						}	
			else
				{
			valid=true;								
			document.getElementById("errPassword").innerHTML="";
			document.getElementById("txtIdPassword").style.borderColor="";
				}
		if (CPassword=="")
				{
			document.getElementById("errCPassword").innerHTML="Confirm Password Required";
			document.getElementById("txtIdConfirm_password").style.borderColor="#FF0000";
			valid=false;
				}
			else if(!CPassword.match(Password))
				{
					document.getElementById("errCPassword").innerHTML = "Passwords  Do Not Match!";
					document.getElementById("txtIdConfirm_password").style.borderColor="#FF0000";
					valid=false;
				}
			else
				{
			valid=true;								
			document.getElementById("errCPassword").innerHTML="";
			document.getElementById("txtIdConfirm_password").style.borderColor="";
			}
					return valid;
												
			}	
			