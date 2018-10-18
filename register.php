<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>	The Registration Form </title>
	<link rel="stylesheet" href="css/w3.css">
	<link rel="stylesheet" type="text/css" href="css/fontawesome-free/css/all.min.css">
	<style>

		::-webkit-scrollbar {
		width: 8px;
		height: 30px;
		}
		::-webkit-scrollbar-thumb {
		background-color: #006064 !important;
		}
		background: black;
		-webkit-box-shadow: inset 1px 1px 2px rgba(155, 155, 155, 0.4);
		}
		::-webkit-scrollbar-track {
			background: red;
			-webkit-box-shadow: inset 1px 1px 2px #E0E0E0;
			border: 1px solid #D8D8D8;
			
		}
		::selection {
			background: black;
			color: #fff;
			text-shadow: none;
		}
		
		.w3-label {
			color: #616161;
			font-size: 14px;
			font-family:tahoma;
		}

		.w3-input {
			height:35px;
			color:gray;
			font-size:12px;
			font-family:arial;

		}
		p{
			color:gray;
			font-size: 14px;
			font-weight:bold;

		}
	</style>
</head>

<body>
	<div class="w3-container w3-card w3-padding" style="background: #006064">
		<a class="w3-btn w3-text-white w3-round w3-animate-left w3-left" href="index.php"><i class="fa fa-arrow-alt-circle-left w3-xxxlarge"></i></a>

	</div>
	<br>
	<form action="register.php" method="post" enctype="mulitipart/form-data">
	<div>
	<div class="w3-container w3-row w3-transparent w3-round w3-card-4 w3-margin" style="background-image:url(img/bg.png)">	

		<label class="w3-label"><h4><b><i class="w3-text-gray fa fa-user w3-xlarge"></i> PERSONAL INFORMATION </b></h4></label>
		<table width="100%" class="w3-table">
		<td>
			<label class="w3-label"> First Name </label>
			<input  class="w3-input w3-round" type="text" name="sch_fname" style="width:50%" required>
			<br>
			<label class="w3-label"> Middle Name </label>
			<input class="w3-input w3-round"  type="text" name="sch_mfname" style="width:50%" required>
			<br>
			<label class="w3-label"> Last Name </label>
			<input class="w3-input w3-round"  type="text" name="sch_lname" style="width:50%" required>
			<br>
			<label class="w3-label"> Extension Name (e.g. Jr., Sr., III, etc.) </label>
			<input class="w3-input w3-round"  type="text" name="sch_extname" style="width:30%">
			<br>
			<label class="w3-label"> Age </label>
			<input class="w3-input w3-round"  type="text" name="sch_age" style="width:30%">
			<br>
			<label class="w3-label"> Gender </label>
			<select class="w3-input w3-text-gray w3-checkbox"  style="width:30%" name="sch_gender" required>
				<option> Female </option> 
				<option> Male </option>
			</select>
			<br>
			
		</td>
		<td>
			<label class="w3-label"> Birthday </label>
			<input class="w3-input w3-round w3-text-gray"  type="date" name="sch_bday" style="width:50%">
			<br>
			<label class="w3-label"> Street/Block/Lot </label>
			<input class="w3-input w3-round"  type="text" name="sch_add_st" style="width:50%" required>
			<br>
			<label class="w3-label"> Barangay </label>
			<input class="w3-input w3-round" type="text" name="sch_add_brgy" style="width:50%" required>
			<br>
			<label class="w3-label"> Municipality/Town </label>
			<input class="w3-input w3-round" type="text" name="sch_add_mun" style="width:50%" required>
			<br>
			<label class="w3-label"> Province </label>
			<input class="w3-input w3-round" type="text" name="sch_add_prov" style="width:50%" required>
			<br>
			<label class="w3-label"> Zip Code </label>
			<input class="w3-input w3-round" type="text" name="sch_zip" style="width:50%"  required>
			<br>
			<label class="w3-label"> Phone Number </label>
			<input class="w3-input w3-round" type="text" name="sch_cp_no" style="width:50%"  required>
			<br>
		</td>
		<td>
			<br>
			<label class="w3-label"> Email Address </label>
			<input class="w3-input w3-round" type="text" name="sch_email" style="width:50%"  required>
			<br>
			<label class="w3-label"> Father's Name </label>
			<input class="w3-input w3-round" type="text" name="sch_father" style="width:50%"  required>
			<br>
			<label class="w3-label"> Occupation </label>
			<input class="w3-input w3-round" type="text" name="sch_f_occu" style="width:50%"  required>
			<br>
			<label class="w3-label"> Mother's Name </label>
			<input class="w3-input w3-round" type="text" name="sch_mother" style="width:50%"  required>
			<br>
			<label class="w3-label"> Occupation </label>
			<input class="w3-input w3-round" type="text" name="sch_m_occu" style="width:50%"  required>
			<br>
			<label class="w3-label"> Civil Status </label>
			<input class="w3-input w3-round" type="text" name="sch_civ_stat" style="width:50%"  required>
			<br>
		</td>
		</div>
		</div>	
	</div>
