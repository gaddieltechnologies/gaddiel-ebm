<?php include('include/header.php'); ?>
 
<div class="subnavbar">
<div class="subnavbar-inner">	
		<div class="container">
			<ul class="mainnav  pull-right">
				<li>					
					<a href="#">
						<i class="icon-search"></i>
						<span>Search</span>
					</a>  									
				</li>				
                <li>
					<a href="#">
						<i class="icon-list-alt"></i>
						<span>Reports</span>
					</a>    				
				</li>                               
				<li>
					<a href="../dash/dashBoard.php">
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
            <div class="widget-header"> <i class="icon-bookmark"></i>
              <h3>User Details</h3>
            </div>
            <!-- /widget-header -->
            <div class="widget-content">
            <form>	
			<div class="row">
					<div class="span2">
					<label>User Name</label>
					<input type="text" name="NameUsername" id="txtIdUserName" value="" placeholder="User Name"  class="login" onblur="user()">
			</div>	
				
			</div>
			
				<div class="form-actions">
					<span id="errorUserNameId" ></span> 	
					<div class="pull-right">
						
						<input class="btn btn-success" type="submit" name ="User_submit" onclick="return User_validation()" value="Save"/>
						<input type="reset" class="btn" value="Clear"/>
						
					</div>
				</div> <!-- /form-actions -->

			</form>
              <!-- /form --> 
            </div>
            <!-- /widget-content --> 
          </div>
			<!-- /widget--> 
	   </div>
	     <!-- /span12 --> 
        <div class="span12">
          <div class="widget widget-table action-table">
            <div class="widget-header"> <i class="icon-th-list"></i>
              <h3>Time Sheet</h3>
            </div>
            <!-- /widget-header -->
            <div class="widget-content">
              <table class="table table-striped table-bordered">
                <thead>
                  <tr>
                    <th>Start Time </th>
                    <th>End Time</th>
                    <th>Minutes</th>
                    <th>Projects</th>
                    <th>Work Type</th>
                    <th>Status</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td>10:00</td>
                    <td>11:00</td>
                    <td>60</td>
                    <td>Gaddiel > eBM</td>
                    <td>UI Design</td>
                    <td>Development</td>
                  </tr>
				   <tr>
                    <td>10:00</td>
                    <td>11:00</td>
                    <td>60</td>
                    <td>Gaddiel > eBM</td>
                    <td>UI Design</td>
                    <td>Development</td>
                  </tr>
				   <tr>
                    <td>10:00</td>
                    <td>11:00</td>
                    <td>60</td>
                    <td>Gaddiel > eBM</td>
                    <td>UI Design</td>
                    <td>Development</td>
                  </tr>
				   <tr>
                    <td>10:00</td>
                    <td>11:00</td>
                    <td>60</td>
                    <td>Gaddiel > eBM</td>
                    <td>UI Design</td>
                    <td>Development</td>
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
<script src="resources/js/client.js"></script>
 <?php include('include/footer.php'); ?>

<?php
								require "database.php";
								if(isset($_POST['User_submit']))
								{
									$username =$_POST['NameUsername'];
									$pdo = Database::connect();
									$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
									$sql = "INSERT INTO ebm_user(USER_NAME) values(?)";
									$q = $pdo->prepare($sql);
									$q->execute(array($projectname));
									Database::disconnect();
									echo $username."<br>";
								}
?> 

