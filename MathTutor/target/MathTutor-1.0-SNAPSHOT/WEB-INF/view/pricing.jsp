<%-- 
    Document   : pricing
    Created on : Jan 11, 2023, 5:05:07 PM
    Author     : 993603
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Pricing</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body,h1,h2,h3,h4,h5,h6 {font-family: "Raleway", sans-serif}

body, html {
  height: 100%;
  line-height: 1.8;
}

/* Full height image header */
.bgimg-1 {
  background-position: center;
  background-size: cover;
  background-image: url("/w3images/mac.jpg");
  min-height: 100%;
}

.w3-bar .w3-button {
  padding: 16px;
}
</style>
</head>
<body>

<!-- Navbar (sit on top) -->
<div class="w3-top">
  <div class="w3-bar w3-white w3-card" id="myNavbar">
      <a href="/index" class="w3-bar-item w3-button w3-wide"><img src="http://ivywatson.com/Logo.jpg" width = 40 alt="Logo"/></a>
    <!-- Right-sided navbar links -->
    <div class="w3-right w3-hide-small">
      <a href="/about-me" class="w3-bar-item w3-button"><i class="fa fa-graduation-cap" aria-hidden="true"></i> ABOUT</a>
      <a href="/testimonials" class="w3-bar-item w3-button"><i class="fa fa-comments" aria-hidden="true"></i> TESTIMONIALS</a>
      <a href="/pricing" class="w3-bar-item w3-button"><i class="fa fa-usd"></i> PRICING</a>
      <a href="/appointment-scheduler" class="w3-bar-item w3-button"><i class="fa fa-calendar" aria-hidden="true"></i> APPOINTMENT SCHEDULER</a>
      <a href="/dashboard" class="w3-bar-item w3-button"><i class="fa fa-user-circle-o" aria-hidden="true"></i> DASHBOARD </a>
    </div>

    <!-- Hide right-floated links on small screens and replace them with a menu icon -->

    <a href="javascript:void(0)" class="w3-bar-item w3-button w3-right w3-hide-large w3-hide-medium" onclick="w3_open()">
      <i class="fa fa-bars"></i>
    </a>
  </div>
</div>

<!-- Sidebar on small screens when clicking the menu icon -->
<nav class="w3-sidebar w3-bar-block w3-black w3-card w3-animate-left w3-hide-medium w3-hide-large" style="display:none" id="mySidebar">
  <a href="javascript:void(0)" onclick="w3_close()" class="w3-bar-item w3-button w3-large w3-padding-16">Close ×</a>
  <a href="#about" onclick="w3_close()" class="w3-bar-item w3-button">ABOUT</a>
  <a href="#team" onclick="w3_close()" class="w3-bar-item w3-button">TEAM</a>
  <a href="#work" onclick="w3_close()" class="w3-bar-item w3-button">WORK</a>
  <a href="#pricing" onclick="w3_close()" class="w3-bar-item w3-button">PRICING</a>
  <a href="#contact" onclick="w3_close()" class="w3-bar-item w3-button">CONTACT</a>
</nav>

<!-- Pricing Section -->
<div class="w3-container w3-center w3-light-grey" style="padding:128px 16px" id="pricing">
  <h3>PRICING</h3>
  <p class="w3-large">Choose a pricing plan that fits your needs.</p>
  <div class="w3-row-padding" style="margin-top:64px">
    <div class="w3-third w3-section">
      <ul class="w3-ul w3-white w3-hover-shadow">
        <li class="w3-black w3-xlarge w3-padding-32">Basic</li>
        <li class="w3-padding-16"><b>2</b> In-Person Sessions Per Month</li>
        <li class="w3-padding-16"><b>2</b> Virtual Sessions Per Month</li>
        <li class="w3-padding-16"><b>2</b> Personalized Study Sessions Per Month</li>
        <li class="w3-padding-16"><b>Responses in</b> 24 hours</li>
        <li class="w3-padding-16">
          <h2 class="w3-wide">$ 200</h2>
          <span class="w3-opacity">per month</span>
        </li>
      </ul>
    </div>
    <div class="w3-third">
      <ul class="w3-ul w3-white w3-hover-shadow">
        <li class="w3-red w3-xlarge w3-padding-48">Pro</li>
        <li class="w3-padding-16"><b>4</b> In-Person Sessions Per Month</li>
        <li class="w3-padding-16"><b>2</b> Virtual Sessions Per Month</li>
        <li class="w3-padding-16"><b>4</b> Personalized Study Sessions Per Month</li>
        <li class="w3-padding-16"><b>Responses Guaranteed in </b> 24 Hours</li>
        <li class="w3-padding-16">
          <h2 class="w3-wide">$ 300</h2>
          <span class="w3-opacity">per month</span>
        </li>
      </ul>
    </div>
    <div class="w3-third w3-section">
      <ul class="w3-ul w3-white w3-hover-shadow">
        <li class="w3-black w3-xlarge w3-padding-32">Premium</li>
        <li class="w3-padding-16"><b>4</b> In-Person Sessions Per Month</li>
        <li class="w3-padding-16"><b>2</b> Virtual Sessions Per Month</li>
        <li class="w3-padding-16"><b>4</b> Personalized Study Sessions Per Month</li>
        <li class="w3-padding-16"><b>Responses Guaranteed in</b> 4 Hours</li>
        <li class="w3-padding-16">
          <h2 class="w3-wide">$ 400</h2>
          <span class="w3-opacity">per month</span>
        </li>
      </ul>
    </div>
  </div>
</div>

<!-- Footer -->
<footer class="w3-center w3-black w3-padding-64">
  <div class="w3-xlarge w3-section">
      <a href ="https://www.facebook.com"><i class="fa fa-facebook-official w3-hover-opacity"></i></a>
      <a href ="https://www.instagram.com"<i class="fa fa-instagram w3-hover-opacity"></i></a>
      <a href ="https://www.snapchat.com"<i class="fa fa-snapchat w3-hover-opacity"></i></a>
      <a href ="https://www.pinterest.com"<i class="fa fa-pinterest-p w3-hover-opacity"></i></a>
      <a href = "https://www.twitter.com"<i class="fa fa-twitter w3-hover-opacity"></i></a>
      <a href = "https://www.linkedin.com"<i class="fa fa-linkedin w3-hover-opacity"></i></a>
  </div>
</footer>
 
<script>
// Modal Image Gallery
function onClick(element) {
  document.getElementById("img01").src = element.src;
  document.getElementById("modal01").style.display = "block";
  var captionText = document.getElementById("caption");
  captionText.innerHTML = element.alt;
}


// Toggle between showing and hiding the sidebar when clicking the menu icon
var mySidebar = document.getElementById("mySidebar");

function w3_open() {
  if (mySidebar.style.display === 'block') {
    mySidebar.style.display = 'none';
  } else {
    mySidebar.style.display = 'block';
  }
}

// Close the sidebar with the close button
function w3_close() {
    mySidebar.style.display = "none";
}
</script>

</body>
</html>
