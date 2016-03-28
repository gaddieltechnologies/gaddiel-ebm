<?php include('../include/header.php'); ?>
<?php require "../database.php";?>
<div class="subnavbar">
<div class="subnavbar-inner">	
<body>
		<div class="container">
			<ul class="mainnav  pull-right">
			<?php if($srole=="ADMIN"){ ?>
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
						<h3 id="myModalLabel">Add Target</h3>
					  </div>
					  <div class="modal-body">	
				<!--<form method="post" >-->
					 	<div class="span5" >
						
						<div class="row">
							<div class="span2">
								 <label>Project<font color="#FF0000"> *</font></label>
								   <?php
					$pdo = Database::connect();
					$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
					$result = $pdo->prepare("SELECT cli.CLIENT_NAME CLIENT_NAME, prj.ID ID, prj.PROJECT_NAME PROJECT_NAME FROM ebm_client cli, ebm_project prj WHERE cli.ID=prj.CLIENT_ID");
					$result->execute();
					echo '<select class="span2" autofocus id="txtIdProjectId" onBlur="Projfun()" name=" NameProjectname" >';
					echo  '<option>-- SELECT --</option>';
					for($i=0; $row = $result->fetch(); $i++){
					Database::disconnect();	
						?>	
					<option value="<?php  echo $row['ID'];?>" >  <?php  echo $row['CLIENT_NAME'];?> >  <?php  echo $row['PROJECT_NAME'];?>  </option>						    
											<?php } echo '</select>';  ?>	
							<span style="color:red;" id="spanProjID"></span>
							</div>
						
							<div class="span2">
						 <label >Phase<font color="#FF0000"> *</font></label>
						 <?php
						$pdo = Database::connect();
						$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
						$result = $pdo->prepare("SELECT ID,WORK_TYPE FROM ebm_work_type");
						$result->execute();
						echo '<select class="span2" onBlur="Phasefun()" id="wktid" name="NameWorkName" >';
						echo  '<option>-- SELECT --</option>';												
						for($i=0; $row = $result->fetch(); $i++){
						Database::disconnect();	
								?>
                        <option value="<?php  echo $row['ID'];?>" ><?php  echo $row['WORK_TYPE'];?>  </option>						    
											<?php } echo '</select>';  ?>
							<span style="color:red;" id="spanPhaseID"></span>
						 </div>
						 </div>
						<div class="row">
							<div class="span2">
						 <label  >Component<font color="#FF0000"> *</font></label>
						  <?php
						$pdo = Database::connect();
						$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
						$result = $pdo->prepare("SELECT COMP_ID,COMP_NAME FROM ebm_wt_component");
						$result->execute();
						echo '<select class="span2" onBlur="Componentfun()" id="Compid" name="NameComponentname" >';
						echo  '<option>-- SELECT --</option>';												
						for($i=0; $row = $result->fetch(); $i++){
						Database::disconnect();	
								?>
                        <option value="<?php  echo $row['COMP_ID'];?>" ><?php  echo $row['COMP_NAME'];?>  </option>						    
											<?php } echo '</select>';  ?>
							<span style="color:red;" id="spanCompId"></span>
						</div>
						
	
							<div class="span2">
						 <label  >Assign To<font color="#FF0000"> *</font></label>
						 <?php
						$pdo = Database::connect();
						$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
						$result = $pdo->prepare("SELECT ID,EMAIL,FIRSTNAME FROM ebm_reg");
						$result->execute();
						echo '<select class="span2" id="Userid" onBlur="Userfun()" name="NameUserName" >';
						echo  '<option>-- SELECT --</option>';												
						for($i=0; $row = $result->fetch(); $i++){
						Database::disconnect();	
								?>
                        <option value="<?php  echo $row['ID'];?>" > <?php  echo $row['EMAIL'];?>><?php  echo $row['FIRSTNAME'];?> </option>						    
											<?php } echo '</select>';  ?>
							<span style="color:red;" id="spanUserId"></span>
						 </div>
						 </div>
						<div class="row">
							<div class="span2">
						 <label   >Target Date<font color="#FF0000"> *</font></label>
						 <input class="span2" type="text" name="TragetDate" id="txttardateid" value="" onblur="Targetfun()" placeholder="Target Date"  >
						 <span style="color:red;" id="spanTargetId"></span>
						 </div>
						<div class="span2">
						 <label   >Completion Date </label>
						 <input class="span2" type="text" name="CompletionDate" id="txtcompdateid" value="" placeholder="Completion Date"  maxlength="60" >
						 </div>
						 </div>
						<div class="row">
						<div class="span2">
						  <label  >Remarks </label>
						  <textarea class="span2" name="Remarks" id="txtIdRemarks" placeholder="Remarks" ></textarea>
						 </div>
							
							<div class="span2">
						 <label  >Work Description </label>
						 <textarea class="span2" name="WorkDescription" id="txtIdWorkDesp" placeholder="Work Description" ></textarea>
						 </div>
						<div class="row">
						  </div>
						  	<div class="span2">
						 <label   >Status <font color="#FF0000"> *</font></label>
						 <?php	
						$pdo = Database::connect();
						$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
						$result = $pdo->prepare("SELECT  ID, STATUS FROM  ebm_status");
						$result->execute();
						echo '<select class="span2" onBlur="Statusfun()" id="txtIdSta" name=" NameStaName" >';
						echo  '<option>-- SELECT --</option>';												
						for($i=0; $row = $result->fetch(); $i++){	
						Database::disconnect();	
								?>
						<option  value="<?php  echo $row['ID'];?>" ><?php  echo $row['STATUS'];?>  </option>						    
											<?php } echo '</select>';  ?>	
							<span style="color:red;" id="spanStatusID"></span>
						 </div>
							
						 </div>
						</div>
                        </div>
					  <div class="modal-footer">
					    <button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
					    <button name="submit" id="btnIdAdd" class="btn btn-success" >Save</button>
						
						
					  </div>
					  <!--</form>-->
					</div>
					
				<li>
					<a href="#myModal2" data-toggle="modal" id="editIconID" onClick="getEditId(eID);">
						<i class="icon-edit"></i>
						<span>Edit</span>
					</a>  
						
						<a id="editIconIdDisable" >
						<i class="icon-edit" disabled="disabled"></i>
						<span class="txtdisable">Edit</span>					
					</a>					
				</li> 
				<!-- Modal -->
					<div id="myModal2" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
					  <div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">x</button>
						<h3 id="myModalLabel">Edit Target</h3>
					  </div>
					  <div class="modal-body">		
							<div class="span5" >
					<!-- <form method="post" >-->
						<div class="row">
							<div class="span2">
							     <input type="hidden" id="hId" name="hidden"/>
								 <label>Project<font color="#FF0000"> *</font></label>
								  <?php
										$pdo = Database::connect();
										$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
										$result = $pdo->prepare("SELECT cli.CLIENT_NAME CLIENT_NAME, prj.ID ID, prj.PROJECT_NAME PROJECT_NAME FROM ebm_client cli, ebm_project prj WHERE cli.ID=prj.CLIENT_ID");
										$result->execute();
										echo '<select class="span2" autofocus id="txtIdProjectId1" onBlur="Projfun1()" name=" NameProjectname">';
										echo  '<option>-- SELECT --</option>';
										for($i=0; $row = $result->fetch(); $i++){
										Database::disconnect();	
											?>	
										<option value="<?php  echo $row['ID'];?>" >  <?php  echo $row['CLIENT_NAME'];?> >  <?php  echo $row['PROJECT_NAME'];?>  </option>						    
											<?php } echo '</select>';  ?>	
							<span style="color:red;" id="spanProjID1"></span>
							</div>
						
							<div class="span2">
						 <label >Phase<font color="#FF0000"> *</font></label>
									<?php
									$pdo = Database::connect();
									$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
									$result = $pdo->prepare("SELECT ID,WORK_TYPE FROM ebm_work_type");
									$result->execute();
									echo '<select class="span2" onBlur="Phasefun1()" id="wktid1" name="NameWorkName" >';
									echo  '<option>-- SELECT --</option>';												
									for($i=0; $row = $result->fetch(); $i++){
									Database::disconnect();	
											?>
									<option value="<?php  echo $row['ID'];?>" ><?php  echo $row['WORK_TYPE'];?>  </option>						    
											<?php } echo '</select>';  ?>
							<span style="color:red;" id="spanPhaseID1"></span>
						 </div>
						 </div>
						<div class="row">
							<div class="span2">
						 <label  >Component<font color="#FF0000"> *</font></label>
									  <?php
									$pdo = Database::connect();
									$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
									$result = $pdo->prepare("SELECT COMP_ID,COMP_NAME FROM ebm_wt_component");
									$result->execute();
									echo '<select class="span2" onBlur="Componentfun1()" id="Compid1" name="NameComponentname" >';
									echo  '<option>-- SELECT --</option>';												
									for($i=0; $row = $result->fetch(); $i++){
									Database::disconnect();	
											?>
									<option value="<?php  echo $row['COMP_ID'];?>" ><?php  echo $row['COMP_NAME'];?>  </option>						    
														<?php } echo '</select>';  ?>
							<span style="color:red;" id="spanCompId1"></span>
						</div>
						
							<div class="span2">
						 <label  >Assign To<font color="#FF0000"> *</font></label>
								 <?php
								$pdo = Database::connect();
								$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
								$result = $pdo->prepare("SELECT ID,EMAIL,FIRSTNAME FROM ebm_reg");
								$result->execute();
								echo '<select class="span2" id="Userid1" onBlur="Userfun1()" name="NameUserName">';
								echo  '<option>-- SELECT --</option>';												
								for($i=0; $row = $result->fetch(); $i++){
								Database::disconnect();	
										?>
								<option value="<?php  echo $row['ID'];?>" ><?php  echo $row['EMAIL'];?>><?php  echo $row['FIRSTNAME'];?>  </option>						    
											<?php } echo '</select>';  ?>
							<span style="color:red;" id="spanUserId1"></span>
						 </div>
						 </div>
						<div class="row">
							<div class="span2">
						 <label   >Target Date<font color="#FF0000"> *</font></label>
						 <input class="span2 " type="text" name="TragetDate" id="txttardateid1" value="" maxlength="0"  onblur="Targetfun1()"placeholder="Target Date" >
						 <span style="color:red;" id="spanTargetId1"></span>
						 </div>
						<div class="span2">
						 <label   >Completion Date </label>
						 <input class="span2" type="text" name="CompletionDate" id="txtcompdateid1" maxlength="0" value="" placeholder="Completion Date"   >
						 </div>
							
						</div>
						<div class="row">
						<div class="span2">
						  <label  >Remarks </label>
						  <textarea class="span2" name="Status" id="txtIdRemarks1" placeholder="Remarks" ></textarea>
						
						 </div>
							
						
							<div class="span2">
						 <label  >Work Description </label>
						 <textarea class="span2" name="WorkDescription" id="txtIdWorkDesp1" placeholder="Work Description" ></textarea>
						 
						  </div>
						  </div>
						<div class="row">
						<div class="span2">
						 <label   >Status<font color="#FF0000"> *</font></label>
											<?php	
											$pdo = Database::connect();
											$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
											$result = $pdo->prepare("SELECT  ID, STATUS FROM  ebm_status");
											$result->execute();
											echo '<select class="span2" id="txtIdSta1" onBlur="Statusfun1()" name=" NameStaName" >';
											echo  '<option>-- SELECT --</option>';												
											for($i=0; $row = $result->fetch(); $i++){	
											Database::disconnect();	
													?>
											<option  value="<?php  echo $row['ID'];?>" ><?php  echo $row['STATUS'];?>  </option>						    
											<?php } echo '</select>';  ?>
											<span style="color:red;" id="spanStatusID1"></span>
											</div>
							
						</div>
                        </div>
						 </div>
					  <div class="modal-footer">
					  <button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
					    <button class="btn btn-success" id="btnIdUpdate" >Update</button>
						
						
					  </div>
				<!-- </form> -->	  
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
			<?php } ?>				
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
              <h3>WEEK TARGET</h3>
            </div>
            <!-- /widget-header -->
            <div class="widget-content">
              <table class="table table-bordered mytable1">
                <thead>
                  <tr>
				  <th style="display:none;">ID</th>
                    <th>CLIENT</th>
                    <th>PROJECT</th>
                    <th>PHASE</th>
                    <th>COMPONENT</th>
                    <th>ASSIGN TO</th>
                    <th>TARGET DATE</th>
                    <th>STATUS</th>
                    <th>COMPLETION DATE</th>
					<th>WORK DESCRIPTION</th>
					<th>REMARKS</th>
                  </tr>
                </thead>
                <tbody>
                  
					<?php

				$pdo = Database::connect();
								
				$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
				$result = $pdo->prepare("SELECT wt.ROLE ROLE,wt.WT_ID WT_ID,cli.CLIENT_NAME CLIENT_NAME,prj.PROJECT_NAME PROJECT_NAME,wkt.WORK_TYPE WORK_TYPE,com.COMP_NAME COMP_NAME,reg.EMAIL EMAIL,reg.FIRSTNAME FIRSTNAME,wt.TARGET_DATE TARGET_DATE,sta.STATUS STATUS,wt.COMPLETION_DATE COMPLETION_DATE,wt.WORK_DESCRIPTION WORK_DESCRIPTION,wt.REMARKS REMARKS FROM ebm_client cli,ebm_project prj,ebm_work_type wkt,ebm_reg reg,ebm_week_target wt,ebm_wt_component com,ebm_status sta WHERE wt.USER_ID='$sid' AND sta.ID=wt.WT_STATUS AND prj.ID=wt.PROJECT_ID AND reg.ID=wt.USER_ID AND com.COMP_ID=wt.COMPONENT_ID AND wkt.ID=wt.WORKTYPE_ID AND cli.ID=prj.CLIENT_ID ORDER BY WT_ID DESC");
				$result->execute();
				while($row = $result->fetch()){
				Database::disconnect();
                			
				?>
					<tr >
					<td style="display:none;"><?php  echo $row['WT_ID'];?> </td>
					<td><?php  echo $row['CLIENT_NAME'];?> </td>
					<td><?php  echo $row['PROJECT_NAME'];?> </td>
					<td><?php  echo $row['WORK_TYPE'];?> </td>
					<td><?php  echo $row['COMP_NAME'];?> </td> 
					<td><?php  echo $row['EMAIL'];?>><?php  echo $row['FIRSTNAME'];?> </td>
					<td><?php  echo $row['TARGET_DATE'];?> </td>
					<td><?php  echo $row['STATUS'];?></td> 
					<td><?php  echo $row['COMPLETION_DATE'];?></td> 
					<td><?php  echo $row['WORK_DESCRIPTION'];?></td> 
				<td><?php  echo $row['REMARKS'];?><?php } ?></td> 
					</tr>				
        		</tbody>
              </table>
		    </div>
            <!-- /widget-content --> 
          </div>
          <!-- /widget --> 
		 </div>
		 <?php if($srole=="ADMIN"){ ?>
		         <div class="span12">
          <div class="widget widget-table action-table">
            <div class="widget-header"> <i class="icon-th-list"></i>
              <h3>WEEK TARGET</h3>
            </div>
            <!-- /widget-header -->
            <div class="widget-content">
              <table class="table table-bordered mytable1">
                <thead>
                  <tr>
				  <th style="display:none;">ID</th>
                    <th>CLIENT</th>
                    <th>PROJECT</th>
                    <th>PHASE</th>
                    <th>COMPONENT</th>
                    <th>ASSIGN TO</th>
                    <th>TARGET DATE</th>
                    <th>STATUS</th>
                    <th>COMPLETION DATE</th>
					<th>WORK DESCRIPTION</th>
					<th>REMARKS</th>
                  </tr>
                </thead>
                <tbody>
                  
					<?php
				
				$pdo = Database::connect();
				
				$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
				$result = $pdo->prepare("SELECT wt.WT_ID WT_ID,cli.CLIENT_NAME CLIENT_NAME,prj.PROJECT_NAME PROJECT_NAME,wkt.WORK_TYPE WORK_TYPE,com.COMP_NAME COMP_NAME,reg.EMAIL EMAIL,reg.FIRSTNAME FIRSTNAME,wt.TARGET_DATE TARGET_DATE,sta.STATUS STATUS,wt.COMPLETION_DATE COMPLETION_DATE,wt.WORK_DESCRIPTION WORK_DESCRIPTION,wt.REMARKS REMARKS FROM ebm_client cli,ebm_project prj,ebm_work_type wkt,ebm_reg reg,ebm_week_target wt,ebm_wt_component com,ebm_status sta WHERE wt.USER_ID!='$sid' AND sta.ID=wt.WT_STATUS AND prj.ID=wt.PROJECT_ID AND reg.ID=wt.USER_ID AND com.COMP_ID=wt.COMPONENT_ID AND wkt.ID=wt.WORKTYPE_ID AND cli.ID=prj.CLIENT_ID ORDER BY WT_ID DESC");
				$result->execute();
				while($row = $result->fetch()){
				Database::disconnect();				
				?>
					<tr >
					<td style="display:none;"><?php  echo $row['WT_ID'];?> </td>
					<td><?php  echo $row['CLIENT_NAME'];?> </td>
					<td><?php  echo $row['PROJECT_NAME'];?> </td>
					<td><?php  echo $row['WORK_TYPE'];?> </td>
					<td><?php  echo $row['COMP_NAME'];?> </td> 
					<td><?php  echo $row['EMAIL'];?>><?php  echo $row['FIRSTNAME'];?> </td>
					<td><?php  echo $row['TARGET_DATE'];?> </td>
					<td><?php  echo $row['STATUS'];?></td> 
					<td><?php  echo $row['COMPLETION_DATE'];?></td>  
					<td><?php  echo $row['WORK_DESCRIPTION'];?></td> 
				<td><?php  echo $row['REMARKS'];?><?php } ?></td> 
					</tr>				
        		</tbody>
              </table>
		    </div>
            <!-- /widget-content --> 
          </div>
          <!-- /widget --> 
		 </div
        <!-- /span12 --> 
		</div>
             <?php } ?>
		</body>
      <!--</ /row --> 
    </div>
    <!-- /container --> 
  </div>
  <!-- /main-inner --> 
