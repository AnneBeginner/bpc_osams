<html>
<head>
<title> Admin Page </title>
<link rel="stylesheet" href="css/w3.css">
<link rel="stylesheet" type="text/css" href="css/fontawesome-free/css/all.min.css">
<style> 
	a {
		text-decoration:none;
	}
</style>
</head>


<body style="background-image:url(img/bg.png); background-size:100% 100%; font-family:arial narrow;">

		<div class="">			
	  		<a href="osams_admin.php" class="w3-bar-item w3-button w3-hover-white w3-text-teal w3-hover-text-gray">
			<h2 class="w3-label w3-margin w3-text-teal"><i class="w3-xlarge fa fa-arrow-left"></i> &nbsp;<i class="w3-text-teal fa fa-list-ul w3-xlarge"></i> Financial Statement </h2></a>
		</div>
		<div class="w3-container w3-padding w3-margin w3-card">
	  			<table class="w3-table" style="width:50%; margin-left:50%;">
			  		<tr>
						<td><i class="w3-large w3-padding fa fa-search w3-text-teal" style="float:right"></i></td>
						<td><input type="text" class="w3-input w3-white w3-text-black	 w3-checkbox w3-padding" style="font-size:14px;" name="search" placeholder="Search name, course, year level" required> </td>
					</tr>	
				</table>		
		<h6 class="w3-text-teal"><b> Filter by: </b></h6>
		<div class="w3-bar w3-transparent w3-text-teal">
		<form action="osams_tf.php" method="post">
		<a class="w3-bar-item w3-hover-white" name="bsis" href="#"> BSIS</a>
		<a class="w3-bar-item w3-hover-white" name="bsom" href="#"> BSOM</a>
		<a class="w3-bar-item w3-hover-white" name="bsais" href="#"> BSAIS</a>
		<a class="w3-bar-item w3-hover-white" name="btvted" href="#"> BTVTED</a>
		<a class="w3-bar-item w3-hover-white" name="act" href="#"> ACT</a>
		<a class="w3-bar-item w3-hover-white" name="hrs" href="#"> HRS</a>
		<a class="w3-bar-item w3-hover-white" name="ccs" href="#"> CCS</a>
		<a class="w3-bar-item w3-hover-white" name="eim" href="#"> EIM</a>
		<a class="w3-bar-item w3-hover-white" name="comsec" href="#"> COMSEC</a>
	</div>

		</div>
	<div class="w3-container w3-right w3-text-teal"><h6><strong> Total Count: 
	<?php
		$con = mysqli_connect("db758871533.hosting-data.io", "dbo758871533", "_BpcOsams2018", "db758871533") or die("Can't connect to database");

		echo"<span style='color:grey'>";
		$sql = "SELECT count(sch_no) AS total FROM osams_scholars where sch_verified = 'yes'";
		$result = mysqli_query($con, $sql);
		$values = mysqli_fetch_assoc($result);
		$num_rows = $values['total'];
		echo "$num_rows"; 
		echo "</span></strong></h6>";
	?>
	</div> 

<?php 

$con = mysqli_connect("localhost", "root", "", "bpc_osams") or die("Can't connect to database");
$cmd = mysqli_query($con, "select * from osams_scholars where sch_verified = 'yes'");
		
		echo "<center>";
		echo "<div class='w3-container' style='width:90%'>";
		echo "<div class='w3-container'>";
		echo "<table class='w3-table w3-card' style='width:100%'>";
		echo "<tr class='w3-text-white' style='background: #006064'>";
			echo "<th> No. </th>";
			echo "<th> Name </th>";
			echo "<th> Course </th>";
			echo "<th> Year Level </th>";
			echo "<th> Tuition Fee </th>";
			echo "</tr>";
		echo "</tr>";	
		echo "</div>";
		echo "</center>";			
			
	while($row = mysqli_fetch_array ($cmd))
		{

			echo "<tr>";
			echo "<td>";
			echo $row[0];
			echo "</td>";
		
			echo "<td>";
			echo $row[2].' '.$row[3].' '.$row[4];
			echo "</td>";
			
			echo "<td>";
			echo $row[21];
			echo "</td>";
			
			echo "<td>";
			echo $row[22];
			echo "</td>";
			
			echo "<td>";
			echo "3,857.60";
			echo "</td>";

			
			echo "</tr>";
		}
		
		
		echo "</table>";

?>			
	</form>
		</div>
		<br>
</body>
</html>