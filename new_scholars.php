<html>
<head>
<title> Admin Page </title>
<link rel="stylesheet" href="css/w3.css">
<!--<link rel="stylesheet" href="css/font-awesome.css"> --->
<!--<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"> --->
<link rel="stylesheet" type="text/css" href="css/fontawesome-free/css/all.min.css">
<style>
table {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 100%;
}

tr:nth-child(even) {
    background-color: #a7ffeb;

}
</style>
</head>

<body style="background-image:url(img/bg.png); background-size:100% 100%">

		<div class="w3-padding">
			<h4 class="w3-text-brown" style="font-family:tahoma;"><b> Scholarship Confirmation  </b></h4>
		</div>

		<div class="w3-bar" style="background: #006064">
  			
  			<a href="admin.php" class="w3-bar-item w3-button w3-hover-teal w3-text-white w3-hover-text-white">
  				<i class="w3-xlarge fa fa-arrow-left"> </i></a>
  			<a href="#" class="w3-bar-item w3-button w3-text-white w3-hover-teal w3-hover-text-white w3-right">
  				<i class="w3-xlarge fa fa-filter"></i>
  			</a>
  			<a href="#" class="w3-bar-item w3-button w3-text-white w3-hover-teal w3-hover-text-white w3-right">
  				<i class="w3-xlarge fa fa-search"></i>
  			</a>

		</div>
		<br>
		<?php
		
		$con = mysqli_connect("localhost", "root", "", "bpc_osams") or die("Can't connect to database");

		$cmd = mysqli_query($con, "select * from osams_scholars");
					
					echo "<div class='w3-container w3-round'>";
					echo "<table class='w3-table' style='width:100%'>";
					echo "<tr class='w3-text-white' style='background: #006064'>";
					echo "<th> No </th>";
					echo "<th> ID no </th>";
					echo "<th> Name </th>";
					echo "<th> Date Applied </th>";
					echo "<th>  </th>";
					echo "<th> Confirm  </th>";
					echo "<th> Delete </th>";
					echo "</tr>";	
					echo "</div>";			

			while($row = mysqli_fetch_array ($cmd))
				{
					echo "<tr class='w3-hover-dark-gray'>";
					echo "<td>";
					echo $row[0];
					echo "</td>";
					echo "<td>";
					echo $row[1];
					echo "</td>";
					echo "<td>";
					echo $row[2];
					echo "</td>";
					echo "<td>";
					echo $row[3];
					echo "</td>";
					echo "<td>";
					echo $row[4];
					echo "</td>";
					echo "<td><a href='#' style='text-decoration:none' class='w3-button w3-teal'> Confirm </a></td>";			
					echo "<td><a href='# style='text-decoration:none' class='w3-button w3-red'> Delete </a></td>";			
					echo "</tr>";
				}
				
				echo "</table>";
		?>



</body>
</html>