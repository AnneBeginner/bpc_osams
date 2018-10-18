<html>
<head>
<title> Admin Page </title>
<link rel="stylesheet" href="css/w3.css">
</head>


<body style="background: #d2fdff">

	<a style="display:inline-block; text-decoration:none; margin-top:2%; margin-left:2%" class="w3-btn w3-round w3-green" href="admin.php"> Back </a>

		<h3 class="w3-text-green"><b> &nbsp; Scholarhip Archives </b> </h3>
		<hr>
		<div class="w3-container w3-padding-24">
<?php 

$con = require('config.php') or die("Can't connect to database");

$cmd = mysqli_query($con, "select * from osams_scholars");

			echo "<style>";
			echo "table, tr, td, th {border: 1px solid black;}";
			echo "</style>";
			echo "<table style='width:100%'>";
			
			echo "<tr>";
			echo "<th> No. </th>";
			echo "<th> Name </th>";
			echo "<th> Address </th>";
			echo "<th> Contact Number </th>";
			echo "<th> Birthday </th>";
			echo "<th> Gender </th>";
			echo "<th> Civil Status </th>";
			echo "<th> ID Number </th>";
			echo "<th> Course </th>";
			echo "<th> Year </th>";
			echo "<th> Section </th>";
			echo "<th> Sem </th>";
			echo "<th> School Yr </th>";

			echo "</tr>";
			
	while($row = mysqli_fetch_array ($cmd))
		{

			echo "<tr>";
			echo "<td>";
			echo $row[0];
			echo "</td>";
		
			echo "<td>";
			echo $row[2],$row[3],$row[4];
			echo "</td>";
			
			
			echo "<td>";
			echo $row[5];
			echo "</td>";
			
			echo "<td>";
			echo $row[6];
			echo "</td>";
			
			echo "<td>";
			echo $row[7];
			echo "</td>";

			echo "<td>";
			echo $row[8];
			echo "</td>";

			echo "<td>";
			echo $row[9];
			echo "</td>";

			echo "<td>";
			echo $row[10];
			echo "</td>";

			echo "<td>";
			echo $row[11];
			echo "</td>";

			echo "<td>";
			echo $row[12];
			echo "</td>";

			echo "<td>";
			echo $row[13];
			echo "</td>";

			echo "<td>";
			echo $row[14];
			echo "</td>";

			echo '<td><a href="del.php?action=delete&id='.$row[0].'"> Restore </a></td>';
			
			echo "</tr>";
		}
		
		
		echo "</table>";

?>			
		</div>

</body>
</html>