</table>
</div>
	<div class="w3-row w3-padding">
	<div class="w3-container w3-round w3-card-4 w3-col l4 m4 s4" style="background-image:url(img/bg.png); background-size: 100% 100%; margin-left:3%; margin-right:2%; margin-top:1%">	
		<br>
		<label class="w3-label"><h4><b><i class="w3-text-gray fa fa-graduation-cap w3-xlarge"></i> STUDENT INFORMATION </b></h4></label>
		<br>
		<label class="w3-label"> School ID Number </label>
		<input class="w3-input" typeg ="text" name="sch_id" style="width:50%" required>
		<br>
		<label class="w3-label"> Course </label>
		<select class="w3-input w3-text-gray w3-checkbox"  style="width:50%" name="sch_course" required>
			<option> BSIS </option> 
			<option> BSOM </option>
			<option> BSAIS  </option> 
			<option> BTVTED  </option>
			<option> ACT </option>
			<option> CCS </option> 
			<option> HRS </option>
			<option> EIM </option> 
			<option> COMSEC </option>
			</select>
			<br>
	   <label class="w3-label"> Year Level </label>
	   <select class="w3-input w3-text-gray w3-checkbox" style="width:50%" name="sch_yr_lvl"  required> 
			<option> 1st </option> 
			<option> 2nd </option>
			<option> 3rd </option> 
			<option> 4th </option>
		</select>
		<br>
		<label class="w3-label w3-text-gray"> Section </label>
		<select class="w3-input w3-checkbox w3-text-gray" type="text" style="width:30%" name="sch_section" required>
			<option> A </option> 
			<option> B </option>		
		</select>
		<br>
		<label class="w3-label w3-text-gray"> Semester </label>
		<select class="w3-input w3-checkbox w3-text-gray" type="text" style="width:30%" name="sch_sem" required>
			<option> 1st </option> 
			<option> 2nd </option>		
		</select>
		<br>
		<label class="w3-label w3-text-gray"> School Year </label>
		<input class="w3-input"  type="text" style="width:30%" name="sch_acad_yr" required>
