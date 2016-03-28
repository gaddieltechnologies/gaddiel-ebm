var filter =/^[a-zA-Z0-9 ]+$/;
function clientchange(){
		if(document.getElementById('txtcnameid').value=="-- SELECT --"){
			 document.getElementById("spanCNameId").innerHTML="Please Select Client <br> ";
			 document.getElementById("txtcnameid").style.borderColor="#FF0000";
		}
		else{
			document.getElementById("spanCNameId").innerHTML="";
			document.getElementById("txtcnameid").style.borderColor="";
		}
		
	}	
function projectfunction(){
			var Pname= document.getElementById('txtIdProjectId').value;
			
				if(Pname==""){
	
					document.getElementById('spanFirstNameId').innerHTML ="Enter the Project Name";
					document.getElementById("txtIdProjectId").style.borderColor="#FF0000";
				}
				else
				{
			        document.getElementById('spanFirstNameId').innerHTML="";
				}
				}
function status1(){
		if(document.getElementById('txtIdSta').value=="-- SELECT --"){
			 document.getElementById("spanStatusId").innerHTML="Please Select Status <br> ";
			 document.getElementById("txtIdSta").style.borderColor="#FF0000";
			
		}
		else{
			document.getElementById("spanStatusId").innerHTML="";
			document.getElementById("txtIdSta").style.borderColor="";
		}
		
	}
function clientchange1(){
		if(document.getElementById('txtcnameid1').value=="-- SELECT --"){
			 document.getElementById("clientspanId").innerHTML="Please Select Client <br> ";
			 document.getElementById("txtcnameid1").style.borderColor="#FF0000";
			
		}
		else{
			document.getElementById("clientspanId").innerHTML="";
			document.getElementById("txtcnameid1").style.borderColor="";
		}
		
	}
function projectfunction1(){
			var fname= document.getElementById('txtunameid1').value;
			
				if(fname==""){
	
					document.getElementById('dem1').innerHTML ="Enter the Project Name";
					document.getElementById("txtunameid1").style.borderColor="#FF0000";
				}
				else
				{
			        document.getElementById('dem1').innerHTML="";
					document.getElementById("txtunameid1").style.borderColor="";
				}
				}
function status2(){
		if(document.getElementById('txtIdSta1').value=="-- SELECT --"){
			 document.getElementById("spanStatusId1").innerHTML="Please Select Status <br> ";
			 document.getElementById("txtIdSta1").style.borderColor="#FF0000";
			
		}
		else{
			document.getElementById("spanStatusId1").innerHTML="";
			document.getElementById("txtIdSta1").style.borderColor="";
		}
		
	}
		


