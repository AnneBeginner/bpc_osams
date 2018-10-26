<?php 

		$con = mysqli_connect("db758871533.hosting-data.io", "dbo758871533", "_BpcOsams2018", "db758871533") or die("Can't connect to database");


	$id = $_REQUEST['id'];
	
	$del = "DELETE FROM `osams_scholars` WHERE `sch_no` = $id";
	
	$result = mysqli_query($con, $del);
	
	header('location:http://bpc-osams.com/decline.php'); 
?>