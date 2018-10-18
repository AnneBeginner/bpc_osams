<html>
<head>
<title> Admin Page </title>
<link rel="stylesheet" href="css/w3.css">
<style>
table {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 100%;
}
x

tr, td {
    background-color: white;
    color:brown;
}
</style>
</head>

<body style="">
		<br>
		<div class="w3-brown w3-padding w3-card">
			<h3 class="w3-text-white " style=""> &nbsp; Scholars Record List  </h3>
		</div>

		<?php
		
		$con = mysqli_connect("localhost", "root", "", "bpc_osams") or die("Can't connect to database");

		$cmd = mysqli_query($con, "select * from osams_scholars");

					echo "<table class='w3-table w3-padding' style='width:100%'>";

					echo "<tr class='w3-text-white' style='background:#006064'>";
					echo "<th> NO </th>";
					echo "<th> ID No. </th>";
					echo "<th> First Name </th>";
					echo "<th> Middle Name </th>";
					echo "<th> Last Name </th>";
	
					echo "<th> View </th>";
					echo "<th> Archive </th>";
					echo "</tr>";				

			while($row = mysqli_fetch_array ($cmd))
				{
					echo "<tr>";
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
					echo "<td><a href='#' style='text-decoration:none' class='w3-button w3-teal w3-text-white'> View </a></td>";
					echo "<td><a href='delete.php?action=delete&id='.$row[1].'' style='text-decoration:none' class='w3-button w3-teal w3-text-white'> Archive </a></td>";
					
				}
				
				echo "</table>";
		?>



</body>
</html>