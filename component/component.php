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
						<h3 id="myModalLabel">Add Component</h3>
					  </div>
					  <div class="modal-body">	
					 	<div class="span5" >
					<!--<form method="post" >-->
						<div class="row">
							<div class="span2">
								 <label>Project<font color="#FF0000"> *</font></label>
								 <?php
					$pdo = Database::connect();
					$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
					$result = $pdo->prepare("SELECT cli.CLIENT_NAME CLIENT_NAME, prj.ID ID, prj.PROJECT_NAME PROJECT_NAME FROM ebm_client cli, ebm_project prj WHERE cli.ID=prj.CLIENT_ID");
					$result->execute();
					echo '<select class="span2" onblur="Projfun()" autofocus id="txtIdProjectId" name="NameProjectname" >';
					echo  '<option>-- SELECT --</option>';
					for($i=0; $row = $result->fetch(); $i++){
					Database::disconnect();	
						?>	
					<option value="<?php  echo $row['ID'];?>" >  <?php  echo $row['CLIENT_NAME'];?> >  <?php  echo $row['PROJECT_NAME'];?>  </option>						    
											<?php } echo '</select>';  ?>	
								   <span style="color:red;"  id="spanProjID"></span>
							</div>
						<div class="span2">
						 <label  >Component<font color="#FF0000"> *</font></label>
						 <input class="span2" type="text" name="txtComponentname" id="txtunameid" value="" placeholder="Component" onblur="Componentfun()"  maxlength="60" >
						  <span style="color:red;" id="spanFirstNameId" ></span>
						  </div>
						  </div>
						   <div class="row">
							<div class="span2">
						 <label   >Status <font color="#FF0000"> *</font></label>
						 <?php	
						$pdo = Database::connect();
						$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
						$result = $pdo->prepare("SELECT  ID, STATUS FROM  ebm_status");
						$result->execute();
						echo '<select class="span2" onblur="Statusfun()" id="txtIdSta" name=" NameStaName" >';
						echo  '<option>-- SELECT --</option>';												
						for($i=0; $row = $result->fetch(); $i++){	
						Database::disconnect();	
								?>
						<option value="<?php  echo $row['ID'];?>" ><?php  echo $row['STATUS'];?>  </option>						    
											<?php } echo '</select>';  ?>	
						 
							<span style="color:red;"  id="spanStatusID"></span>				
						 </div>
							<div class="span2">
						 <label   >Completion Date </label>
						 <input class="span2" type="text" name="CompletionDate" id="txtcompdateid" value="" placeholder="Completion Date"  maxlength="60" >
						 </div>
						</div>
                        </div>	
					  </div>
					  <div class="modal-footer">
					    <button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
					    <button  type="submit" name="submit" id="btnIdAdd" class="btn btn-success">Save</button>
						
						</div>
					<!--</form>-->
					  </div>
					
				<li>
					<a href="#myModal2" id="editIconID" data-toggle="modal"  onClick="getEditId(eID);">
						<i class="icon-edit"></i>
						<span>Edit</span>
					</a>
                    <a  id="editIconIdDisable" >
						<i class="icon-edit " disabled="disabled"></i>
						<span class="txtdisable">Edit</span>
					</a>  	    				
				</li> 
				<!-- Modal -->
					<div id="myModal2" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
					  <div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">x</button>
						<h3 id="myModalLabel">Edit Component</h3>
					  </div>
					  <div class="modal-body">		
							<div class="span5" >
						<!--<form method="post">-->
						<div class="row">
							<div class="span2">
							     <input type="hidden" id="hId" name="hidden"/>
								 <label>Project<font color="#FF0000"> *</font></label>
								 <?php
									$pdo = Database::connect();
									$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
									$result = $pdo->prepare("SELECT cli.CLIENT_NAME CLIENT_NAME, prj.ID ID, prj.PROJECT_NAME PROJECT_NAME FROM ebm_client cli, ebm_project prj WHERE cli.ID=prj.CLIENT_ID");
									$result->execute();
									echo '<select class="span2"  onblur="Projfun1()" autofocus   id="txtIdProjectId1" name="NameProjectname" >';
									echo  '<option>-- SELECT --</option>';
									for($i=0; $row = $result->fetch(); $i++){
									Database::disconnect();	
										?>	
									<option value="<?php  echo $row['ID'];?>" >  <?php  echo $row['CLIENT_NAME'];?> >  <?php  echo $row['PROJECT_NAME'];?>  </option>						    
											<?php } echo '</select>';  ?>
								   <span style="color:red;"  id="spanProjID1"></span>
							</div>
						<div class="span2">
						 <label  >Component<font color="#FF0000"> *</font></label>
						 <input class="span2" type="text" name="Status" id="txtunameid1" value="" placeholder="Component" onblur="Componentfun1()"  maxlength="60" >
						  <span style="color:red;" id="spanNameId1" ></span>
						  </div>
						</div>
						<div class="row">
							<div class="span2">
						 <label   >Status <font color="#FF0000"> *</font></label>
								 <?php	
								$pdo = Database::connect();
								$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
								$result = $pdo->prepare("SELECT  ID, STATUS FROM  ebm_status");
								$result->execute();
								echo '<select class="span2" onblur="Statusfun1()"id="txtIdSta1" name=" NameStaName" >';
								echo  '<option>-- SELECT --</option>';												
								for($i=0; $row = $result->fetch(); $i++){	
								Database::disconnect();	
										?>
								<option value="<?php  echo $row['ID'];?>" ><?php  echo $row['STATUS'];?>  </option>						    
									<?php } echo '</select>';  ?>	
									<span style="color:red;" id="spanStatusID1" ></span>
						 </div>
							<div class="span2">
						 <label   >Completion Date </label>
						 <input class="span2" type="text" name="CompletionDate" id="txtcompdateid1" value="" placeholder="Completion Date"  maxlength="60" >
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
					<a href="#" id="deleteIconId" onClick="getDeleteId(eID);">
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
	<div id="alert" class="alert alert-success"></div> 
	
            <!-- /widget-content --> 
          </div>
			<!-- /widget--> 
	   </div>
	     <!-- /span12 --> 
        <div class="span12">
          <div class="widget widget-table action-table">
            <div class="widget-header"> <i class="icon-th-list"></i>
              <h3>COMPONENT</h3>
			   
            </div>
            <!-- /widget-header -->
            <div class="widget-content">
              <table class="table table-bordered mytable1">
                <thead>
                  <tr>
				    <th style="display:none;">ID</th>
                    <th>CLIENT</th>
                    <th>PROJECT</th>
                    <th>COMPONENT NAME</th>
                    <th>STATUS</th>
                    <th>COMPLETION DATE</th>
                  </tr>
                </thead>
                <tbody>
                  <?php
				$pdo = Database::connect();
				$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
				$result = $pdo->prepare("SELECT com.COMP_ID COMP_ID,cli.CLIENT_NAME CLIENT_NAME,prj.PROJECT_NAME PROJECT_NAME,com.COMP_NAME COMP_NAME,sta.STATUS STATUS,com.COMPLETION_DATE COMPLETION_DATE FROM ebm_client cli,ebm_project prj,ebm_wt_component com,ebm_status sta WHERE sta.ID=com.STATUS_ID AND prj.ID=com.PROJECT_ID AND cli.ID=prj.CLIENT_ID ORDER BY COMP_ID DESC");
				$result->execute();
				while($row = $result->fetch()){
				Database::disconnect();			
				?>
					<tr >
					<td style="display:none;"><?php  echo $row['COMP_ID'];?> </td>
					<td><?php  echo $row['CLIENT_NAME'];?> </td>
					<td><?php  echo $row['PROJECT_NAME'];?> </td> 
					<td><?php  echo $row['COMP_NAME'];?> </td> 
					<td><?php  echo $row['STATUS'];?></td> 
					<td><?php  echo $row['COMPLETION_DATE'];?><?php } ?></td>
					 
					 
					
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
 <script src="../resources/js/componentval.js"></script>
 <script src="../resources/js/moment-with-langs.js"></script>