</div>
<!-- /main -->
 <?php include('../include/footer.php'); ?>
<script src="../resources/js/targetval.js"></script>
 <script src="../resources/js/moment-with-langs.js"></script>
<script src="../resources/js/pikaday.js"></script>
<!---datapicker-->
<script>

  var picker = new Pikaday(
 {
		//changeMonth: true,
    	//changeYear: true,
		
        field:document.getElementById('txttardateid'), 	
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
	var picker = new Pikaday(
 {
		//changeMonth: true,
    	//changeYear: true,
		
        field:document.getElementById('txttardateid1'), 	
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
 $('#deleteIconId').hide()
$(function(){
		//these two line adds the color to each different row
   //var eID;
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
	
		var Prjname = $('#txtIdProjectId').val();
		var Phasename=$('#wktid').val();
		var Compname = $('#Compid').val();
		var Username = $('#Userid').val();
		var Targetdate = $('#txttardateid').val();
		var status = $('#txtIdSta').val();		
		var deadline = $('#txtcompdateid').val();	
		var Workdescription = $('#txtIdWorkDesp').val();
		var Remarks = $('#txtIdRemarks').val();
		if((Prjname=="-- SELECT --") || (Phasename=="-- SELECT --") || (Compname=="-- SELECT --") || (Username=="-- SELECT --") ||(Targetdate=="") ||(status=="-- SELECT --")){
			var valid=true;
		
		if(Prjname=="-- SELECT --"){
	
					document.getElementById("spanProjID").innerHTML ="Please Select Project";
					document.getElementById("txtIdProjectId").style.borderColor="#FF0000";
					valid=false;
				}
				else
				{
			        document.getElementById("spanProjID").innerHTML="";
				    document.getElementById("txtIdProjectId").style.borderColor="";
				}
		if(Phasename=="-- SELECT --"){
	
					document.getElementById("spanPhaseID").innerHTML ="Please Select Phase";
					document.getElementById("wktid").style.borderColor="#FF0000";
					valid=false;
				}
				else
				{
			        document.getElementById("spanPhaseID").innerHTML="";
					document.getElementById("wktid").style.borderColor="";
				}
		if(Compname=="-- SELECT --"){
			 document.getElementById("spanCompId").innerHTML="Please Select Component";
			 document.getElementById("Compid").style.borderColor="#FF0000";
			 valid=false;
		}
		else{
			document.getElementById("spanCompId").innerHTML="";
			document.getElementById("Compid").style.borderColor="";
			
		}
		if(Username=="-- SELECT --"){
			 document.getElementById("spanUserId").innerHTML="Please Select User";
			 document.getElementById("Userid").style.borderColor="#FF0000";
			 valid=false;
		}
		else{
			document.getElementById("spanUserId").innerHTML="";
			document.getElementById("Userid").style.borderColor="";
			
		}
		if(Targetdate==""){
			 document.getElementById("spanTargetId").innerHTML="Please Select Target Date";
			 document.getElementById("txttardateid").style.borderColor="#FF0000";
			 valid=false;
		}
		else{
			document.getElementById("spanTargetId").innerHTML="";
			document.getElementById("txttardateid").style.borderColor="";
		}
		
		if(status=="-- SELECT --"){
			 document.getElementById("spanStatusID").innerHTML="Please Select Status";
			 document.getElementById("txtIdSta").style.borderColor="#FF0000";
			valid=false;
			
		}
		else{
			document.getElementById("spanStatusID").innerHTML="";
			document.getElementById("txtIdSta").style.borderColor="";
		}

		return valid;
		}
		
		else{			
		$.ajax({
				url  	 : "addwt.php",
				type 	 : "POST",
				async	 : false,
				data	 : {
							addValue 	        : 1,
							addprjname	        : Prjname,
							addphasename	    : Phasename,
							addcompname	        : Compname,
							addusername	        : Username,
							addtardate	        : Targetdate,
							addstatus	        : status,
							adddeadline	        : deadline,
							adddescription	    : Workdescription,
							addremarks	        : Remarks
							
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
		var Phasename=$('#wktid1').val();
		var Compname = $('#Compid1').val();
		var Username = $('#Userid1').val();
		var Targetdate = $('#txttardateid1').val();
		var status = $('#txtIdSta1').val();		
		var deadline = $('#txtcompdateid1').val();	
		var Workdescription = $('#txtIdWorkDesp1').val();
		var Remarks = $('#txtIdRemarks1').val();
		if((Prjname=="-- SELECT --") || (Phasename=="-- SELECT --") || (Compname=="-- SELECT --") || (Username=="-- SELECT --") ||(Targetdate=="") ||(status=="-- SELECT --")){
			var valid=true;
		
		if(Prjname=="-- SELECT --"){
	
					document.getElementById("spanProjID1").innerHTML ="Please Select Project";
					document.getElementById("txtIdProjectId1").style.borderColor="#FF0000";
					valid=false;
				}
				else
				{
			        document.getElementById("spanProjID1").innerHTML="";
					document.getElementById("txtIdProjectId1").style.borderColor="";
				}
		if(Phasename=="-- SELECT --"){
	
					document.getElementById("spanPhaseID1").innerHTML ="Please Select Phase";
					document.getElementById("wktid1").style.borderColor="#FF0000";
					valid=false;
				}
				else
				{
			        document.getElementById("spanPhaseID1").innerHTML="";
					document.getElementById("wktid1").style.borderColor="";
				}
		if(Compname=="-- SELECT --"){
			 document.getElementById("spanCompId1").innerHTML="Please Select Component";
			 document.getElementById("Compid1").style.borderColor="#FF0000";
			 valid=false;
		}
		else{
			document.getElementById("spanCompId1").innerHTML="";
			document.getElementById("Compid1").style.borderColor="";
			
		}
		if(Username=="-- SELECT --"){
			 document.getElementById("spanUserId1").innerHTML="Please Select User";
			 document.getElementById("Userid1").style.borderColor="#FF0000";
			 valid=false;
		}
		else{
			document.getElementById("spanUserId1").innerHTML="";
			document.getElementById("Userid1").style.borderColor="";
		}
		if(Targetdate==""){
			 document.getElementById("spanTargetId1").innerHTML="Please Select Target Date";
			 document.getElementById("txttardateid1").style.borderColor="#FF0000";
			 valid=false;
		}
		else{
			document.getElementById("spanTargetId1").innerHTML="";
			document.getElementById("txttardateid1").style.borderColor="#FF0000";
		}
		
		if(status=="-- SELECT --"){
			 document.getElementById("spanStatusID1").innerHTML="Please Select Status";
		    document.getElementById("txtIdSta1").style.borderColor="#FF0000";
			valid=false;
			
		}
		else{
			document.getElementById("spanStatusID1").innerHTML="";
			document.getElementById("txtIdSta1").style.borderColor="";
		}

		return valid;
		}
		$.ajax({
				url  	 : "updatewt.php",
				type 	 : "POST",
				async	 : false,
				data	 : {
							updateValue 	    : 1,
							upIdVar			    : idVar,
							upprjname	        : Prjname,
							upphasename	        : Phasename,
							upcompname	        : Compname,
							upusername	        : Username,
							uptardatename	    : Targetdate,
							upstatus	        : status,
							updeadline	        : deadline,
							updescription	    : Workdescription,
							upremarks	        : Remarks	
							
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
				url  	 : "editwt.php",
				type 	 : "POST",
				datatype : "JSON",
				data	 : {
							editvalue : 1,
							valueId	  : eID
				},
				success	 :function(show){
					$('#hId').val(show.WT_ID);
					$('#txtIdProjectId1').val(show.PROJECT_ID);
					$('#wktid1').val(show.WORKTYPE_ID);
					$('#Compid1').val(show.COMPONENT_ID);
					$('#Userid1').val(show.USER_ID);
					$('#txttardateid1').val(show.TARGET_DATE);
					$('#txtIdSta1').val(show.WT_STATUS);
					$('#txtcompdateid1').val(show.COMPLETION_DATE);	
					$('#txtIdWorkDesp1').val(show.WORK_DESCRIPTION);
					$('#txtIdRemarks1').val(show.REMARKS);
					
					
									
					
				}			
		});
    }
	function getDeleteId(){
		if (eID){			
			var confirm = window.confirm("Do you want to delete");			
			if(confirm){
		
		$.ajax({
				url  	 : "deletewt.php",
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


