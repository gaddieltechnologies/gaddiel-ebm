<?php include('../include/header.php'); ?>
<?php require "../database.php";	 ?>
<div class="subnavbar">
<div class="subnavbar-inner">	
		<div class="container">
			<ul class="mainnav  pull-right">
			<li>
					<a href="#myModal" data-toggle="modal">
						<i class=" icon-plus "></i>
						<span>Add</span>
					</a>    				
				</li> 
				<!-- Modal -->
					<div id="myModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
					  <div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">x</button>
						<h3 id="myModalLabel">Add Project</h3>
					  </div>
					  <div class="modal-body">	
					 	<div class="span5" >
   				<!--<form method="post" >-->
						<div class="row">
							<div class="span2">
								 <label >Client<font color="#FF0000"> *</font></label>
								<?php	
						$pdo = Database::connect();
						$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
						$result = $pdo->prepare("SELECT  ID, CLIENT_NAME FROM  ebm_client");
						$result->execute();
						echo '<select onblur="clientchange()" class="span2" id="txtcnameid" name=" NameCliName" >';
						echo  '<option>-- SELECT --</option>';												
						for($i=0; $row = $result->fetch(); $i++){	
						Database::disconnect();	
								?>
						<option value="<?php  echo $row['ID'];?>" ><?php  echo $row['CLIENT_NAME'];?>  </option>						    
											<?php } echo '</select>';  ?>	
						<span style="color:red;" id="spanCNameId"></span>
							</div>
							
							
							<div class="span2">
								 <label>Project<font color="#FF0000"> *</font></label>
								 <input class="span2" type="text" name="NameProjectname" id="txtIdProjectId" onblur="projectfunction()"  placeholder="Project"  maxlength="60" > 
								  <span style="color:red;" id="spanFirstNameId"></span>
							</div>
						</div>
						<div class="row">
						
							<div class="span2">
						 <label   >Status<font color="#FF0000"> *</font> </label>
						 <?php	
						$pdo = Database::connect();
						$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
						$result = $pdo->prepare("SELECT  ID, STATUS FROM  ebm_status");
						$result->execute();
						echo '<select class="span2" onblur="status1()"  id="txtIdSta" name=" NameStaName" >';
						echo  '<option>-- SELECT --</option>';												
						for($i=0; $row = $result->fetch(); $i++){	
						Database::disconnect();	
								?>
						<option  value="<?php  echo $row['ID'];?>" ><?php  echo $row['STATUS'];?>  </option>						    
											<?php } echo '</select>';  ?>	
						<span style="color:red;" id="spanStatusId"></span>					
						 </div>
							<div class="span2">
						 <label   >Completion Date </label>
						 <input class="span2" type="text" name="NameProjectDeadLine" id="txtcompdate1id" value="" placeholder="Completion Date"  maxlength="0" >
						 </div>
						 </div>
						 <div class="row">
						 <div class="span2">
						 <label  >Description </label>
						 <textarea class="span2" name="NameProjectDescription" id="txtIdDesc" placeholder="Description" ></textarea>
						 
						  </div>
						</div>
                        </div>
							
					  </div>
					  <div class="modal-footer">
					    <button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
					    <button  type="submit" value="submit" id="btnIdAdd" class="btn btn-success">Save</button>
						
						
					  </div>
					 <!-- </form >-->
					</div>
				<li>
					<a href="#myModal2" data-toggle="modal"  id="editIconID" onClick="getEditId(eID);" >
						<i class="icon-edit"></i>
						<span>Edit</span>
					</a>   
					<a href="#" id="editIconIdDisable" >
						<i class="icon-edit" disabled="disabled"></i>
						<span class="txtdisable">Edit</span>
					</a>
				</li> 
				<!-- Modal -->
					<div id="myModal2" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
					  <div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">x</button>
						<h3 id="myModalLabel">Edit Project</h3>
					  </div>
					  <div class="modal-body">		
							<div class="span5" >
							<!--<form method="post">-->
						<div class="row">
							<div class="span2">
							<input type="hidden" id="hId" name="hidden"/>
								 <label>Client<font color="#FF0000"> *</font></label>
								 <?php	
						$pdo = Database::connect();
						$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
						$result = $pdo->prepare("SELECT  ID, CLIENT_NAME FROM  ebm_client");
						$result->execute();
						echo '<select onblur="clientchange1()" class="span2" id="txtcnameid1" name=" NameCliName" >';
						echo  '<option>-- SELECT --</option>';												
						for($i=0; $row = $result->fetch(); $i++){	
						Database::disconnect();	
								?>
						<option value="<?php  echo $row['ID'];?>" ><?php  echo $row['CLIENT_NAME'];?>  </option>						    
											<?php } echo '</select>';  ?>
							<span style="color:red;" id="clientspanId"></span>
							</div>
							<div class="span2">
								 <label>Project<font color="#FF0000"> *</font></label>
								 <input class="span2" type="text" name="Project" id="txtunameid1" onblur="projectfunction1()"  placeholder="Project"  maxlength="60" > 
								 <span style="color:red;" id="dem1"></span>
							</div>
						</div>
						<div class="row">
						
							<div class="span2">
						 <label   >Status<font color="#FF0000"> *</font> </label>
						 <?php	
						$pdo = Database::connect();
						$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
						$result = $pdo->prepare("SELECT  ID, STATUS FROM  ebm_status");
						$result->execute();
						echo '<select class="span2" onblur="status2()" id="txtIdSta1" name=" NameStaName" >';
						echo  '<option>-- SELECT --</option>';												
						for($i=0; $row = $result->fetch(); $i++){	
						Database::disconnect();	
								?>
						<option  value="<?php  echo $row['ID'];?>" ><?php  echo $row['STATUS'];?>  </option>						    
											<?php } echo '</select>';  ?>	
								<span style="color:red;" id="spanStatusId1"></span>			
						 </div>
							<div class="span2">
						 <label   >Completion Date </label>
						 <input class="span2" type="text" name="CompletionDate" id="txtcompdateid" value="" placeholder="Completion Date"  maxlength="60" >
						 </div>
						 </div>
						 <div class="row">
						 <div class="span2">
						 <label  >Description </label>
						 <textarea class="span2" name="WorkDescription" id="txtIdDscripName" placeholder="Work Description" ></textarea>
						 
						  </div>
						</div>
                        </div>
						 </div>
					  <div class="modal-footer">
					  <button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
					    <button class="btn btn-success" id="btnIdUpdate" >Update</button>
						
						
					  </div>
					  <!--</form>-->
					</div>
					<li>					
					<a href="#" id="deleteIconId" onClick="getDeleteId();">
						<i class="icon-remove"  ></i>
						<span>Delete</span>
					</a> 
						<a id="deleteIconIdDisabled" >
						<i class="icon-remove" disabled="disabled"  ></i>
						<span class="txtdisable">Delete</span>
					</a>					
				</li>
                <li>
                <a  href="../dashboard/master.php" class="shortcut " >
						<i class="shortcut-icon icon-list-alt" ></i>
						<span id ="divShowId" class="shortcut-label">Master</span> 
				</a>
                 </li>				
				<li>
					<a href="../dashboard/dashboard.php">
						<i class="icon-dashboard"></i>
						<span>Dashboard</span>
					</a>	    				
				</li>	
			</ul>
		</div> <!-- /container -->	
	</div> <!-- /subnavbar-inner -->
