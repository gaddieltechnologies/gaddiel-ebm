<?php include('../include/header.php'); ?>
<style type="text/css">
.apprej{
  background: #3498db;
  background-image: -webkit-linear-gradient(top, #3498db, #2980b9);
  background-image: -moz-linear-gradient(top, #3498db, #2980b9);
  background-image: -ms-linear-gradient(top, #3498db, #2980b9);
  background-image: -o-linear-gradient(top, #3498db, #2980b9);
  background-image: linear-gradient(to bottom, #3498db, #2980b9);
  -webkit-border-radius: 28;
  -moz-border-radius: 28;
  border-radius: 28px;
  font-family: Arial;
  color: #ffffff;
  font-size: 12px;
  padding: 10px 20px 10px 20px;
  text-decoration: none;
}
.btn:hover {
  background: #3cb0fd;
  background-image: -webkit-linear-gradient(top, #3cb0fd, #3498db);
  background-image: -moz-linear-gradient(top, #3cb0fd, #3498db);
  background-image: -ms-linear-gradient(top, #3cb0fd, #3498db);
  background-image: -o-linear-gradient(top, #3cb0fd, #3498db);
  background-image: linear-gradient(to bottom, #3cb0fd, #3498db);
  text-decoration: none;
}
</style>
<div class="subnavbar">
<div class="subnavbar-inner">	
		<div class="container">
			<ul class="mainnav  pull-right">
			                         
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
            <div class="widget-header"> <i class="icon-bookmark"></i>
              <h3>Insert Time</h3>
            </div>
            <!-- /widget-header -->
            <div class="widget-content">
            <form action="" method="post">	
				<div class="row">
					<div class="span3">
						<input type="text" autofocus class="span2" placeholder=" Search by FirstName"  id="txtFirstNameSearchId" name="txtFirstNameSearchName"/>
					</div>
				<div class="span3">
					<input type="text"  class="span2" placeholder=" Search by Email Id"  id="txtEmailSearchId" name="txtEmailSearchName"/>
				</div>
				<div class="span3">
					<select  class="span2" id="txtStatusSearchId"   name="txtStatusSearchName">
						<option value="">Search by status</option>
						<option value="0" name ="new">New</option>
						<option value="1" name ="approve">Approved</option>
						<option value="2" name ="reject">Reject</option>
					</select>
				</div>
                          <div class="pull-right">
			<input type="submit" class="btn btn-success"  onClick="searchvalue()" value="Search">
			<input type="reset" class="btn"   value="clear">
					</div>  
			</div>
				
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
                <tr>
				   <th style="display:none;">ID</th>
					<th data-toggle="true">First Name</th>					
					<th data-toggle="true">Lastname</th>
					<th data-hide="phone,tablet">Email Id</th>
					<th data-toggle="true">Status</th>
					<th data-toggle="true">Approve Icon</th>
					</tr>
                </thead>
                <tbody>
                 <?php 
				include "../database.php";
				$pdo = Database::connect();
				$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
				$result = $pdo->prepare("SELECT ID,FIRSTNAME,LASTNAME,EMAIL,ACTIVE_FLAG FROM ebm_reg ORDER BY ID DESC");
				$result->execute();
				Database::disconnect();
				if ( !empty($_POST)) {	
									
					$EMAIL = $_POST['txtEmailSearchName'];									
					$FIRSTNAME = $_POST['txtFirstNameSearchName'];									
					$ACTIVE_FLAG = $_POST['txtStatusSearchName'];									
					$pdo = Database::connect();
					$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
					$sql="SELECT  ID,FIRSTNAME,LASTNAME,EMAIL,ACTIVE_FLAG FROM ebm_reg WHERE  FIRSTNAME LIKE :txtFirstNameSearchName AND EMAIL LIKE :txtEmailSearchName  AND ACTIVE_FLAG LIKE :txtStatusSearchName;";
					$result=$pdo->prepare($sql);
														
					$result->bindValue(':txtFirstNameSearchName',$FIRSTNAME.'%');
					$result->bindValue(':txtEmailSearchName',$EMAIL.'%');
					$result->bindValue(':txtStatusSearchName',$ACTIVE_FLAG.'%');
					$result->execute();
					}
					for($i=0; $row = $result->fetch(); $i++){																	
					Database::disconnect();
					$status=$row['ACTIVE_FLAG'];
					if($status==1){
						$stats="Approve";
					} elseif($status==2){
						$stats="Reject";
					} else{
						$stats="New";
					}
				  ?>
				<tr Style="cursor:pointer;" id="views">
				<td style="text-transform:uppercase;"><?php echo  $row['FIRSTNAME'];?></td>
				<td style="text-transform:uppercase;"><?php echo  $row['LASTNAME'];?></td>
				<td><?php echo  $row['EMAIL'];?></td>
				<td style="text-transform:uppercase;"><?php echo  $stats ?></td>
				<?php if($status ==0){ ?>
				<td class="actions" id="approveID">
					
					<a href="approve.php?id=<?php echo $row['ID']; ?>">  <img src="approve.png"></a>
					<?php } ?>
				</td>	
				<?php if($status ==1){ ?>
				<td class="actions" id="rejectID">
					
					<a href="reject.php?id=<?php echo $row['ID']; ?>"> <img src="reject.png"></a>
					<?php } ?>
				</td>
			<?php if($status ==2){ ?>
				<td class="actions" id="closeID">
					
					<a href="approve.php?id=<?php echo $row['ID']; ?>">  <img src="approve.png"></a>
					<?php } ?>
				</td>
			</tr>	
 <?php  }?>					
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
