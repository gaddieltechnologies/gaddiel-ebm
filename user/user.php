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
				<!-- Modal -->
				
					<div id="myModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">	
					  <div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">x</button>
						<h3 id="myModalLabel">Add User</h3>
					  </div>
					  <div class="modal-body">	
                              	<div class="span5" >
								<form method="post" onsubmit="return submit1();">
							
						<div class="row">
							<div class="span2">
								 <label>User Name<font color="#FF0000"> *</font></label>
								 <input class="span2" type="text" name="SName" id="txtunameid" value="" placeholder="Name" onkeypress = "return AlphaOnly(event)" onblur="Unamefunction()" maxlength="60"/> 
								 <span style="color:red;" id="spanFirstNameId" ></span>
							</div>
						</div>	
											
						</div>
					  </div>
					  <div class="modal-footer">
						<button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
						<button type="submit" value="submit" class="btn btn-success" name="Save"  >Save</button>	
					  </div>
					  </form> 	
					</div>
					
				<li>
					<a href="#myModal2" data-toggle="modal">
						<i class="icon-edit"></i>
						<span>Edit</span>
					</a>    				
				</li> 
				<!-- Modal -->
					<div id="myModal2" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
					<form method="post">
					  <div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">x</button>
						<h3 id="myModalLabel">Edit User</h3>
					  </div>
					  <div class="modal-body">		
							    	<div class="span5" >
						<div class="row">
							<div class="span2">
								 <label>Name<font color="#FF0000"> *</font></label>
								 <input class="span2" type="text" name="UName" id="txtunameid1" value="" onblur="Unamefunction1()" onkeypress = "return AlphaOnly(event)" placeholder="Name"   maxlength="60" >  
								 <span style="color:red;" id="FirstNameId" ></span>
							</div>
						</div>			
						</div>									
					  </div>
					  <div class="modal-footer">
						<button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
						<button class="btn btn-success" name="update">Update</button>
					  </div>
					   </form>
					</div>
				<li>					
					<a href="#">
						<i class="icon-search"></i>
						<span>Search</span>
					</a>  									
				</li>				                             
				<li>
					<a href="../master.php">
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
            
	
            <!-- /widget-content --> 
          </div>
			<!-- /widget--> 
	   </div>
	     <!-- /span12 --> 
        <div class="span12">
          <div class="widget widget-table action-table">
            <div class="widget-header"> <i class="icon-th-list"></i>
              <h3>USER</h3>
				
			</form>
            </div>
            <!-- /widget-header -->
            <div class="widget-content">
              <table class="table table-striped table-bordered">
                <thead>
                  <tr>
                    <th>NAME</th>
                    
                  </tr>
                </thead>
                <tbody>
                  
					 
					
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
<script src="../resources/js/nameval.js"></script>
 <?php include('../include/footer.php'); ?>
 <?php include('../include/database.php'); ?>
 
	<?php
		 
		
		if(isset($_POST['Save']))
			
		{
			$firstname =$_POST['SName'];
			$pdo = Database::connect();
			$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
			$sql = "INSERT INTO wt_user(U_NAME) values(?)";
			$q = $pdo->prepare($sql);
			$q->execute(array($firstname ));
			Database::disconnect();
			 
		}
?> 
 


