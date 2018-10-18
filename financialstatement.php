<html>
<head>
<title> Admin Page </title>
<link rel="stylesheet" href="css/w3.css">
</head>


<body style="background: #d2fdff">

	<a style="display:inline-block; text-decoration:none; margin-top:2%; margin-left:2%" class="w3-btn w3-round w3-green" href="admin.php"> Back </a>

		<h1 class="w3-text-green"> &nbsp; Financial Statement </h1>
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
			echo "<th> NAME </th>";
			echo "<th> COURSE </th>";
			echo "<th> YEAR </th>";
			echo "<th> TF ASSESSMENT </th>";
			echo "<th>  </th>";
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
			
			

			echo '<td><a href="delete.php?action=delete&id='.$row[0].'"> Delete </a></td>';
			
			echo "</tr>";
		}
		
		
		echo "</table>";

?>			
		</div>

</body>
</html>