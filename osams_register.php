<?php ob_start();  ?>

	<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>	The Registration Form </title>
	<link rel="stylesheet" href="css/w3.css">
	<link rel="stylesheet" type="text/css" href="css/fontawesome-free/css/all.min.css">
	<link rel="stylesheet" type="text/js" href="js/query.js">
	<style>

		::-webkit-scrollbar {
		width: 8px;
		height: 30px;
		}
		::-webkit-scrollbar-thumb {
		background-color: darkgray !important;
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
			font-size:13px;
			font-family:arial;

		}
		p{
			color:gray;
			font-size: 14px;
			font-weight:bold;

		}
	</style>
</head>
<?php
	function load_province()
	{
		$con = mysqli_connect("db758871533.hosting-data.io", "dbo758871533", "_BpcOsams2018", "db758871533") or die("Can't connect to database");
		$out ='';
		$sql = "SELECT * FROM osams_province ORDER by prov_name";
		$result = mysqli_query($con, $sql);
		while($row = mysqli_fetch_array($result))
		{
			$out .= '<option value="'.$row['prov_id'].'">'.$row['prov_name'].'</option>';
		} 
		return $out;

	}	

?>
<body>
	<div class="w3-container w3-card w3-padding" style="background: #006064">
		<a class="w3-btn w3-text-white w3-round w3-animate-left w3-left" href="index.php"><i class="fa fa-arrow-alt-circle-left w3-xxxlarge"></i></a>
	</div>
	<br>
	<form action="osams_register.php" method="post" enctype="mulitipart/form-data">
	<div>
	<div class="w3-container w3-row w3-transparent w3-round w3-card-4 w3-margin" style="background-image:url(img/bg.png)">	

		<label class="w3-label"><h4><b><i class="w3-text-gray fa fa-user w3-xlarge"></i> PERSONAL INFORMATION </b></h4></label>
		<table width="100%" class="w3-table w3-padding-24">
		<td>
			<br>
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
			<label class="w3-label"> Birthday </label>
			<input class="w3-input w3-round w3-text-gray"  type="date" name="sch_bday" style="width:30%">	
			<br>
			<label class="w3-label"> Age </label>
			<input class="w3-input w3-round"  type="number" name="sch_age" style="width:30%">
			<br>
			<label class="w3-label"> Civil Status </label>
				<select class="w3-input w3-text-gray w3-checkbox"  style="width:30%" name="sch_civ_stat" required> 
					<option> Single </option>
					<option> Married </option>
					<option> Widowed </option>					
				</select>
		</td>
		<td>
			<br><br>
			<label class="w3-label"> Gender </label>
			<select class="w3-input w3-text-gray w3-checkbox"  style="width:30%" name="sch_gender" required>
				<option> Select </option>
				<option> Female </option> 
				<option> Male </option>
			</select>

			<br>
			<label class="w3-label"> Province </label>
			<select id="province" class="w3-input w3-text-gray w3-checkbox"  style="width:50%" name="sch_add_prov" required style="width:50%">
				<option value=""> Select Province </option>
				<?php echo load_province(); ?>
			</select>
			<br>
			<label class="w3-label"> Municipality/Town </label>
			<select id="muni" class="w3-input w3-text-gray w3-checkbox"  style="width:50%" name="sch_add_mun" required style="width:50%">
			</select>
			<br>
			<label class="w3-label"> Zip Code </label>
			<input class="w3-input w3-round" type="text" name="sch_zip" style="width:50%">
			<br>
			<label class="w3-label"> Barangay </label>
			<input class="w3-input w3-round" type="text" name="sch_add_brgy" style="width:50%">		
			<br>
			<label class="w3-label"> Street/Block/Lot </label>
			<input class="w3-input w3-round"  type="text" name="sch_add_st" style="width:50%" required>
			<br>
		</td>
		<td>
			<br><br>						
			<label class="w3-label"> Phone Number </label>
			<input class="w3-input w3-round" type="text" name="sch_cp_no" style="width:50%" placeholder="+639 *********" required>

			<br>
			<label class="w3-label"> Email Address </label>
			<input class="w3-input w3-round" type="text" name="sch_email" placeholder="sample@email.com" style="width:50%"  required>
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
		</td>
		</div>
		</div>	
	</div>
