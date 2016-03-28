function Projfun(){
			if(document.getElementById("txtIdProjectId").value=="-- SELECT --"){
			 document.getElementById("spanProjID").innerHTML="Please Select Project";
			 document.getElementById("txtIdProjectId").style.borderColor="#FF0000";
		}
		else{
			document.getElementById("spanProjID").innerHTML="";
			document.getElementById("txtIdProjectId").style.borderColor="";
		}
		
				
				}
function Componentfun(){
			var Pname= document.getElementById("txtunameid").value;
			
				if(Pname==""){
	
					document.getElementById("spanFirstNameId").innerHTML ="Enter the Component Name";
					document.getElementById("txtunameid").style.borderColor="#FF0000";
				}
				else
				{
			        document.getElementById("spanFirstNameId").innerHTML="";
					document.getElementById("txtunameid").style.borderColor="";
				}
				}
function Statusfun(){
	    if(document.getElementById("txtIdSta").value=="-- SELECT --"){
			 document.getElementById("spanStatusID").innerHTML="Please Select Status <br> ";
			 document.getElementById("txtIdSta").style.borderColor="#FF0000";
		}
		else{
			document.getElementById("spanStatusID").innerHTML="";
			document.getElementById("txtIdSta").style.borderColor="";
		}
		
			}
function Projfun1(){
			if(document.getElementById("txtIdProjectId1").value=="-- SELECT --"){
			 document.getElementById("spanProjID1").innerHTML="Please Select Project <br> ";
			 document.getElementById("txtIdProjectId1").style.borderColor="#FF0000";
		}
		else{
			document.getElementById("spanProjID1").innerHTML="";
			document.getElementById("txtIdProjectId1").style.borderColor="";
		}
}
function Componentfun1(){
			var Pname= document.getElementById("txtunameid1").value;
			
				if(Pname==""){
	
					document.getElementById("spanNameId1").innerHTML ="Enter the Component Name";
					document.getElementById("txtunameid1").style.borderColor="#FF0000";
				}
				else
				{
			        document.getElementById("spanNameId1").innerHTML="";
					document.getElementById("txtunameid1").style.borderColor="";
				}
				}
function Statusfun1(){
	    if(document.getElementById("txtIdSta1").value=="-- SELECT --"){
			 document.getElementById("spanStatusID1").innerHTML="Please Select Status <br> ";
			 document.getElementById("txtIdSta1").style.borderColor="#FF0000";
		}
		else{
			document.getElementById("spanStatusID1").innerHTML="";
			document.getElementById("txtIdSta1").style.borderColor="";
		}
		
			}

