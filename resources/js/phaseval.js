function Unamefunction(){
			var fname= document.getElementById("txtunameid").value;
			
				if(fname==""){
	
					document.getElementById("spanFirstNameId").innerHTML ="Enter the Phase Name";
					document.getElementById("txtunameid").style.borderColor="#FF0000";
				}
				else
				{
			        document.getElementById("spanFirstNameId").innerHTML="";
					document.getElementById("txtunameid").style.borderColor="";
				}}
function  EUnamefunction(){
			var fname= document.getElementById("txtunameid1").value;
			
				if(fname==""){
	
					document.getElementById("NameId1").innerHTML ="Enter the Phase Name";
					document.getElementById("txtunameid1").style.borderColor="#FF0000";
				}
				else
				{
			        document.getElementById("NameId1").innerHTML="";
					document.getElementById("txtunameid1").style.borderColor="";
				}}
		