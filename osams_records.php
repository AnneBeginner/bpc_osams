<html>
<head>
<title> Admin Page </title>
<link rel="stylesheet" href="css/w3.css">
<link rel="stylesheet" type="text/css" href="css/fontawesome-free/css/all.min.css">
<style>
table {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 100%;
}



</style>
</head>

<body style="background-image:url(img/bg.png); background-size:100% 100%">

	  		<a href="osams_admin.php" class="w3-bar-item w3-button w3-hover-white w3-text-teal w3-hover-text-gray">
			<h2 class="w3-label w3-margin w3-text-teal"><i class="w3-xxlarge fa fa-arrow-left"></i> &nbsp;<i class="w3-text-teal fa fa-users w3-xxlarge"></i> Scholars Record List </h2></a>
		</div>
		<div class="w3-container">
			<div class="w3-bar w3-card w3-padding" style="width:95%; margin-left:2.5%">
	  			<table class="w3-table" style="width:50%; margin-left:50%;">
			  		<tr>
				  		<td><i class="w3-xlarge w3-text-teal fa fa-filter w3-padding" style="float:right"></i></td>
				  		<td><select class="w3-input w3-text-dark-grey w3-checkbox w3-padding" style="font-size:15px" name="filter" required> 
						<option> Filter by </option> 					
						<option> Course </option> 
						<option> Date </option>
						</select></td>
					</tr>
			  		<tr>
						<td><i class="w3-large w3-padding fa fa-search w3-text-teal" style="float:right"></i></td>
						<td><input type="text" class="w3-input w3-white w3-text-black	 w3-checkbox w3-padding" style="font-size:14px;" name="search" placeholder="Search name, course, year level" required> </td>
					</tr>	

				</table>
			</div>
		</div>
<br>
		<?php
		
		$con = mysqli_connect("db758871533.hosting-data.io", "dbo758871533", "_BpcOsams2018", "db758871533") or die("Can't connect to database");

		$cmd = mysqli_query($con, "select * from osams_scholars where sch_verified = 'yes'");
					echo "<center>";
					echo "<div class='w3-container' style='width:90%'>";
					echo "<div class='w3-container'>";
					echo "<table class='w3-table w3-card' style='width:100%'>";
					echo "<tr class='w3-text-white' style='background: #006064'>";
					echo "<th> No </th>";
					echo "<th> ID no </th>";
					echo "<th> Name </th>";
					echo "<th> </th>";
					echo "<th> View </th>";
					echo "<th> Edit </th>";
					echo "<th> Archive </th>";
					echo "</tr>";	
					echo "</div>";
					echo "</center>";			

			while($row = mysqli_fetch_array ($cmd))
				{
					echo "<tr class='w3-hover-white w3-text-dark-grey'>";
					echo "<td>";
					echo $row[0];
					echo "</td>";
					echo "<td>";
					echo $row[1];
					echo "</td>";
					echo "<td>";					
					echo $row[2].' '.$row[3].' '.$row[4];
					echo "</td>";
					echo "<td>";
					echo "</td>";
					echo "<td><a name='view' class='w3-button w3-text-teal' href='scholar.php?id='.$row[0].'><i class='w3-xlarge fa fa-eye'></i> </a></td>";						
					echo "<td><a name='edit' class='w3-button w3-text-gray'><i class='w3-xlarge fa fa-user-edit' href='#?action=edit&id='.$row[0].''></i> </a></td>";
					echo '<td>';
					echo '<a class="w3-button w3-text-gray w3-hover-white" href = "archives.php?action=edit&id='.$row[0].'">'.'<i class="w3-xlarge w3-text-teal fa fa-user-times">'.'</a>';
					echo '</td>';					
					echo "</tr>";
				}
					
				echo "</table>";
		?>

</body>
</html>