<?php include('../include/header.php'); ?>
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
				<!--Model-->
				<div id="myModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">x</button>
						<h3 id="myModalLabel">Add TimeSheet</h3>
					</div>
					<div class="modal-body">
					    
         <!--  <form method="post" >-->	
				<div class="row">
				<div class="span2">
					<label>Date <font color="#FF0000"> *</font></label>
						 <input class="span2" type="text" name="Date" value="<?php echo $curDate ?>" id="txtdateid" maxlength="0" onBlur="datefun();" placeholder="Date">
					<span style="color:red;" id="errDateId" ></span>
				</div>
				<div class="span2">
					<label for="mints">Upload </label>
					<input class="span2" id="fileid" type="file" name="NameUpload"/>
				</div>
			    </div>		 
			    <div class="row">
				<div class="span2">
					<label for="starttime">Start Time<font color="#FF0000"> *</font> </label>
					<input type="text" autofocus name="timestart" class="span2" id="txtstarttimeid" onblur="start();" onChange="Checkdifference();" >
					<span style="color:red;" id="errStartTimeId" ></span>
				</div>
				<div class="span2">
					<label for="endtime">End Time<font color="#FF0000"> *</font> </label>
					<input type="text"  name="timestop" id="txtendtimeid" class="span2" onblur="endt();" onChange="Checkdifference();">
					<span style="color:red;" id="errEndTimeId" ></span>
				</div>
					</div>
				<div class="row">
				<div  class="span2">
					<label for="mints">Minutes </label>
					<input type="text" id="hour" name="NameMins" class="span2" readonly size=4 >
					<span style="color:red;" id="errMinId" ></span>
					
				</div>
				
				<div class="span2">
					<label>Projects<font color="#FF0000"> *</font></label>
					
					<?php
					require '../database.php';
					$pdo = Database::connect();
					$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
					$result = $pdo->prepare("SELECT cli.CLIENT_NAME CLIENT_NAME, prj.ID ID, prj.PROJECT_NAME PROJECT_NAME FROM ebm_client cli, ebm_project prj WHERE cli.ID=prj.CLIENT_ID");
					$result->execute();
					echo '<select class="span2" onBlur="Projfun()" autofocus id="txtIdTmsProjectId" name=" Nameprojectname" >';
					echo  '<option>-- SELECT --</option>';
					for($i=0; $row = $result->fetch(); $i++){
					Database::disconnect();	
						?>	
                    <option value="<?php  echo $row['ID'];?>" >  <?php  echo $row['CLIENT_NAME'];?> >  <?php  echo $row['PROJECT_NAME'];?>  </option>						    
											<?php } echo '</select>';  ?>
				    <span style="color:red;" id="spanProjID" ></span>
				</div>
				</div >
				<div class="row">
				<div class="span2">
					<label>Work Type<font color="#FF0000"> *</font></label>
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
					<span style="color:red;" id="spanPhaseID" ></span>
											
				</div>
				
				<div class="span2">
					<label>Status<font color="#FF0000"> *</font></label>
					<?php	
						$pdo = Database::connect();
						$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
						$result = $pdo->prepare("SELECT  ID, STATUS FROM  ebm_status");
						$result->execute();
						echo '<select onBlur="Statusfun()" class="span2" id="txtIdSta" name=" NameStaName" >';
						echo  '<option>-- SELECT --</option>';												
						for($i=0; $row = $result->fetch(); $i++){	
						Database::disconnect();	
								?>
                     <option value="<?php  echo $row['ID'];?>" ><?php  echo $row['STATUS'];?>  </option>						    
											<?php } echo '</select>';  ?>	
					<span style="color:red;" id="spanStatusID" ></span>
				</div>
				</div>
				<div class="row">
				<div class="span2">
					<label for="remarks">Remarks</label>
					<textarea class="span2" name="NameRemarks" id="txtremarkid"> </textarea>					
					<span style="color:red;" id="span" ></span>
				</div>
				
				<div class="span2">
					<label for="achievements">Achievements</label>
					<textarea class="span2" id="txtachievementsid" name ="NameAchivements"> </textarea>
					<span style="color:red;" id="span" ></span>
				</div>
				
                </div>
			    </div>
					<div class="modal-footer">
					<button  type="submit" name="ts_submit" id="btnIdAdd" class="btn btn-success">Save</button>
					<input type="reset" class="btn" value= "Clear" />
				    <button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
					</div>
				<!--	</form>-->
				<!-- /form-actions -->			
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
				<div id="myModal2" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
					  <div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">x</button>
						<h3 id="myModalLabel">Edit Component</h3>
				    </div>
					<div class="modal-body">
				<div class="row">
				<div class="span2">
					<label>Date <font color="#FF0000"> *</font></label>
						 <input class="span2" type="text" name="Date" id="txtdateid1" maxlength="0" onBlur="datefun1();" value="" placeholder="Date">
					<span style="color:red;" id="errDateId1" ></span>
				</div>
				<div class="span2">
					<label for="mints">Upload </label>
					<input class="span2" type="file" id="fileid1"name="NameUpload"/>
				</div>
			    </div>
					   
			    <div class="row">
				<div class="span2">
				<input type="hidden" id="hId" name="hidden"/>
					<label for="starttime">Start Time<font color="#FF0000"> *</font> </label>
					<input type="text" autofocus name="timestart" onChange="Checkdifference1();" class="span2" id="txtstarttimeid1" onblur="start1()" >
					<span style="color:red;" id="errStartTimeId1" ></span>
				</div>
				<div class="span2">
					<label for="endtime">End Time<font color="#FF0000"> *</font> </label>
					<input type="text"  name="timestop" id="txtendtimeid1" class="span2" onblur="endt1();" onChange="Checkdifference1();">
					<span style="color:red;" id="errEndTimeId1" ></span>
				</div>
					</div>
				<div class="row">
						 <div  class="span2">
							<label for="mints">Minutes </label>
							<input type="text" id="hour1" name="NameMins" class="span2" readonly size=4 >
                             <span style="color:red;" id="errMinId1" ></span>							
						</div>
							<div class="span2">
							     <input type="hidden" id="hId" name="hidden"/>
								 <label>Project<font color="#FF0000"> *</font></label>
								 <?php
									$pdo = Database::connect();
									$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
									$result = $pdo->prepare("SELECT cli.CLIENT_NAME CLIENT_NAME, prj.ID ID, prj.PROJECT_NAME PROJECT_NAME FROM ebm_client cli, ebm_project prj WHERE cli.ID=prj.CLIENT_ID");
									$result->execute();
									echo '<select class="span2"  onblur="Projfun1()" autofocus   id="txtIdTmsProjectId1" name="NameProjectname" >';
									echo  '<option>-- SELECT --</option>';
									for($i=0; $row = $result->fetch(); $i++){
									Database::disconnect();	
										?>	
									<option value="<?php  echo $row['ID'];?>" >  <?php  echo $row['CLIENT_NAME'];?> >  <?php  echo $row['PROJECT_NAME'];?>  </option>						    
											<?php } echo '</select>';  ?>
								   <span style="color:red;"  id="spanProjID1"></span>
							</div>
						</div>
				<div class="row">
				<div class="span2">
					<label>Work Type<font color="#FF0000"> *</font></label>
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
					 
				</div>
				
				<div class="span2">
					<label>Status<font color="#FF0000"> *</font></label>
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
                     <option value="<?php  echo $row['ID'];?>" ><?php  echo $row['STATUS'];?>  </option>						    
											<?php } echo '</select>';  ?>	
					<span style="color:red;" id="spanStatusID1" ></span>
				</div>
				</div>
				<div class="row">
				<div class="span2">
					<label for="remarks">Remarks</label>
					<textarea class="span2" name="NameRemarks" id="txtremarkid1" > </textarea>					
					<span style="color:red;" id="span" ></span>
				</div>
				
				<div class="span2">
					<label for="achievements">Achievements</label>
					<textarea class="span2" id="txtachievementsid1" name ="NameAchivements"> </textarea>
					<span style="color:red;" id="span" ></span>
				</div>
				<div class="span2">
					<label for="achievements">Achievements</label>
					<textarea class="span2" id="txtachievementsid1" name ="NameAchivements"> </textarea>
					<span style="color:red;" id="span" ></span>
				</div>
				
                </div>
				</div>
					<div class="modal-footer">
						  <button class="btn btn-success" id="btnIdUpdate" >Update</button>
						 <input type="reset" class="btn" value= "Clear" />
						 <button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
					</div>
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
            <!-- /widget-header -->
           
            <!-- /widget-content --> 
          </div>
			<!-- /widget--> 
	   </div>
	     <!-- /span12 -->
        <div class="span12">
          <div class="widget widget-table action-table">
            <div class="widget-header"> <i class="icon-th-list"></i>
              <h3>Time Sheet of <?php echo $suser ?> </h3>
			  <form action="timesheet.php" method="post">
					<div class="span2">
					<input class="span2" type="text" name="Date1" id="txtdateid2" maxlength="0"  value="" placeholder="From Date">
					</div>  
					<div class="span2">
					<input class="span2" type="text" name="Date2" id="txtdateid3" maxlength="0"  value="" placeholder="To Date">
					</div>  
					<div class="span2">
					<?php
									$pdo = Database::connect();
									$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
									$result = $pdo->prepare("SELECT ID,CLIENT_NAME FROM ebm_client");
									$result->execute();
									echo '<select class="span2"    id="txtClientIdSearch" name="NameClientSearchname" >';
									echo  '<option value="">-- SELECT CLIENT NAME --</option>';
									for($i=0; $row = $result->fetch(); $i++){
									Database::disconnect();	
										?>	
									<option value="<?php  echo $row['ID'];?>" >  <?php  echo $row['CLIENT_NAME'];?></option>						    
											<?php } echo '</select>';  ?>
											</div> 
 					<div class="span2">
					<?php
									$pdo = Database::connect();
									$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
									$result = $pdo->prepare("SELECT ID,PROJECT_NAME FROM ebm_project");
									$result->execute();
									echo '<select class="span2"    id="txtProjectIdSearch" name="NameProjectSearchname" >';
									echo  '<option value="">-- SELECT PROJECT NAME --</option>';
									for($i=0; $row = $result->fetch(); $i++){
									Database::disconnect();	
										?>	
									<option value="<?php  echo $row['ID'];?>" >  <?php  echo $row['PROJECT_NAME'];?></option>						    
											<?php } echo '</select>';  ?>
									</div>  
							<div class="span2">
							<input type="submit" class="btn btn-success "  id="btnSearchId" name="btnSubmit1" value="Search"> 
							
							</div>  </div>  
					</form>
           
            <!-- /widget-header -->
            <div class="widget-content">
              <table class="table table-bordered mytable1">
                <thead>
                  <tr>
				   <th style="display:none;">ID</th>
					<th>Date</th>
					<th>Start Time </th>
                    <th>End Time</th>
                    <th>Minutes</th>
                    <th>Clients</th>
					<th>Projects</th>
                    <th>Work Type</th>
                    <th>Status</th>
					<th>Remarks</th>
                    <th>Achievements</th>
                    <th style="display:none;">Attachment</th>
                  </tr>
                </thead>
                <tbody>
                  <?php
				$pdo = Database::connect();
				$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
				$result = $pdo->prepare("SELECT tms.ID ID,tms.TS_DATE TS_DATE,tms.START_TIME START_TIME,tms.End_TIME End_TIME,tms.TS_MINTUES TS_MINTUES,tms.REMARKS REMARKS,tms.ACHIEVEMENT ACHIEVEMENT,cli.CLIENT_NAME CLIENT_NAME,prj.PROJECT_NAME PROJECT_NAME,sta.STATUS STATUS,wkt.WORK_TYPE WORK_TYPE FROM ebm_client cli,ebm_project prj,ebm_timesheet tms,ebm_work_type wkt,ebm_status sta WHERE tms.USER_NAME='$suser' AND sta.ID=tms.STATUS_ID AND wkt.ID=tms.WORKTYPE_ID AND prj.ID=tms.PROJECT_ID AND cli.ID=prj.CLIENT_ID ORDER BY tms.ID DESC");
				$result->execute();
				if (isset($_POST['btnSubmit1'])) {
							
							$Date1 = $_POST['Date1'];
							$Date2 = $_POST['Date2'];
							$project=$_POST['NameProjectSearchname'];
							$client=$_POST['NameClientSearchname'];
							if((!empty($_POST['Date1']))&&(!empty($_POST['Date2'])))
								{
										$pdo = Database::connect();
										$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
										$sql="SELECT tms.ID ID,tms.TS_DATE TS_DATE,tms.START_TIME START_TIME,tms.End_TIME End_TIME,tms.TS_MINTUES TS_MINTUES,tms.REMARKS REMARKS,tms.ACHIEVEMENT ACHIEVEMENT,cli.CLIENT_NAME CLIENT_NAME,prj.PROJECT_NAME PROJECT_NAME,sta.STATUS STATUS,wkt.WORK_TYPE WORK_TYPE,reg.FIRSTNAME FIRSTNAME FROM ebm_client cli,ebm_project prj,ebm_timesheet tms,ebm_work_type wkt,ebm_status sta,ebm_reg reg WHERE tms.USER_NAME='$suser' AND cli.ID LIKE :NameClientSearchname AND prj.ID LIKE :NameProjectSearchname AND tms.TS_DATE BETWEEN '$Date1' AND '$Date2'  AND sta.ID=tms.STATUS_ID AND wkt.ID=tms.WORKTYPE_ID AND prj.ID=tms.PROJECT_ID  AND cli.ID=prj.CLIENT_ID  AND reg.EMAIL=tms.USER_NAME  ORDER BY tms.ID DESC;";
										$result=$pdo->prepare($sql);		
										$result->bindValue(':NameClientSearchname',$client.'%');
										$result->bindValue(':NameProjectSearchname',$project.'%');
										$result->execute();
										}
										else
										{
										$pdo = Database::connect();
										$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
										$sql="SELECT tms.ID ID,tms.TS_DATE TS_DATE,tms.START_TIME START_TIME,tms.End_TIME End_TIME,tms.TS_MINTUES TS_MINTUES,tms.REMARKS REMARKS,tms.ACHIEVEMENT ACHIEVEMENT,cli.CLIENT_NAME CLIENT_NAME,prj.PROJECT_NAME PROJECT_NAME,sta.STATUS STATUS,wkt.WORK_TYPE WORK_TYPE,reg.FIRSTNAME FIRSTNAME FROM ebm_client cli,ebm_project prj,ebm_timesheet tms,ebm_work_type wkt,ebm_status sta,ebm_reg reg WHERE tms.USER_NAME='$suser' AND cli.ID LIKE :NameClientSearchname AND prj.ID LIKE :NameProjectSearchname AND sta.ID=tms.STATUS_ID AND wkt.ID=tms.WORKTYPE_ID AND prj.ID=tms.PROJECT_ID  AND cli.ID=prj.CLIENT_ID AND reg.EMAIL=tms.USER_NAME ORDER BY tms.ID DESC;";
										$result=$pdo->prepare($sql);
										$result->bindValue(':NameClientSearchname',$client.'%');
										$result->bindValue(':NameProjectSearchname',$project.'%');
										$result->execute();
										}
				while($row = $result->fetch()){
				Database::disconnect();			
				?>
					<tr Style="cursor:pointer;" id ="divShowId">
					<td style="display:none;"><?php  echo $row['ID'];?> </td>
					<td><?php  echo $row['TS_DATE'];?></td>
					<td><?php  echo $row['START_TIME'];?></td>
					<td><?php  echo $row['End_TIME'];?></td>  
					<td><?php  echo $row['TS_MINTUES'];?></td> 
					<td><?php  echo $row['CLIENT_NAME'];?> </td>
					<td><?php  echo $row['PROJECT_NAME'];?> </td> 
					<td><?php  echo $row['WORK_TYPE'];?></td> 
					<td><?php  echo $row['STATUS'];?></td>
					<td><?php  echo $row['REMARKS'];?></td> 
					<td><?php  echo $row['ACHIEVEMENT'];?></td> 
				<td style="display:none;"><?php  echo $row['DOC_ATTACHMENT'];?><?php } }?></td>  
					
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
			<h3>Time Sheet for other user</h3>
		  	<form action=" " method="post">
		<div class="span2">			
		  <?php
					require_once '../database.php';
					$pdo = Database::connect();
					$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
					$result = $pdo->prepare("SELECT ID,EMAIL FROM ebm_reg WHERE EMAIL!='$suser' ");
					$result->execute();
					echo '<select  autofocus class="span2" id="txtIdEmail" name=" txtEmailSearchName" >';
					echo  '<option value="">-- SELECT USER--</option>';
					for($i=0; $row = $result->fetch(); $i++){
						
					Database::disconnect();	
						?>
									
					<option value="<?php  echo $row['EMAIL'];?>" >  <?php  echo $row['EMAIL'];?> </option>						    
											<?php } echo '</select>';  ?> 
						</div>
					<div class="span1">
					<input class="span1" type="text" name="Date3" id="txtdateid4" maxlength="0"  value="" placeholder="From Date">
					</div>  
					<div class="span1">
					<input class="span1" type="text" name="Date4" id="txtdateid5" maxlength="0"  value="" placeholder="To Date">
					</div>  
					<div class="span2">
					<?php
									$pdo = Database::connect();
									$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
									$result = $pdo->prepare("SELECT ID,CLIENT_NAME FROM ebm_client");
									$result->execute();
									echo '<select class="span2"    id="txtClientSearchId" name="NameClientSearchname" >';
									echo  '<option value="">-- SELECT CLIENT NAME --</option>';
									for($i=0; $row = $result->fetch(); $i++){
									Database::disconnect();	
										?>	
									<option value="<?php  echo $row['ID'];?>" >  <?php  echo $row['CLIENT_NAME'];?></option>						    
											<?php } echo '</select>';  ?>
											</div> 
 					<div class="span2">
					<?php
									$pdo = Database::connect();
									$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
									$result = $pdo->prepare("SELECT ID,PROJECT_NAME FROM ebm_project");
									$result->execute();
									echo '<select class="span2"    id="txtProjectSearchId" name="NameProjectSearchname" >';
									echo  '<option value="">-- SELECT PROJECT NAME --</option>';
									for($i=0; $row = $result->fetch(); $i++){
									Database::disconnect();	
										?>	
									<option value="<?php  echo $row['ID'];?>" >  <?php  echo $row['PROJECT_NAME'];?></option>						    
											<?php } echo '</select>';  ?>
									</div>  
							<div class="span2">
							<input type="submit" class="btn btn-success "  id="btnSearchId" name="btnSubmit" value="Search"> 
							
							</div>  </div>  
					</form>
            <!-- /widget-header -->
            <div class="widget-content">
              <table class="table table-bordered mytable1">
                <thead>
                  <tr>
				   <th style="display:none;">ID</th>
					<th>Date</th>
					<th>Start Time </th>
                    <th>End Time</th>
                    <th>Minutes</th>
                    <th>Clients</th>
					<th>Projects</th>
                    <th>Work Type</th>
                    <th>Status</th>
					<th>Remarks</th>
                    <th>Achievements</th>
					<th>User</th>
                    <th style="display:none;">Attachment</th>
                  </tr>
                </thead>
                <tbody  id="vuser">
                		<?php
						if (isset($_POST['btnSubmit'])) {
							
							$Date1 = $_POST['Date3'];
							$Date2 = $_POST['Date4'];
							$project=$_POST['NameProjectSearchname'];
							$client=$_POST['NameClientSearchname'];
							$EMAIL = $_POST['txtEmailSearchName'];
							echo($Date1);
							echo($Date2); 
								if((!empty($_POST['Date3']))&&(!empty($_POST['Date4'])))
								{
										$pdo = Database::connect();
										$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
										$sql="SELECT tms.ID ID,tms.TS_DATE TS_DATE,tms.START_TIME START_TIME,tms.End_TIME End_TIME,tms.TS_MINTUES TS_MINTUES,tms.REMARKS REMARKS,tms.ACHIEVEMENT ACHIEVEMENT,cli.CLIENT_NAME CLIENT_NAME,prj.PROJECT_NAME PROJECT_NAME,sta.STATUS STATUS,wkt.WORK_TYPE WORK_TYPE,reg.FIRSTNAME FIRSTNAME FROM ebm_client cli,ebm_project prj,ebm_timesheet tms,ebm_work_type wkt,ebm_status sta,ebm_reg reg WHERE tms.TS_DATE BETWEEN '$Date1' AND '$Date2' AND sta.ID=tms.STATUS_ID AND wkt.ID=tms.WORKTYPE_ID AND prj.ID=tms.PROJECT_ID  AND cli.ID=prj.CLIENT_ID  AND reg.EMAIL=tms.USER_NAME ORDER BY tms.ID DESC;";
										$result=$pdo->prepare($sql);		
										$result->bindValue(':date1',$Date1);
										$result->bindValue(':date2',$Date2);
										$result->bindValue(':txtEmailSearchName',$EMAIL.'%');
										$result->bindValue(':NameClientSearchname',$client.'%');
										$result->bindValue(':NameProjectSearchname',$project.'%');
										$result->execute();
										
							} 
										else 
										{
										$pdo = Database::connect();
										$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
										$sql="SELECT tms.ID ID,tms.TS_DATE TS_DATE,tms.START_TIME START_TIME,tms.End_TIME End_TIME,tms.TS_MINTUES TS_MINTUES,tms.REMARKS REMARKS,tms.ACHIEVEMENT ACHIEVEMENT,cli.CLIENT_NAME CLIENT_NAME,prj.PROJECT_NAME PROJECT_NAME,sta.STATUS STATUS,wkt.WORK_TYPE WORK_TYPE,reg.FIRSTNAME FIRSTNAME FROM ebm_client cli,ebm_project prj,ebm_timesheet tms,ebm_work_type wkt,ebm_status sta,ebm_reg reg WHERE  cli.ID LIKE :NameClientSearchname AND prj.ID LIKE :NameProjectSearchname AND  tms.USER_NAME LIKE :txtEmailSearchName AND sta.ID=tms.STATUS_ID AND wkt.ID=tms.WORKTYPE_ID AND prj.ID=tms.PROJECT_ID  AND cli.ID=prj.CLIENT_ID AND reg.EMAIL=tms.USER_NAME ORDER BY tms.ID DESC;";
										$result=$pdo->prepare($sql);
																			
										$result->bindValue(':txtEmailSearchName',$EMAIL.'%');
										$result->bindValue(':NameClientSearchname',$client.'%');
										$result->bindValue(':NameProjectSearchname',$project.'%');
										$result->execute();
										}
										
										for($i=0; $rowe = $result->fetch(); $i++){																	
										Database::disconnect();	
										  ?>
										<tr Style='cursor:pointer;'><td style='display:none;'><?php  echo $rowe['ID'];?></td><td><?php  echo $rowe['TS_DATE'];?></td><td><?php  echo $rowe['START_TIME'];?></td><td><?php  echo $rowe['End_TIME'];?></td>					<td><?php  echo $rowe['TS_MINTUES'];?></td><td><?php  echo $rowe['CLIENT_NAME'];?> </td><td><?php  echo $rowe['PROJECT_NAME'];?> </td><td><?php  echo $rowe['WORK_TYPE'];?></td><td><?php  echo $rowe['STATUS'];?></td>					<td><?php  echo $rowe['REMARKS'];?></td><td><?php  echo $rowe['ACHIEVEMENT'];?></td><td><?php  echo $rowe['FIRSTNAME'];?></td><td style='display:none;'><?php  echo $rowe['DOC_ATTACHMENT'];?><?php }}?></td></tr>										
        		</tbody>
				
              </table>
		    </div>
            <!-- /widget-content --> 
          </div>
          <!-- /widget --> 
		 </div>
		 <?php } ?>
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
								