</div>
<!-- /subnavbar -->
<div class="main">
  <div class="main-inner">
    <div class="container">
      <div class="row">
	   <div class="span12">
	    <div class="widget">
            <div id="alert" class=" alert alert-success"></div> 
	
            <!-- /widget-content --> 
          </div>
			<!-- /widget--> 
	   </div>
	     <!-- /span12 --> 
        <div class="span12">
          <div class="widget widget-table action-table">
            <div class="widget-header"> <i class="icon-th-list"></i>
              <h3>PROJECT</h3>
			  
            </div>
            <!-- /widget-header -->
            <div class="widget-content">
              <table class="table table-bordered mytable1">
                <thead>
                  <tr>
                    <th style="display:none;">ID</th>
					<th>CLIENT</th>
                    <th>PROJECT</th>
                    <th>DESCRIPTION</th>
                    <th>STATUS</th>
                    <th>COMPLETION DATE</th>
                  </tr>
                </thead>
                <tbody>
                  <?php
					$pdo = Database::connect();
					$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
					$result = $pdo->prepare("SELECT prj.ID ID,cli.CLIENT_NAME CLIENT_NAME, prj.PROJECT_NAME PROJECT_NAME, prj.DESCRIPTION DESCRIPTION,  prj.DEADLINE DEADLINE,sta.STATUS STATUS FROM ebm_client cli, ebm_project prj, ebm_status sta WHERE cli.ID=prj.CLIENT_ID AND sta.ID=prj.Status_ID ORDER BY prj.ID DESC");
					$result->execute();
					for($i=0; $row = $result->fetch(); $i++){
					Database::disconnect();	
						?>
					<tr>
					<td style="display:none;"><?php  echo $row['ID'];?> </td>
					<td><?php  echo $row['CLIENT_NAME'];?> </td>
					<td><?php  echo $row['PROJECT_NAME'];?></td> 
					<td><?php  echo $row['DESCRIPTION'];?></td>
					<td><?php  echo $row['STATUS'];?></td> 
					<td><?php  echo $row['DEADLINE'];?><?php } ?></td>  
					</tr>				
        		</tbody>
              </table>
		    </div>
            <!-- /widget-content --> 
          </div>
          <!-- /widget --> 
		 </div>
        <!-- /span12 --> 
		</div>
      <!-- /row --> 
    </div>
    <!-- /container --> 
  </div>
  <!-- /main-inner --> 
