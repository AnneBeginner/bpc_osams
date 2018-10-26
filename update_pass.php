
<html>
<head>
<title> Reset Password </title>
<link rel="stylesheet" href="css/w3.css">
<link rel="stylesheet" type="text/css" href="css/fontawesome-free/css/all.min.css">
<style>
	
	a{
		text-decoration: none;
		margin-right:5%;
	}
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

<body style="background-image:url(img/bg.png); background-size:100% 100%">
		<div class="">			
	  		<a href="osams_manage.php" class="w3-bar-item w3-button w3-hover-white w3-text-gray w3-hover-text-gray">
			<h3 class="w3-label w3-margin w3-text-teal"><i class="w3-xxxlargelarge fa fa-arrow-left"></i> &nbsp;&nbsp;<i class="w3-xxlarge fa fa-edit"></i> Reset Admin Password </h3></a>
		</div>
		<form action="update_pass.php" method="post">
		<div class="w3-container w3-transparent w3-third" style="margin-left:33%; font-family:arial narrow;">
			<br>
			<div class="w3-card-4 w3-white w3-center" style="max-width:500px">
				<div class=""><br>
			     	<br>	
			        <span><i class="fa fa-lock w3-xxxlarge w3-text-teal"></i></span>
			        <h6 style="color:gray"> Create a password that is strong enough <br>to protect you. </h6>
			        <br>
			    </div>

			    <form class="w3-container" action="update_pass.php" method="post">
			        <div class="w3-container">
			        	<span style="color:teal"><i class="fa fa-lock w3-large w3-text-teal"></i> Current Password </span>
			    	    <input class="w3-input w3-border w3-margin-bottom" type="password" placeholder="Enter Old Password" name="old_pass" style="color:gray" required>

			        	<span style="color:teal"><i class="fa fa-lock w3-large w3-text-teal"></i> New Password</span>
			        	<input id="new_pass" class="w3-input w3-border" type="password" placeholder="Enter New Password" name="new_pass" style="color:gray" required>
					<br>
					<span style="color:teal"><i class="fa fa-lock w3-large w3-text-teal"></i> Confirm Password</span>
			        	<input id="confirm_pass" class="w3-input w3-border" type="password" placeholder="Confirm Password" name="confirm_pass" style="color:gray" required>
				        <label class="switch">
 							<input type="checkbox" onclick="myFunction()">
 							<span class="slider round" title="Show password"></span>
						</label>
<br>
						<br>
			        	<button class="w3-button w3-block w3-teal w3-padding w3-hover-white w3-hover-text-gray w3-margin-bottom" type="submit" name="submit"> Reset &nbsp;<i class="fa fa-key w3-xlarge"></i></button>
			        	<br>       
			        </div>
			    </form>
			</div>
  		</div>

		</div>
</form>
		<?php

			if(isset($_POST['submit'])){

			$newpass = $_POST['new_pass'];
			$admin = "admin";
			$id = "1";
			//echo $newpass;

		$con = mysqli_connect("db758871533.hosting-data.io", "dbo758871533", "_BpcOsams2018", "db758871533") or die("Can't connect to database");

				mysqli_query($con, "UPDATE osams_admin SET admin_pass='$newpass' WHERE `admin_no` = $id");

			} else
			{
				echo "there's problem in updating";
			}
		?>
	<script>
		//toggle button
			function myFunction() {
		    var x = document.getElementById("confirm_pass");
		    if (x.type === "password") {
		        x.type = "text";
		    } else {
		        x.type = "password";
		    }
		}
	</script>

</body>
</html> 