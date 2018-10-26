<html>
 <head>
 	 <title> Fetch Muni</title>
 	 <script src="jquery.js"></script>
 	</head>
 	<body>

	</body>
 	</html>

 	<?php
		$con = mysqli_connect("db758871533.hosting-data.io", "dbo758871533", "_BpcOsams2018", "db758871533") or die("Can't connect to database");
		$out ='';
		$sql = "SELECT * FROM osams_muni where prov_id = ".$_POST["provId"]." ORDER by muni_name";
		$result = mysqli_query($con, $sql);
		$out = '<option> Select Municipality </option>';
		while($row = mysqli_fetch_array($result))
		{
			$out .= '<option value="'.$row['muni_id'].'">'.$row['muni_name'].'</option>';
		} 
		echo $out;
?>