</table>
</div>
	<div class="w3-row w3-padding">
	<div class="w3-container w3-round w3-card-4 w3-col l4 m4 s4" style="background-image:url(img/bg.png); background-size: 100% 100%; margin-left:2%; margin-right:3%; margin-top:1%">	
		<br>
		<label class="w3-label"><h4><b><i class="w3-text-gray fa fa-graduation-cap w3-xlarge"></i> STUDENT INFORMATION </b></h4></label>
		<br>
		<label class="w3-label"> School ID Number </label>
		<input class="w3-input" type ="text" name="sch_id" style="width:50%" placeholder="00-0000" required>
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
		<input class="w3-input"  type="text" style="width:30%" name="sch_acad_yr" value="2018-2019" required>
		<br><br><br>
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
		<div class="">
			<button class="w3-button w3-teal w3-round w3-right" name="submit"> Submit </button>
			<br>
			<h6 class="w3-right w3-margin w3-text-gray"> Please re-read the information above before submitting your form.</h6>
		</div>

	</form>
		<br><br>
</div>
</div>
<div id="footer" class="w3-row w3-container w3-card-4 w3-padding" style="background: #006064">

		<div class="w3-row w3-padding">
					
			<div class="w3-image w3-row" style="width:50px; height:50px; margin-left:49%">
				<img src="img/logo.png" style="height:100%; max-height:100%; min-height:100%; width:100%; max-width:100%; min-width:100%">
			</div>
	
			<div class="w3-row w3-center" >
				<h2 style="font-family:times new roman; text-decoration: none; color:white;"> BPC Online Scholarship Application and Management Systems </h2>
				<hr>
				<h5 style="font-family: times new roman; color:#f5f5f5"> Bulacan Polytechnic College <br> Bulihan, City of Malolos, Bulacan</h5>
			</div>
		</div>
	 	<div id="copyright "class="w3-center">
	 		<span class="w3-center" style="font-size:11px; color:lightgray">BPC-OSAMS developed by CaViBan Developers All Copyrights Reserved 2018</span>
	 	</div>		
	<?php

			if (isset($_POST['submit'])) {
				$sch_id = $_POST['sch_id'];
				$sch_fname = $_POST['sch_fname'];
				$sch_mfname = $_POST['sch_mfname'];
				$sch_lname = $_POST['sch_lname'];
				$sch_extname = $_POST['sch_extname'];
				$sch_bday = $_POST['sch_bday'];
				$sch_age = $_POST['sch_age'];
				$sch_civ_stat = $_POST['sch_civ_stat'];
				$sch_gender = $_POST['sch_gender'];				
				$sch_add_prov = $_POST['sch_add_prov'];
				$sch_add_mun = $_POST['sch_add_mun'];
				$sch_zip = $_POST['sch_zip'];
				$sch_add_brgy = $_POST['sch_add_brgy'];
				$sch_add_st = $_POST['sch_add_st'];
				$sch_cp_no = $_POST['sch_cp_no'];
				$sch_email = $_POST['sch_email'];
				$sch_father = $_POST['sch_father'];
				$sch_f_occu = $_POST['sch_f_occu'];
				$sch_mother = $_POST['sch_mother'];
				$sch_m_occu = $_POST['sch_m_occu'];
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
					(sch_fname,
					sch_mfname,
					sch_lname,
					sch_extname,
					sch_bday,
					sch_age,
					sch_gender,
					sch_add_prov,
					sch_add_mun,
					sch_zip,
					sch_add_brgy,
					sch_add_st,
					sch_cp_no,
					sch_email, 
					sch_father,
					sch_f_occu,
					sch_mother, 
					sch_m_occu,
					sch_civ_stat,
					sch_id,
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
					VALUES (
					'$sch_fname',
					'$sch_mfname',
					'$sch_lname',
					'$sch_extname',
					'$sch_bday',
					'$sch_age',
					'$sch_gender',
					'$sch_add_prov',
					'$sch_add_mun',
					'$sch_zip',
					'$sch_add_brgy',
					'$sch_add_st',
					'$sch_cp_no',
					'$sch_email', 
					'$sch_father',
					'$sch_f_occu',
					'$sch_mother', 
					'$sch_m_occu',
					'$sch_civ_stat',
					'$sch_id',
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


 	header('location:http://bpc-osams.com/submitted.php'); 

			}	?>
			<script>
				$(document).ready(function(){
					$('#province').change(function(){
						var prov_id = $(this).val();
						$ajax({
							url: "fetch_muni.php",
							method: "POST",
							data:{provId:prov_id},
							dataType:"text", 	
							success:function(data)
							{
								$('#muni').html(data);
							}
						})
					});
				}); 
			</script>
</body>
</html>