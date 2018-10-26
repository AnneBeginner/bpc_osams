
<?php

		$con = mysqli_connect("db758871533.hosting-data.io", "dbo758871533", "_BpcOsams2018", "db758871533") or die("Can't connect to database");


	$id = $_REQUEST['id'];
	$y = "yes";

	mysqli_query($con, "UPDATE osams_scholars SET sch_verified='$y' WHERE `sch_no` = $id");

//	$result = mysqli_query($con, $query);

 	header('location:http://bpc-osams.com/osams_archives.php'); 

?>