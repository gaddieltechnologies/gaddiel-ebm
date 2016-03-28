function datefun()
	{
		var date=document.getElementById("txtdateid").value;
		if (date=="")
			{
		document.getElementById("errDateId").innerHTML="Date Required";
		document.getElementById("txtdateid").style.borderColor="#FF0000";
			}
		else
			{
		document.getElementById("errDateId").innerHTML="";
		document.getElementById("txtdateid").style.borderColor="";
			}				
	}
function start()
	{
		var stime=document.getElementById("txtstarttimeid").value;
		if (stime=="")
			{
		document.getElementById("errStartTimeId").innerHTML="Start Time Required";
		document.getElementById("txtstarttimeid").style.borderColor="#FF0000";
			}
		else
			{
		document.getElementById("errStartTimeId").innerHTML="";
		document.getElementById("txtstarttimeid").style.borderColor="";
			}				
	}
function endt()
	{
       
		var etime=document.getElementById("txtendtimeid").value;
		if (etime=="")
			{				
		document.getElementById("errEndTimeId").innerHTML="End Time Required";
		document.getElementById("txtendtimeid").style.borderColor="#FF0000";
			}
		else
			{
		document.getElementById("errEndTimeId").innerHTML="";
		document.getElementById("txtendtimeid").style.borderColor="";
			}				
	}
function Projfun(){
			if(document.getElementById("txtIdTmsProjectId").value=="-- SELECT --"){
			 document.getElementById("spanProjID").innerHTML="Please Select Project";
			 document.getElementById("txtIdTmsProjectId").style.borderColor="#FF0000";
		}
		else{
			document.getElementById("spanProjID").innerHTML="";
			document.getElementById("txtIdTmsProjectId").style.borderColor="";
		}
		
				
				}
function Phasefun(){
			if(document.getElementById("wktid").value=="-- SELECT --"){
			 document.getElementById("spanPhaseID").innerHTML="Please Select Phase";
			 document.getElementById("wktid").style.borderColor="#FF0000";
		}
		else{
			document.getElementById("spanPhaseID").innerHTML="";
			document.getElementById("wktid").style.borderColor="";
		}
		
				
				}
				
function Statusfun(){
	    if(document.getElementById("txtIdSta").value=="-- SELECT --"){
			 document.getElementById("spanStatusID").innerHTML="Please Select Status";
			 document.getElementById("txtIdSta").style.borderColor="#FF0000";
		}
		else{
			document.getElementById("spanStatusID").innerHTML="";
			document.getElementById("txtIdSta").style.borderColor="";
		}
		
			}
function datefun1()
	{
		var date1=document.getElementById("txtdateid1").value;
		if (date1=="")
			{
		document.getElementById("errDateId1").innerHTML="Date Required";
		document.getElementById("txtdateid1").style.borderColor="#FF0000";
			}
		else
			{
		document.getElementById("errDateId1").innerHTML="";
		document.getElementById("txtdateid1").style.borderColor="";
			}				
	}
function start1()
	{
		var stime=document.getElementById("txtstarttimeid1").value;
		if (stime=="")
			{
		document.getElementById("errStartTimeId1").innerHTML="Start Time Required";
		document.getElementById("txtstarttimeid1").style.borderColor="#FF0000";
			}
		else
			{
		document.getElementById("errStartTimeId1").innerHTML="";
		document.getElementById("txtstarttimeid1").style.borderColor="";
			}				
	}
function endt1()
	{
		var etime=document.getElementById("txtendtimeid1").value;
		if (etime=="")
			{
		document.getElementById("errEndTimeId1").innerHTML="End Time Required";
		document.getElementById("txtendtimeid1").style.borderColor="#FF0000";
			}
		else
			{
		document.getElementById("errEndTimeId1").innerHTML="";
		document.getElementById("txtendtimeid1").style.borderColor="";
			}				
	}				
function Projfun1(){
			if(document.getElementById("txtIdTmsProjectId1").value=="-- SELECT --"){
			 document.getElementById("spanProjID1").innerHTML="Please Select Project ";
			 document.getElementById("txtIdTmsProjectId1").style.borderColor="#FF0000";
		}
		else{
			document.getElementById("spanProjID1").innerHTML="";
			document.getElementById("txtIdTmsProjectId1").style.borderColor="";
		}
		
				
				}