<script src="../resources/js/pikaday.js"></script>

<script>
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
	 var picker = new Pikaday(
 {
		//changeMonth: true,
    	//changeYear: true,
		
        field:document.getElementById('txtcompdateid1'), 	
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
$(function(){
		//these two line adds the color to each different row
   var eID;
    $(".mytable1 tr:even").addClass("even1tr");
    $(".mytable1 tr:odd").addClass("odd1tr");

 	//handle the mouseover , mouseout and click event
  $(".mytable1 tr")  
  .mouseover(function() {$(this).addClass("trover1");})
  .mouseout(function() {$(this).removeClass("trover1");})
  .click(function(){$(this).toggleClass("trclick1");})
  .click(function(){$(this).siblings().removeClass('trclick1');});
 
 }); 

 $(".mytable1 tr").click(function(event) {
   eID = $(this).find("td:nth-child(1)").html(); 
 $('#editIconIdDisable').hide();
    $('#editIconID').show();  
  $('#deleteIconIdDisabled').hide();	
    $('#deleteIconId').show();   
});
$('#editIconIdDisable').click(function(){
	alert("Please Select Any Row");
});
$('#deleteIconIdDisabled').click(function(){
	alert("Please Select Any Row");
});
$('#btnIdAdd').click(function(){
	
		var PrjName = $('#txtIdProjectId').val();
		var Status = $('#txtIdSta').val();
		var Compname = $('#txtunameid').val();
		var Comp = $('#txtcompdateid').val();
		if((PrjName=="-- SELECT --") || (Status=="-- SELECT --") ||(Compname=="")){
			var valid=true;
		
		if(PrjName=="-- SELECT --"){
	
					document.getElementById("spanProjID").innerHTML ="Please Select Project";
					document.getElementById("txtIdProjectId").style.borderColor="#FF0000";
					valid=false;
				}
				else
				{
			        document.getElementById("spanProjID").innerHTML="";
					document.getElementById("txtIdProjectId").style.borderColor="";
				}
		if(Status=="-- SELECT --"){
			 document.getElementById("spanStatusID").innerHTML="Please Select Status <br> ";
			 document.getElementById("txtIdSta").style.borderColor="#FF0000";
			valid=false;
			
		}
		else{
			document.getElementById("spanStatusID").innerHTML="";
			document.getElementById("txtIdSta").style.borderColor="";
		}
		if(Compname==""){
			 document.getElementById("spanFirstNameId").innerHTML="Enter the Component Name";
			 document.getElementById("txtunameid").style.borderColor="#FF0000";
			 valid=false;
		}
		else{
			document.getElementById("spanFirstNameId").innerHTML="";
			document.getElementById("txtunameid").style.borderColor="";
			
		}
		return valid;
		}
		
		else{			
		$.ajax({
				url  	 : "addcomp.php",
				type 	 : "POST",
				async	 : false,
				data	 : {
							addValue 	: 1,
							addPrjName  : PrjName,
							addStatus   : Status, 
							addCompname : Compname,
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
		var Prjname = $('#txtIdProjectId1').val();
		var Compname = $('#txtunameid1').val();
		var status = $('#txtIdSta1').val();		
		var deadline = $('#txtcompdateid1').val();
		if((Prjname=="-- SELECT --") || (status=="-- SELECT --") ||(Compname=="")){
			var valid=true;
		
		if(Prjname=="-- SELECT --"){
	
					document.getElementById('spanProjID1').innerHTML ="Please Select Project";
					document.getElementById("txtIdProjectId1").style.borderColor="#FF0000";
					valid=false;
				}
				else
				{
			        document.getElementById('spanProjID1').innerHTML="";
					document.getElementById("txtIdProjectId1	").style.borderColor="";
				}
		if(status=="-- SELECT --"){
			 document.getElementById("spanStatusID1").innerHTML="Please Select Status <br> ";
			 document.getElementById("txtIdSta").style.borderColor="#FF0000";
			valid=false;
			
		}
		else{
			document.getElementById("spanStatusID1").innerHTML="";
			document.getElementById("txtIdSta").style.borderColor="";
		}
		if(Compname==""){
			 document.getElementById("spanNameId1").innerHTML="Enter the Component Name";
			 document.getElementById("txtunameid").style.borderColor="#FF0000";
			 valid=false;
		}
		else{
			document.getElementById("spanNameId1").innerHTML="";
			document.getElementById("txtunameid").style.borderColor="";
			
		}
		return valid;
		}		
        		
		$.ajax({
				url  	 : "updatecom.php",
				type 	 : "POST",
				async	 : false,
				data	 : {
							updateValue 	    : 1,
							upIdVar			    : idVar,
							upprjname	        : Prjname,
							upcompname	        : Compname,
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
				url  	 : "editcom.php",
				type 	 : "POST",
				datatype : "JSON",
				data	 : {
							editvalue : 1,
							valueId	  : eID
				},
				success	 :function(show){
					$('#hId').val(show.COMP_ID);
					$('#txtIdProjectId1').val(show.PROJECT_ID);
					$('#txtunameid1').val(show.COMP_NAME);
					//$('#txtIdDscripName').val(show.DESCRIPTION);
					$('#txtIdSta1').val(show.STATUS_ID);
					$('#txtcompdateid1').val(show.COMPLETION_DATE);					
					
				}			
		});
    }
	function getDeleteId(){
		if (eID){
			
			var confirm = window.confirm("Do you want to delete");			
			if(confirm){
		
		$.ajax({
				url  	 : "deletecom.php",
				type 	 : "POST",
				//datatype : "JSON",
				data	 : {
							deletevalue : 1,
							valueId	  : eID
				},
				success	 :function(del){
					 				
					$('#myModal2').modal('hide');
							$('#alert').show();
							$('#alert').html(del);
							window.location.reload();
				}			
		});
    }
	}else{
			alert("Select any row");
		}
    }
</script>
