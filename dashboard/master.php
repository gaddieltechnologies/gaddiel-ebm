<?php include('../include/header.php'); ?>
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
              <h3>Master</h3>
            </div>
            <!-- /widget-header -->
            
            <div class="widget-content">
              <div class="shortcuts"> 
				<a href="../client/client.php" class="shortcut" >
					<i class="shortcut-icon icon-list-alt"></i>
						<span class="shortcut-label">CLIENT</span> </a>
				<a href="../project/project1.php" class="shortcut" >
					<i class="shortcut-icon icon-bookmark"></i>
						<span class="shortcut-label">PROJECT</span> </a>
				<a href="../phase/phase.php" class="shortcut" >
					<i class="shortcut-icon icon-signal"></i> 
						
						<span class="shortcut-label" >PHASE</span> </a>
				<a href="../component/component.php" class="shortcut" > 
					<i class="shortcut-icon icon-envelope"></i>
						<span class="shortcut-label" >COMPONENT</span> </a>
				<!--<a href="../user/user.php" class="shortcut" > 
					<i class="shortcut-icon icon-user"></i>
						<span class="shortcut-label" >USER</span> </a>--> 
						
			  </div>
              <!-- /shortcuts 
            </div>
            <!-- /widget-content --> 
          </div>
		 </div>
        <!-- /span6 --> 
         
        <!-- /span6 --> 
      </div>
      <!-- /row --> 
    </div>
    <!-- /container --> 
  </div>
  <!-- /main-inner --> 
<?php include('../include/footer.php'); ?>