function Phasefun1(){
			if(document.getElementById("wktid1").value=="-- SELECT --"){
			 document.getElementById("spanPhaseID1").innerHTML="Please Select Phase";
			 document.getElementById("wktid1").style.borderColor="#FF0000";
		}
		else{
			document.getElementById("spanPhaseID1").innerHTML="";
			document.getElementById("wktid1").style.borderColor="";
		}
		
				
				}
function Statusfun1(){
	    if(document.getElementById("txtIdSta1").value=="-- SELECT --"){
			 document.getElementById("spanStatusID1").innerHTML="Please Select Status";
			 document.getElementById("txtIdSta1").style.borderColor="#FF0000";
		}
		else{
			document.getElementById("spanStatusID1").innerHTML="";
			document.getElementById("txtIdSta1").style.borderColor="";
		}
		
			}						
function Checkdifference(){
var starttime = document.getElementById("txtstarttimeid").value;
var endtime = document.getElementById("txtendtimeid").value;
		if(starttime > endtime){			
			document.getElementById("errStartTimeId").innerHTML="Should Be Earlier To End Time";
			document.getElementById("txtstarttimeid").style.borderColor="#FF0000";
			document.getElementById("errEndTimeId").innerHTML="Should Be Later To Start Time";
			document.getElementById("txtendtimeid").style.borderColor="#FF0000";
			$("#hour").val("");
			
		}else{
			document.getElementById("errStartTimeId").innerHTML="";
			document.getElementById("txtstarttimeid").style.borderColor="";
			document.getElementById("errEndTimeId").innerHTML="";
			document.getElementById("txtendtimeid").style.borderColor="";
				var hms = starttime;   // your input string
				var a = hms.split(':'); // split it at the colons
				// minutes are worth 60 seconds. Hours are worth 60 minutes.
				var starthour_convert = (a[0]*3600);
				var startmin_convert = (a[1]*60);
				var startsec_convert = starthour_convert + startmin_convert;
				//alert(startsec_convert);
				var hms1 = endtime;   // your input string
				var a1 = hms1.split(':'); // split it at the colons
				// minutes are worth 60 seconds. Hours are worth 60 minutes.
				var stophour_convert = (a1[0]*3600);
				var stopmin_convert = (a1[1]*60);
				var stopsec_convert = (stophour_convert + stopmin_convert);
				d=stopsec_convert-startsec_convert;
				var minutes = (d/60);
				$("#hour").val(minutes);
			
		}
	
}
function Checkdifference1(){
var starttime = document.getElementById("txtstarttimeid1").value;
var endtime = document.getElementById("txtendtimeid1").value;
		if(starttime > endtime){			
			document.getElementById("errStartTimeId1").innerHTML="Should Be Earlier To End Time";
			document.getElementById("txtstarttimeid1").style.borderColor="#FF0000";
			document.getElementById("errEndTimeId1").innerHTML="Should Be Later To Start Time";
			document.getElementById("txtendtimeid1").style.borderColor="#FF0000";
			$("#hour1").val("");
			
		}else{
			document.getElementById("errStartTimeId1").innerHTML="";
			document.getElementById("txtstarttimeid1").style.borderColor="";
			document.getElementById("errEndTimeId1").innerHTML="";
			document.getElementById("txtendtimeid1").style.borderColor="";
				var hms = starttime;   // your input string
				var a = hms.split(':'); // split it at the colons
				// minutes are worth 60 seconds. Hours are worth 60 minutes.
				var starthour_convert = (a[0]*3600);
				var startmin_convert = (a[1]*60);
				var startsec_convert = starthour_convert + startmin_convert;
				//alert(startsec_convert);
				var hms1 = endtime;   // your input string
				var a1 = hms1.split(':'); // split it at the colons
				// minutes are worth 60 seconds. Hours are worth 60 minutes.
				var stophour_convert = (a1[0]*3600);
				var stopmin_convert = (a1[1]*60);
				var stopsec_convert = (stophour_convert + stopmin_convert);
				d=stopsec_convert-startsec_convert;
				var minutes = (d/60);
				$("#hour1").val(minutes);
			
		}
	
}
			
			
var input = $('#txtstarttimeid,#txtendtimeid,#txtstarttimeid1,#txtendtimeid1').clockpicker({
			placement: 'bottom',
			align: 'left',
			//twelvehour:true,
			autoclose: true
			
		});
		
		
		
function clock(input)
			{
				var st=document.getElementById("clockpicker").value;
				if (st=="")
					{
						document.getElementById("errClock").innerHTML="Please Enter The Time";
					}
				else
					{
					document.getElementById("errClock").innerHTML="";
					}				
			}
			

					