</div>
<!-- /main -->
 <?php include('../include/footer.php'); ?>
  <script src="../resources/js/projectval.js"></script>
  <script src="../resources/js/moment-with-langs.js"></script>
<script src="../resources/js/pikaday.js"></script>
<script>
  var picker = new Pikaday(
 {
		//changeMonth: true,
    	//changeYear: true,
		
        field:document.getElementById('txtcompdate1id'), 	
        firstDay: 1,
		minDate: new Date('2000-01-01'),
        //maxDate: moment().toDate(),
		yearRange: [1920,2020],
		format: 'YYYY-MM-DD',	
        onSelect: function() {
            console.log(this.getMoment().format('YYYY-MM-DD'));
        } 
    });
	 var picker = new Pikaday(
 {
		//changeMonth: true,
    	//changeYear: true,
		
        field:document.getElementById('txtcompdateid'), 	
        firstDay: 1,
	    minDate: new Date('2000-01-01'),
       	//maxDate: moment().toDate(),
		yearRange: [1920,2020],
		format: 'YYYY-MM-DD',	
        onSelect: function() {
            console.log(this.getMoment().format('YYYY-MM-DD'));
        } 
    });
  </script>
<script type="text/javascript">
var eID;
 $('#alert').hide();
 $('#editIconID').hide();
  $('#deleteIconId').hide();
   
function start() {
		//these two line adds the color to each different row
    $(".mytable1 tr:even").addClass("even1tr");
    $(".mytable1 tr:odd").addClass("odd1tr");

 	//handle the mouseover , mouseout and click event
  $(".mytable1 tr")  
  .mouseover(function() {$(this).addClass("trover1");})
  .mouseout(function() {$(this).removeClass("trover1");})
  .click(function(){$(this).toggleClass("trclick1");})
  .click(function(){$(this).siblings().removeClass('trclick1');});
  
 $(".mytable1 tr").click(function(event) {
   eID = $(this).find("td:nth-child(1)").html();
   $('#editIconIdDisable').hide();
   $('#editIconID').show();  
    $('#deleteIconIdDisabled').hide();	
    $('#deleteIconId').show(); 
 
 }); 

}

window.onload = start();

$('#editIconIdDisable').click(function(){
	alert("Please Select Any Row");
});
$('#deleteIconIdDisabled').click(function(){
	alert("Please Select Any Row");
});


