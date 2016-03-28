<?php include('../include/header.php'); ?>
<?php require "../database.php";?>
<div class="subnavbar">
<!-- /For Space-->
</div>
<!-- /subnavbar -->
<div class="main">
  <div class="main-inner">
    <div class="container">
      <div class="row">
        <div class="span6">
          <div class="widget">
            <div class="widget-header"> <i class="icon-bookmark"></i>
              <h3>Important Shortcuts</h3>
				
			</div>
            <!-- /widget-header -->
            <div class="widget-content">
              <div class="shortcuts"> 
				<a href="../timeSheet/timesheet.php" class="shortcut">
					<i class="shortcut-icon icon-list-alt"></i>
						<span class="shortcut-label">Time Sheet</span> </a>
				<a href="javascript:;" class="shortcut">
					<i class="shortcut-icon icon-bookmark"></i>
						<span class="shortcut-label">Attends</span> </a>
				<a href="javascript:;" class="shortcut">
					<i class="shortcut-icon icon-signal"></i> 
						<span class="shortcut-label">Reports</span> </a>
				<a href="../target/target.php" class="shortcut"> 
					<i class="shortcut-icon icon-comment"></i>
						<span class="shortcut-label">Targets</span> </a>
				<?php if($srole == "ADMIN") { ?>
				<a  href="master.php" class="shortcut " >
							<i class="shortcut-icon icon-list-alt" ></i>
								<span id ="divShowId" class="shortcut-label">MASTER</span> </a>
						
					
				<a href="../user/userpermissions.php" class="shortcut">
					<i class="shortcut-icon icon-file"></i>
						<span class="shortcut-label">User</span> </a>
<?php } ?>		
				<a href="javascript:;" class="shortcut">
					<i class="shortcut-icon icon-picture"></i> 
						<span class="shortcut-label">File Management</span> </a>
				<a href="javascript:;" class="shortcut">
					<i class="shortcut-icon icon-tag"></i>
						<span class="shortcut-label">First Mile CRM</span> </a> 
			  </div>
              <!-- /shortcuts --> 

            </div>
            <!-- /widget-content --> 
          </div>
		 </div>
        <!-- /span6 --> 
         <div class="span6">
          <div class="widget widget-nopad">
            <div class="widget-header"> <i class="icon-list-alt"></i>
              <h3> Recent Targets</h3>
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
                    <th>TARGET DATE</th>                
                    <th>STATUS</th>				
                  </tr>
                </thead>
                <tbody>
                  
					<?php
/* Function to get the client IP address of environment variables 
function get_client_ip() {
    $ipaddress = '';
    if (getenv('HTTP_CLIENT_IP'))
        $ipaddress = getenv('HTTP_CLIENT_IP');
    else if(getenv('HTTP_X_FORWARDED_FOR'))
        $ipaddress = getenv('HTTP_X_FORWARDED_FOR');
    else if(getenv('HTTP_X_FORWARDED'))
        $ipaddress = getenv('HTTP_X_FORWARDED');
    else if(getenv('HTTP_FORWARDED_FOR'))
        $ipaddress = getenv('HTTP_FORWARDED_FOR');
    else if(getenv('HTTP_FORWARDED'))
       $ipaddress = getenv('HTTP_FORWARDED');
    else if(getenv('REMOTE_ADDR'))
        $ipaddress = getenv('REMOTE_ADDR');
    else
        $ipaddress = 'UNKNOWN';
    return $ipaddress;
}

$client_ip=get_client_ip();
echo "Your IP is ".$client_ip;*/

				$pdo = Database::connect();
								
				$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
				$result = $pdo->prepare("SELECT wt.WT_ID WT_ID,cli.CLIENT_NAME CLIENT_NAME,prj.PROJECT_NAME PROJECT_NAME,wkt.WORK_TYPE WORK_TYPE,com.COMP_NAME COMP_NAME,reg.EMAIL EMAIL,reg.FIRSTNAME FIRSTNAME,wt.TARGET_DATE TARGET_DATE,sta.STATUS STATUS,wt.COMPLETION_DATE COMPLETION_DATE,wt.WORK_DESCRIPTION WORK_DESCRIPTION,wt.REMARKS REMARKS FROM ebm_client cli,ebm_project prj,ebm_work_type wkt,ebm_reg reg,ebm_week_target wt,ebm_wt_component com,ebm_status sta WHERE wt.USER_ID='$sid' AND sta.ID=wt.WT_STATUS AND prj.ID=wt.PROJECT_ID AND reg.ID=wt.USER_ID AND com.COMP_ID=wt.COMPONENT_ID AND wkt.ID=wt.WORKTYPE_ID AND cli.ID=prj.CLIENT_ID ORDER BY WT_ID DESC");
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
					<td><?php  echo $row['TARGET_DATE'];?> </td>
					<td><?php  echo $row['STATUS'];?></td> 
			
					<?php } ?>
					</tr>				
        		</tbody>
              </table>
			  
            </div>
			
            <!-- /widget-content --> 
          </div>
          <!-- /widget -->
        </div>
        <!-- /span6 --> 
      </div>
      <!-- /row --> 
    </div>
    <!-- /container --> 
  </div>
  <!-- /main-inner --> 
</div>
<!-- /main -->
 <?php include('../include/footer.php'); ?>
