
function Unamefunction()
{
	var fname = document.getElementById('txtunameid');
	var filter = /^[A-Za-z]+$/;

	if(document.getElementById('txtunameid').value =="")
	{ 
		document.getElementById("spanFirstNameId").innerHTML="FirstName Required";
		document.getElementById("txtunameid").style.borderColor="#FF0000";
		}
    else if (!filter.test(fname.value)) 
	{
    document.getElementById("spanFirstNameId").innerHTML="Enter a Valid FirstName";
	document.getElementById("txtunameid").style.borderColor="#FF0000";
	}
	else 
   {	
    document.getElementById("spanFirstNameId").innerHTML="";
    document.getElementById("txtunameid").style.borderColor="green";	
}}
   function Unamefunction1()
{
	var fname = document.getElementById('txtunameid1');
	var filter = /^[A-Za-z]+$/;

	if(document.getElementById('txtunameid1').value =="")
	{ 
		document.getElementById("FirstNameId").innerHTML="FirstName Required";
		document.getElementById("txtunameid1").style.borderColor="#FF0000";
		}
    else if (!filter.test(fname.value)) 
	{
    document.getElementById("FirstNameId").innerHTML="Enter a Valid FirstName";
	document.getElementById("txtunameid1").style.borderColor="#FF0000";
	}
	else 
   {	
    document.getElementById("FirstNameId").innerHTML="";
    document.getElementById("txtunameid1").style.borderColor="green";	
   }
}
var specialKeys = new Array();
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
        }
		
function submit1() {
				var vaild=true;
				if(document.getElementById('txtunameid').value==""){
			     document.getElementById('spanFirstNameId').innerHTML  ="**Enter the Name";
				 vaild=false; 
				 }else{
				document.getElementById('spanFirstNameId').innerHTML="";
				//vaild=true;
		
						}
				return vaild;}