<br><br>
	</div>
	
		<div class="w3-container w3-card-4 w3-margin w3-round w3-col l7 m7 s7" style="background-image:url(img/bg.png); background-size: 100% 100%">	
			<br>
			<label class="w3-label w3-text-gray"><h4><b><i class="w3-text-gray fa fa-image w3-xlarge"></i> REQUIREMENT PICTURES </b></h4></label>
			<label class="w3-label w3-text-gray"><i class="w3-text-gray fa fa-user w3-xlarge"></i> &nbsp;ID Photo </label>
			<br>
			<input type="file" name="sch_pic" required>		
			<br><br>
			<label class="w3-label w3-text-gray"><i class="w3-text-gray fa fa-file-alt w3-xlarge"></i> &nbsp; COR </label>
			<br>
			<input type="file" name="sch_cor" required>
			<br><br>
			<label class="w3-label w3-text-gray"><i class="w3-text-gray fa fa-file-alt w3-xlarge"></i> &nbsp; OR </label>
			<br>
			<input type="file" name="sch_or" required>
			<br><br>
			<label class="w3-label w3-text-gray"><i class="w3-text-gray fa fa-id-card w3-xlarge"></i> Student ID </label>
			<br>
			<input type="file" name="sch_idpc" required>
			<br><br>
			<label class="w3-label w3-text-gray"><i class="w3-text-gray fa fa-file-alt w3-xlarge"></i> &nbsp; Letter of Appreciation </label>
			<br>
			<input type="file" name="sch_loa" required>
			<br><br>
			<label class="w3-label w3-text-gray"><i class="w3-text-gray fa fa-file-alt w3-xlarge"></i> &nbsp; Barangay Indigency </label>
			<br>
			<input type="file" name="sch_brgy_ndgncy" required>
			<br><br>
			<label class="w3-label w3-text-gray"><i class="w3-text-gray fa fa-file w3-xlarge"></i> &nbsp; Class Cards </label>
			<br>
			<input type="file" name="sch_cc" required>
			<br><br>
		</div>
		<br>
		<button class="w3-button w3-teal w3-right" name="submit"> Submit </button>

	</form>

	<?php

			if (isset($_POST['submit'])) {
				$sch_id = $_POST['sch_id'];
				$sch_fname = $_POST['sch_fname'];
				$sch_mfname = $_POST['sch_mfname'];
				$sch_lname = $_POST['sch_lname'];
				$sch_extname = $_POST['sch_extname'];
				$sch_age = $_POST['sch_age'];
				$sch_gender = $_POST['sch_gender'];				
				$sch_bday = $_POST['sch_bday'];
				$sch_add_st = $_POST['sch_add_st'];
				$sch_add_brgy = $_POST['sch_add_brgy'];
				$sch_add_mun = $_POST['sch_add_mun'];
				$sch_add_prov = $_POST['sch_add_prov'];
				$sch_zip = $_POST['sch_zip'];
				$sch_cp_no = $_POST['sch_cp_no'];
				$sch_email = $_POST['sch_email'];
				$sch_father = $_POST['sch_father'];
				$sch_f_occu = $_POST['sch_f_occu'];
				$sch_mother = $_POST['sch_mother'];
				$sch_m_occu = $_POST['sch_m_occu'];
				$sch_civ_stat = $_POST['sch_civ_stat'];
				$sch_course = $_POST['sch_course'];
				$sch_yr_lvl = $_POST['sch_yr_lvl'];	
				$sch_section = $_POST['sch_section'];			
				$sch_sem = $_POST['sch_sem'];
				$sch_acad_yr = $_POST['sch_acad_yr'];
				$sch_pic = $_POST['sch_pic'];
				$sch_cor = $_POST['sch_cor'];
				$sch_or = $_POST['sch_or'];
				$sch_idpc = $_POST['sch_idpc'];
				$sch_loa = $_POST['sch_loa'];
				$sch_brgy_ndgncy = $_POST['sch_brgy_ndgncy'];
				$sch_cc = $_POST['sch_cc'];
			
				$con = mysqli_connect("localhost", "root", "", "bpc_osams") or die("Can't connect to to the database");

				mysqli_query ($con, "INSERT into osams_scholars
				(sch_id, 
					sch_fname,
					sch_mfname,
					sch_lname,
					sch_extname,
					sch_bday,
					sch_age,
					sch_gender,
					sch_add_st,
					sch_add_brgy,
					sch_add_mun,
					sch_add_prov,
					sch_zip,
					sch_cp_no,
					sch_email, 
					sch_father,
					sch_f_occu,
					sch_mother, 
					sch_m_occu,
					sch_civ_stat,
					sch_course, 
					sch_yr_lvl,
					sch_section,
					sch_sem,
					sch_acad_yr,
					sch_verified,
					sch_pic, 
					sch_cor,
					sch_or,
					sch_idpc,
					sch_loa,
					sch_brgy_ndgncy,
					sch_cc)
					VALUES ('$sch_id',
					'$sch_fname',
					'$sch_mfname',
					'$sch_lname',
					'$sch_extname',
					'$sch_bday',
					'$sch_age',
					'$sch_gender',
					'$sch_add_st',
					'$sch_add_brgy',
					'$sch_add_mun',
					'$sch_add_prov',
					'$sch_zip',
					'$sch_cp_no',
					'$sch_email', 
					'$sch_father',
					'$sch_f_occu',
					'$sch_mother', 
					'$sch_m_occu',
					'$sch_civ_stat',
					'$sch_course',
					'$sch_yr_lvl',
					'$sch_section',
				'$sch_sem',
				'$sch_acad_yr',
				'no',
				'$sch_pic',
				'$sch_cor',
				'$sch_or',
				'$sch_idpc',
				'$sch_loa',
				'$sch_brgy_ndgncy',
				'$sch_cc')") or die ("There's a problem in adding");
		
				echo $sch_id;
				echo "<br>";
				echo $sch_fname;echo "<br>";
				echo $sch_mfname;echo "<br>";
				echo $sch_lname;echo "<br>";
				echo $sch_extname;echo "<br>";
				echo $sch_bday;echo "<br>";
				echo $sch_add_st;	echo "<br>";								
				echo $sch_add_brgy;echo "<br>";
				echo $sch_add_mun;echo "<br>";
				echo $sch_add_prov;echo "<br>";
				echo $sch_zip;echo "<br>";
				echo $sch_cp_no;echo "<br>";
				echo $sch_email;echo "<br>";
				echo $sch_father;echo "<br>";
				echo $sch_f_occu;echo "<br>";
				echo $sch_mother;echo "<br>";
				echo $sch_m_occu;echo "<br>";
				echo $sch_civ_stat;echo "<br>";
				echo $sch_course;echo "<br>";
				echo $sch_yr_lvl;echo "<br>";
				echo $sch_section;echo "<br>";
				echo $sch_sem;echo "<br>";
				echo $sch_acad_yr;echo "<br>";
				echo "no";echo "<br>";
				echo $sch_pic;echo "<br>";
				echo $sch_cor;echo "<br>";
				echo $sch_or;echo "<br>";
				echo $sch_idpc;echo "<br>";
				echo $sch_loa;echo "<br>";				
				echo $sch_brgy_ndgncy;echo "<br>";
				echo $sch_cc;echo "<br>";

				
			}
	?>
	
<script>
document.getElementsByClassName("tablink")[0].click();

function openInfo(evt, InfoName) {
  var i, x, tablinks;
  x = document.getElementsByClassName("Info");
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";
  }
  tablinks = document.getElementsByClassName("tablink");
  for (i = 0; i < x.length; i++) {
    tablinks[i].classList.remove("w3-light-grey");
  }
  document.getElementById(InfoName).style.display = "block";
  evt.currentTarget.classList.add("w3-light-grey");
}
</script>
</body>
</html>