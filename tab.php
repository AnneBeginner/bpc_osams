<html>
<head>
<title> Admin Page </title>
<link rel="stylesheet" href="css/w3.css">
<link rel="stylesheet" type="text/css" href="css/fontawesome-free/css/all.min.css">

<body class="w3-sand">
<div class="w3-container">
  <br>
<div class="w3-container">
 <div class="w3-card-4 w3-animate-opacity">
  <header class="w3-container" style="background: teal"> 
   <h1 class="w3-text-white">Summary of Application</h1>
  </header>

  <div class="w3-bar w3-border-bottom">
   <button class="tablink w3-bar-item w3-button" onclick="openInfo(event, 'pi')">Personal</button>
   <button class="tablink w3-bar-item w3-button" onclick="openInfo(event, 'si')">Student </button>
   <button class="tablink w3-bar-item w3-button" onclick="openInfo(event, 'pic')">Pictures</button>
  </div>

  <div id="pi" class="w3-container Info">
      <p> School ID </p>
      <p> Name </p>
      <p> Gender </p>
      <p> Birthday </p>
      <p> Adress </p>
      <p> Zipcode </p>
      <p> Phone Number </p>  
  </div>

  <div id="si" class="w3-container Info">
                <p> Email Address </p>
                <p> Father's Name </p>
                <p> Occupation </p>
                <p> Father's Name </p>
                <p> Occupation </p>
                <p> Civil Status </p>
  </div>

  <div id="pic" class="w3-container Info">
    
  </div>

  <div class="w3-container w3-light-grey">
     <button class=" w3-button w3-teal w3-right w3-margin"> <i class="w3-text-white fa fa-check w3-large"></i> &nbsp;Confirm </button>
     <button class="w3-button w3-red w3-right w3-margin"><i class="w3-text-white fa fa-trash w3-large"></i> Delete </button>
  </div>
 </div>
</div>

</div>
				<br><br>

      </body>
<script>
document.getElementsByClassName("tablink")[0].click();

function openInfo(evt, cityName) {
  var i, x, tablinks;
  x = document.getElementsByClassName("Info");
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";
  }
  tablinks = document.getElementsByClassName("tablink");
  for (i = 0; i < x.length; i++) {
    tablinks[i].classList.remove("w3-light-grey");
  }
  document.getElementById(cityName).style.display = "block";
  evt.currentTarget.classList.add("w3-light-grey");
}
</script>

      </html>