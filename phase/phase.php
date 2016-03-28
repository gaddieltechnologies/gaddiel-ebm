<?php include('../include/header.php'); ?>
<?php require "../database.php"; ?>

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
						<h3 id="myModalLabel">Add Phase</h3>
					  </div>
					  <div class="modal-body">	
                              	<div class="span5" >
			<!--<form method="post">-->
						<div class="row">
							<div class="span2">
								 <label>Name<font color="#FF0000"> *</font></label>
								 <input class="span2" type="text" name="NameWorkType" id="txtunameid" value="" placeholder="Name" onblur="Unamefunction()"  maxlength="60" >  
								 <span style="color:red;" id="spanFirstNameId" ></span>
							</div>
							<div class="span2">
								 <label>Description </label>
								 <textarea class="span2" name="NameWorkTypeDescription" id="txtIdDescription" placeholder="Description" ></textarea>  
							</div>
						</div>			
						</div>
					  </div>
					  <div class="modal-footer">
						<button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
						<button type="submit" id="btnIdAdd"  class="btn btn-success">Save</button>
					  </div>
				</form>
					</div>
				<li>
					<a href="#myModal2" data-toggle="modal" id="editIconID" onClick="getEditId(eID);">
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
						<h3 id="myModalLabel">Edit Phase</h3>
					  </div>
					  <div class="modal-body">		
							    	<div class="span5" >
								<!--<form method="post">-->
						<div class="row">
							<div class="span2">
							     <input type="hidden" id="hId" name="hidden"/>
								 <label>Name<font color="#FF0000"> *</font></label>
								 <input class="span2" type="text" name="Name"  id="txtunameid1" value="" placeholder="Name"  onblur="EUnamefunction()"  maxlength="60" >  
								  <span style="color:red;" id="NameId1" ></span>
							</div>
							<div class="span2">
								 <label>Description </label>
								 <textarea class="span2" name="Description" id="txtIdDescription1" placeholder="Description" ></textarea>  
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
            
	 <div id="alert" class="alert alert-success"></div>
            <!-- /widget-content --> 
          </div>
			<!-- /widget--> 
	   </div>
	     <!-- /span12 --> 
        <div class="span12">
          <div class="widget widget-table action-table">
            <div class="widget-header"> <i class="icon-th-list"></i>
              <h3>PHASE</h3>
			   
            </div>
            <!-- /widget-header -->
            <div class="widget-content">
              <table class="table table-bordered mytable1">
                <thead>
                  <tr>
                    <th style="display:none;">ID</th>
                    <th>NAME</th>
                    <th>DESCRIPTION</th>
                  </tr>
                </thead>
                <tbody>
                   <?php
					
					$pdo = Database::connect();
					$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
					$result = $pdo->prepare("SELECT * FROM ebm_work_type ORDER BY ID DESC");
					$result->execute();
					for($i=0; $row = $result->fetch(); $i++){	
					Database::disconnect();	
						?>
					<tr>
					<td style="display:none;"><?php  echo $row['ID'];?> </td>
					<td><?php  echo $row['WORK_TYPE'];?> </td>
					<td><?php  echo $row['DESCRIPTION'];?></td>  
					<?php } ?>
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
<script src="../resources/js/phaseval.js"></script>

 <?php include('../include/footer.php'); ?>
 
 

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
	
		var Name = $('#txtunameid').val();
		var Description = $('#txtIdDescription').val();	
		if(Name ==""){
			//var valid=true;
		if(Name ==""){
			document.getElementById("spanFirstNameId").innerHTML  ="Enter the Phase Name";
			document.getElementById("txtunameid").style.borderColor="#FF0000";
            return false;		
					}
			else
				{
			      document.getElementById("spanFirstNameId").innerHTML="";
			      document.getElementById("txtunameid").style.borderColor="";
				}
				//return valid;
		}
		else{			
		$.ajax({
				url  	 : "addphase.php",
				type 	 : "POST",
				async	 : false,
				data	 : {
							addValue 	: 1,							
							adName	        : Name,
							adDescription	: Description
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
		var name = $('#txtunameid1').val();
		var description = $('#txtIdDescription1').val();
		if(name ==""){
        if(name ==""){
			document.getElementById("NameId1").innerHTML  ="Enter the Phase Name";
			document.getElementById("txtunameid1").style.borderColor="#FF0000";
			return	false;
		}else
				{
			      document.getElementById("NameId1").innerHTML="";
			      document.getElementById("txtunameid1").style.borderColor="";
				}
				//return valid;
		}
		else{			
		$.ajax({
				url  	 : "updatephase.php",
				type 	 : "POST",
				async	 : false,
				data	 : {
							updateValue 	: 1,
							upIdVar			: idVar,
							upname	        : name,
							updescription	: description
				},
				success	 :function(up){									
					$('#myModal2').modal('hide');
					$('#alert').show();
					$('#alert').html(up);
					window.location.reload();
				}			
		});
	}
});

 function getEditId(){
		
		$.ajax({
				url  	 : "editphase.php",
				type 	 : "POST",
				datatype : "JSON",
				data	 : {
							editvalue : 1,
							valueId	  : eID
				},
				success	 :function(show){
					$('#hId').val(show.ID);
					$('#txtunameid1').val(show.WORK_TYPE);
					$('#txtIdDescription1').val(show.DESCRIPTION);					
					
				}			
		});
    }
	function getDeleteId(){
		if (eID){
			var confirm = window.confirm("Do you want to delete");
			if(confirm){
		
		$.ajax({
				url  	 : "deletephase.php",
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