<script src="../resources/js/jquery-clockpicker.min.js"></script>
<script src="../resources/js/sheet.js"></script>
<script src="../resources/js/moment-with-langs.js"></script>
<script src="../resources/js/pikaday.js"></script>
<script>
var picker = new Pikaday(
 {	
		//changeMonth: true,
    	//changeYear: true,
		
        field:document.getElementById('txtdateid'), 	
        firstDay: 1,
	    minDate: new Date('2000-01-01'),
       	maxDate: moment().toDate(),
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
		
        field:document.getElementById('txtdateid1'), 	
        firstDay: 1,
	    minDate: new Date('2000-01-01'),
       	maxDate: moment().toDate(),
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
		
        field:document.getElementById('txtdateid2'), 	
        firstDay: 1,
	    minDate: new Date('2000-01-01'),
       	maxDate: moment().toDate(),
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
		
        field:document.getElementById('txtdateid3'), 	
        firstDay: 1,
	    minDate: new Date('2000-01-01'),
       	maxDate: moment().toDate(),
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
		
        field:document.getElementById('txtdateid4'), 	
        firstDay: 1,
	    minDate: new Date('2000-01-01'),
       	maxDate: moment().toDate(),
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
		
        field:document.getElementById('txtdateid5'), 	
        firstDay: 1,
	    minDate: new Date('2000-01-01'),
       	maxDate: moment().toDate(),
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
/* $("#btnSearchId").click(function(){
	 var emailid = $('#txtIdEmail').val();
	 var date1 = $('#txtdateid1').val();
	 var date2 = $('#txtdateid2').val();
	 var client = $('#txtClientSearchId').val();
	 var project = $('#txtProjectSearchId').val();
	//alert(client);
		var txtIdEmail = $(this).val();
		   $.ajax({
					url  	 : "usr.php",
					type 	 : "POST",
					async	 : false,
					data	 : {
								addFolderValue 	: 1,
								 txtEmailSearchName	: emailid,
								Date1	: date1,
								Date2	: date2, 
				NameClientSearchname	: client,
				NameProjectSearchname	: project
					},	
					success	 :function(html){
						//alert(data);
						$("#vuser").html(html);
					}				
				});
	});
	 */
$('#btnIdAdd').click(function(){
	
	
	    var date = $('#txtdateid').val();
	    var starttime = $('#txtstarttimeid').val();
	    var endtime = $('#txtendtimeid').val();
	    var minutes = $('#hour').val();
	    var projectname = $('#txtIdTmsProjectId').val();
	    var phasename = $('#wktid').val();
	    var status = $('#txtIdSta').val();
	    var remarks = $('#txtremarkid').val();
	    var achievements = $('#txtachievementsid').val();
	    var fle = $('#fileid').val();
	   var valid=true;	
		if(starttime > endtime){         		
          	valid=false;
			document.getElementById("errStartTimeId").innerHTML="Should Be Earlier To End Time";
			document.getElementById("txtstarttimeid").style.borderColor="#FF0000";
			document.getElementById("errEndTimeId").innerHTML="Should Be Later To Start Time";
			document.getElementById("txtendtimeid").style.borderColor="#FF0000";
			$("#hour").val("");
			 alert("Start Time Should Be Earlier To End Time \n End Time Should Be Later To Start Time ");	
			
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
         if (date=="")
			{
		document.getElementById("errDateId").innerHTML="Date Required";
		document.getElementById("txtdateid").style.borderColor="#FF0000";
		valid=false;
			}			
		else
			{
		document.getElementById("errDateId").innerHTML="";
		document.getElementById("txtdateid").style.borderColor="";
			}			
		if (starttime=="")
			{
		document.getElementById("errStartTimeId").innerHTML="Start Time Required";
		document.getElementById("txtstarttimeid").style.borderColor="#FF0000";
		valid=false;
			}			
		else
			{
		document.getElementById("errStartTimeId").innerHTML="";
		document.getElementById("txtstarttimeid").style.borderColor="";
			}	
		if (endtime=="")
			{
		document.getElementById("errEndTimeId").innerHTML="End Time Required";
		document.getElementById("txtendtimeid").style.borderColor="#FF0000";
		valid=false;
			}
		else
			{
		document.getElementById("errEndTimeId").innerHTML="";
		document.getElementById("txtendtimeid").style.borderColor="";
			}	
	
		if(projectname=="-- SELECT --"){
	
					document.getElementById("spanProjID").innerHTML ="Please Select Project";
					document.getElementById("txtIdTmsProjectId").style.borderColor="#FF0000";
					valid=false;
				}
				else
				{
			        document.getElementById("spanProjID").innerHTML="";
					document.getElementById("txtIdTmsProjectId").style.borderColor="";
				}
		if(phasename=="-- SELECT --"){
	
					document.getElementById("spanPhaseID").innerHTML ="Please Select Phase";
					document.getElementById("wktid").style.borderColor="#FF0000";
					valid=false;
				}
				else
				{
			        document.getElementById("spanPhaseID").innerHTML="";
					document.getElementById("wktid").style.borderColor="";
				}
		if(status=="-- SELECT --"){
			 document.getElementById("spanStatusID").innerHTML="Please Select Status ";
			 document.getElementById("txtIdSta").style.borderColor="#FF0000";
			valid=false;
			
		}		
		else{
			document.getElementById("spanStatusID").innerHTML="";
			document.getElementById("txtIdSta").style.borderColor="";
		}
				
		if(valid){	
		$.ajax({
				url  	 : "addtimesheet.php",
				type 	 : "POST",
				async	 : false,
				data	 : {
							addValue 	: 1,
							adddate         : date,
							addstarttime    : starttime,
							addendtime      : endtime,
							addminutes      : minutes,	
							addprjname      : projectname,
							addphasename    : phasename,
							addstatus       : status,
							addachievements : achievements,
							addremarks      : remarks,		
							addfile         : fle
		
				},
				success	 :function(ad){							
					$('#myModal').modal('hide');
					$('#alert').show();
					$('#alert').html(ad);
					window.location.reload();
				}			
		});
		}

	return valid;
});

$('#btnIdUpdate').click(function(){
		var idVar = $('#hId').val()-0;
		var date = $('#txtdateid1').val();
		var starttime = $('#txtstarttimeid1').val();
	    var endtime = $('#txtendtimeid1').val();
	    var minutes = $('#hour1').val();
	    var projectname = $('#txtIdTmsProjectId1').val();
	    var phasename = $('#wktid1').val();
	    var status = $('#txtIdSta1').val();
	    var remarks = $('#txtremarkid1').val();
	    var achievements = $('#txtachievementsid1').val();
	    var fle = $('#fileid1').val();
		var valid=true;	
		if(starttime > endtime){         		
          	valid=false;
			document.getElementById("errStartTimeId1").innerHTML="Should Be Earlier To End Time";
			document.getElementById("txtstarttimeid1").style.borderColor="#FF0000";
			document.getElementById("errEndTimeId1").innerHTML="Should Be Later To Start Time";
			document.getElementById("txtendtimeid1").style.borderColor="#FF0000";
			$("#hour1").val("");
			 alert("Start Time Should Be Earlier To End Time \n End Time Should Be Later To Start Time ");	
			
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
		if (date=="")
			{
		document.getElementById("errDateId1").innerHTML="Date Required";
		document.getElementById("txtdateid1").style.borderColor="#FF0000";
		valid=false;
			}			
		else
			{
		document.getElementById("errDateId1").innerHTML="";
		document.getElementById("txtdateid1").style.borderColor="";
			}	
		if (starttime=="")
			{
		document.getElementById("errStartTimeId1").innerHTML="Start Time Required";
		document.getElementById("txtstarttimeid1").style.borderColor="#FF0000";
		valid=false;
			}
		else
			{
		document.getElementById("errStartTimeId1").innerHTML="";
		document.getElementById("txtstarttimeid1").style.borderColor="";
			}	
		if (endtime=="")
			{
		document.getElementById("errEndTimeId1").innerHTML="End Time Required";
		document.getElementById("txtendtimeid1").style.borderColor="#FF0000";
		valid=false;
			}
		else
			{
		document.getElementById("errEndTimeId1").innerHTML="";
		document.getElementById("txtendtimeid1").style.borderColor="";
			}	
	
		if(projectname=="-- SELECT --"){
	
					document.getElementById('spanProjID1').innerHTML ="Please Select Project";
					document.getElementById("txtIdTmsProjectId1").style.borderColor="#FF0000";
					valid=false;
				}
				else
				{
			        document.getElementById("spanProjID1").innerHTML="";
				    document.getElementById("txtIdTmsProjectId1").style.borderColor="";
				}
		if(phasename=="-- SELECT --"){
	
					document.getElementById("spanPhaseID1").innerHTML ="Please Select Phase";
				    document.getElementById("wktid1").style.borderColor="#FF0000";
					valid=false;
				}
				else
				{
			        document.getElementById("spanPhaseID1").innerHTML="";
					document.getElementById("wktid1").style.borderColor="";
				}
		if(status=="-- SELECT --"){
			 document.getElementById("spanStatusID1").innerHTML="Please Select Status ";
		     document.getElementById("txtIdSta1").style.borderColor="#FF0000";
			valid=false;
			
		}
		else{
			document.getElementById("spanStatusID1").innerHTML="";
			document.getElementById("txtIdSta1").style.borderColor="";
		}
       if(valid){		
		$.ajax({
				url  	 : "updatetimesheet.php",
				type 	 : "POST",
				async	 : false,
				data	 : {
							updateValue    : 1,
							upIdVar		   : idVar,
							update         : date,
							upstarttime    : starttime,
							upendtime      : endtime,
							upminutes      : minutes,	
							upprjname      : projectname,
							upphasename    : phasename,
							upstatus       : status,
							upachievements : achievements,
							upremarks      : remarks, 
							upfile         : fle
							
				},
				success	 :function(up){									
					$('#myModal2').modal('hide');
					$('#alert').show();
					$('#alert').html(up);
					window.location.reload();
				}			
		});
	   }
	  return valid; 
});

 function getEditId(){
		
		$.ajax({
				url  	 : "edittimesheet.php",
				type 	 : "POST",
				datatype : "JSON",
				data	 : {
							editvalue : 1,
							valueId	  : eID
				},
				success	 :function(show){
					$('#hId').val(show.ID);
					$('#txtdateid1').val(show.TS_DATE);
					$('#txtstarttimeid1').val(show.START_TIME);
					$('#txtendtimeid1').val(show.End_TIME);
					$('#hour1').val(show.TS_MINTUES);
					$('#txtIdTmsProjectId1').val(show.PROJECT_ID);
					$('#wktid1').val(show.WORKTYPE_ID);
					$('#txtIdSta1').val(show.STATUS_ID);
					$('#txtremarkid1').val(show.REMARKS);
					$('#txtachievementsid1').val(show.ACHIEVEMENT);
					$('#fileid1').val(show.DOC_ATTACHMENT);
									
					
				}			
		});
    }
	function getDeleteId(){
		if (eID){
			
			var confirm = window.confirm("Do you want to delete");			
			if(confirm){
		
		$.ajax({
				url  	 : "deletetimesheet.php",
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

	