$('#btnIdAdd').click(function(){
	
		var CliName = $('#txtcnameid').val();
		var PrjName = $('#txtIdProjectId').val();
		var Status = $('#txtIdSta').val();
		var Comp = $('#txtcompdate1id').val();
		var Desc = $('#txtIdDesc').val();
		if((CliName=="-- SELECT --") || (PrjName=="") || (Status=="-- SELECT --")){
			var valid=true;
		if(CliName=="-- SELECT --"){
			 document.getElementById("spanCNameId").innerHTML="Please Select Client <br> ";
			 document.getElementById("txtcnameid").style.borderColor="#FF0000";
			 valid=false;
		}
		else{
			document.getElementById("spanCNameId").innerHTML="";
			document.getElementById("txtcnameid").style.borderColor="";
		}
		if(PrjName==""){
	
					document.getElementById("spanFirstNameId").innerHTML ="Enter the Project Name";
					document.getElementById("txtIdProjectId").style.borderColor="#FF0000";
					valid=false;	
				}
				else
				{
			        document.getElementById("spanFirstNameId").innerHTML="";
					document.getElementById("txtIdProjectId").style.borderColor="";
				}
		if(Status=="-- SELECT --"){
			 document.getElementById("spanStatusId").innerHTML="Please Select Status <br> ";
			 document.getElementById("txtIdSta").style.borderColor="#FF0000";
			valid=false;
			
		}
		else{
			document.getElementById("spanStatusId").innerHTML="";
			document.getElementById("txtIdSta").style.borderColor="";
		}
		return valid;
		}
		
		else{			
		$.ajax({
				url  	 : "addprj.php",
				type 	 : "POST",
				async	 : false,
				data	 : {
							addValue 	: 1,							
							addCliName	: CliName,
							addPrjName  : PrjName,
							addStatus   : Status, 
							addDesc     : Desc,
							addComp     : Comp
							
				},
				success	 :function(ad){							
					$('#myModal').modal('hide');
					$('#alert').show();
					$('#alert').html(ad);
					window.location.reload();
				}			
		});
		}
	
});

$('#btnIdUpdate').click(function(){
	var idVar = $('#hId').val()-0;
		var Cliname = $('#txtcnameid1').val();
		var Prjname = $('#txtunameid1').val();
		var description = $('#txtIdDscripName').val();
		var status = $('#txtIdSta1').val();		
		var deadline = $('#txtcompdateid').val();	
	if((Cliname=="-- SELECT --") || (Prjname=="") || (status=="-- SELECT --")){
			var valid=true;
		if(Cliname=="-- SELECT --"){
			 document.getElementById("clientspanId").innerHTML="Please Select Client <br> ";
			 document.getElementById("txtcnameid1").style.borderColor="#FF0000";
			 valid=false;
		}
		else{
			document.getElementById("clientspanId").innerHTML="";
			document.getElementById("txtcnameid").style.borderColor="";
		}
		if(Prjname==""){
	
					document.getElementById("dem1").innerHTML ="Enter the Project Name";
					document.getElementById("txtunameid1").style.borderColor="#FF0000";
					valid=false;
				}
				else
				{
			        document.getElementById("dem1").innerHTML="";
					document.getElementById("txtunameid1").style.borderColor="";
				}
		if(status=="-- SELECT --"){
			 document.getElementById("spanStatusId1").innerHTML="Please Select Status <br> ";
			 document.getElementById("txtIdSta1").style.borderColor="#FF0000";
			valid=false;
			
		}
		else{
			document.getElementById("spanStatusId1").innerHTML="";
			document.getElementById("txtIdSta1").style.borderColor="";
		}
		return valid;
		}
			
		$.ajax({
				url  	 : "updateprj.php",
				type 	 : "POST",
				async	 : false,
				data	 : {
							updateValue 	    : 1,
							upIdVar			    : idVar,
							upcliname	        : Cliname,
							upprjname	        : Prjname,
							updescription	    : description,
							upstatus	        : status,
							updeadline	        : deadline
							
				},
				success	 :function(up){									
					$('#myModal2').modal('hide');
					$('#alert').show();
					$('#alert').html(up);
					window.location.reload();
				}			
		});
	
});

 function getEditId(){
		
		$.ajax({
				url  	 : "editprj.php",
				type 	 : "POST",
				datatype : "JSON",
				data	 : {
							editvalue : 1,
							valueId	  : eID
				},
				success	 :function(show){
					$('#hId').val(show.ID);
					$('#txtcnameid1').val(show.CLIENT_ID);
					$('#txtunameid1').val(show.PROJECT_NAME);
					$('#txtIdDscripName').val(show.DESCRIPTION);
					$('#txtIdSta1').val(show.STATUS_ID);
					$('#txtcompdateid').val(show.DEADLINE);					
					
				}			
		});
    }
function getDeleteId(){
		if (eID){			
			var confirm = window.confirm("Do you want to delete");			
			if(confirm){
		
		$.ajax({
				url  	 : "deleteprj.php",
				type 	 : "POST",
				//datatype : "JSON",
				data	 : {
							deletevalue : 1,
							valueId	  : eID
				},
				success	 :function(del){
					 				
				$('#alert').show();
				$('#alert').html(del);
				window.location.reload();
				}			
		});
    }
	}else{
			alert("Please Select Any Row");
		}
    }
</script>




