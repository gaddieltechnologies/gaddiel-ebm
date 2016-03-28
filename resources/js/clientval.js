var filter =/^[a-zA-Z0-9 ]+$/;
function Unamefunction()
{
	var fname = document.getElementById('txtunameid').value;
	

	if(fname =="")
	{ 
		document.getElementById("spanFirstNameId").innerHTML="Enter the Client Name";
		document.getElementById("txtunameid").style.borderColor="#FF0000";
		}
    else if (!fname.match(filter)) 
	{
		
    document.getElementById("spanFirstNameId").innerHTML="Enter a Valid Client Name";
	document.getElementById("txtunameid").style.borderColor="#FF0000";
	}
	else 
   {	
    document.getElementById("spanFirstNameId").innerHTML="";
    document.getElementById("txtunameid").style.borderColor="";	
	}
}
   function EUnamefunction()
{
	var fname = document.getElementById('txtunameid1').value;
	if(fname =="")
	{ 
		document.getElementById("NameId1").innerHTML="Enter the Client Name";
		document.getElementById("txtunameid1").style.borderColor="#FF0000";
		}
    else if (!fname.match(filter)) 
	{
    document.getElementById("NameId1").innerHTML="Enter a Valid Client Name";
	document.getElementById("txtunameid1").style.borderColor="#FF0000";
	}
	else 
   {	
    document.getElementById("NameId1").innerHTML="";
    document.getElementById("txtunameid1").style.borderColor="";	
   }
}
/*var specialKeys = new Array();
        specialKeys.push(8); 
        specialKeys.push(9); 
        specialKeys.push(46); 
        specialKeys.push(36); 
        specialKeys.push(35); 
        specialKeys.push(37); 
        specialKeys.push(39);
function AlphaOnly(e) {
            var keyCode = e.keyCode == 0 ? e.charCode : e.keyCode;
            var ret = ((keyCode >= 65 && keyCode <= 90) || (keyCode >= 97 && keyCode <= 122) || (specialKeys.indexOf(e.keyCode) != -1 && e.charCode != e.keyCode || keyCode==46 || keyCode==39 || keyCode==32));            
            return ret;
        }*/
		
	   
	   

