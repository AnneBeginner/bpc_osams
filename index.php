<?php ob_start();  ?>
<?php
		session_start();
		$con = mysqli_connect("db758871533.hosting-data.io", "dbo758871533", "_BpcOsams2018", "db758871533") or die("Can't connect to database");

	?>
<html>
<head>
	<meta charset="utf-8">
	<title> BPC Online Scholarship Application and  Management System </title>
	<link rel="stylesheet" href="css/w3.css">
	<link rel="stylesheet" type="text/css" href="css/fontawesome-free/css/all.min.css">

<style>
	.switch {
	  position: relative;
	  display: inline-block;
	  width: 40px;
	  height: 20px;
	  margin-top:1%;

	}

	.slider {
	  position: absolute;
	  cursor: pointer;
	  top: 0;		
	  left: 0;
	  right: 0;
	  bottom: 0;
	  background-color: #ccc;
	  -webkit-transition: .5s;
	  transition: .5s;
	}

	.slider:before {
	  position: absolute;
	  content: "";
	  height: 14px;
	  width: 14px;
	  left: 4px;
	  bottom: 3px;
	  background-color: white;
	  -webkit-transition: .4s;
	  transition: .4s;
	}

	input:checked + .slider {
	  background-color: #006064;
	  border:0;
	}


	input:checked + .slider:before {
	  -webkit-transform: translateX(26px);
	  -ms-transform: translateX(26px);
	  transform: translateX(18px);
	}

	/* Rounded sliders */
	.slider.round {
	  border-radius: 500px;
	}

	.slider.round:before {
	  border-radius: 60%;
	}		
	.w3-section{
		background-image:url(img/bg.png);
		background-size: 100% 100%;
	}
</style>
</head>

<body>

	<div id="wrapper" class="w3-container w3-padding-24">
			
		<div id="header" class="w3-card-4 w3-round" style="background: #006064">
			<center>
			<img class="w3-animate-top" style="margin-top:1%" src="img/logo.png" width="120" height="120"></center>
			<br>
		</div>

		<div id="body" class="w3-section w3-container w3-card-4" style="">
			<div class="w3-container" style="">
				<br><br><br><br>	
				<h1 class="w3-animate-opacity w3-text-gray" style="font-family:times new roman;"> <b> BPC Online Scholarship Application and  Management System </b></h1>
				<h5 class="w3-text-gray w3-animate-opacity"> Main Campus<br> Bulihan, City of Malolos, Bulacan </h5>
				<br><br>
			</div>
			<br><br>
			<div class="w3-container w3-center">
				<a class="w3-button w3-card w3-teal w3-text-white w3-right w3-round" href="osams_register.php"> Register </a>
				<a class="w3-button w3-card w3-teal w3-text-white w3-right w3-round" onclick="document.getElementById('loginmodal').style.display='block'" style="margin-right:1%"> Log-In </a>
	 		</div>
	 		<br><br>
	 	</div>
	 	<div id="copyright "class="w3-center">
	 		<span class="w3-right" style="font-size:11px; color:gray">Bulacan Polytechnic College Online Scholarship Application and Management System developed by CaViBan Developers All Copyrights Reserved 2018</span>
	 	</div>
	 	<!--login modal-->
	  	<div id="loginmodal" class="w3-modal">
			<div class="w3-modal-content w3-card-4 w3-animate-zoom" style="max-width:500px">
				<div class="w3-center"><br>
			     	<span onclick="document.getElementById('loginmodal').style.display='none'" class="w3-button w3-xlarge w3-hover-teal w3-display-topright" title="Close"> &times; </span>

			        <h5 style="color:teal; font-weight:bold"> BPC-OSAMS </h5>
			        <span><i class="fa fa-user-lock w3-xxxlarge w3-text-teal"></i></span>
			        <h6 style="color:gray"> Access your account. Easy. Efficient. </h6>
			        <br>
			    </div>

			    <form class="w3-container" action="index.php" method="post">
			        <div class="w3-container">
			        	<span style="color:teal"><i class="fa fa-user w3-large w3-text-teal"></i> Username</span>
			    	    <input class="w3-input w3-border w3-margin-bottom" type="text" placeholder="Enter Username" name="admin_uname" style="color:gray" required>

			        	<span style="color:teal"><i class="fa fa-key w3-large w3-text-teal"></i> Password</span>
			        	<input id="admin_pass" class="w3-input w3-border" type="password" placeholder="Enter Password" name="admin_pass" style="color:gray" required>
				        <label class="switch">
 							<input type="checkbox" onclick="myFunction()">
 							<span class="slider round" title="Show password"></span>
						</label>
					<br>
						<br>
			        	<button class="w3-button w3-block w3-teal w3-padding w3-hover-cyan w3-margin-bottom" type="submit" name="submit"> Login</button>
			        	<button class="w3-button w3-block w3-white w3-padding w3-hover-khaki" type="submit" disabled> Forgot password?</button>
			        	<br>       
			        </div>
			    </form>
			</div>
  		</div>
 		<!--end of login modal-->

</body>


			<?php

				$adminvalid = 0;
				
				if(isset($_POST['submit'])){

					$admin_uname = $_POST['admin_uname'];
					$admin_pass = $_POST['admin_pass'];
					mysqli_query($con, "SELECT * FROM `osams_admin` WHERE `admin_uname` = '$admin_uname' AND `admin_pass` = '$admin_pass'");
					$adminvalid = mysqli_affected_rows($con);
					if ($adminvalid == 1) {
					header('location:http://localhost/bpcosams/osams_admin.php'); 				 
					}else{
					echo "<script>alert('Wrong combination! Try again :)');</script>";	
					//header('location:http://localhost/bpcosams/index.php'); 					 
					}
				}	

			?>
	<script>
		//toggle button
		function myFunction() {
		    var x = document.getElementById("admin_pass");
		    if (x.type === "password") {
		        x.type = "text";
		    } else {
		        x.type = "password";
		    }
		}
	</script>

</html>	
<?php ob_end_flush(); ?> 