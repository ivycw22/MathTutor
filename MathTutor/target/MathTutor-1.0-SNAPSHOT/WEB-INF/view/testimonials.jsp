<%-- 
    Document   : testimonials
    Created on : Jan 11, 2023, 5:04:30 PM
    Author     : 993603
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Testimonials</title>
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

.w3-bar .w3-button {
  padding: 16px;
}
</style>
</head>
<body>

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

<!-- Team Section -->
<div class="w3-container" style="padding:128px 16px" id="team">
  <h3 class="w3-center">THE HAPPY CLIENTS</h3>
  <p class="w3-center w3-large">These clients have all been extremely satisfied with my tutoring services</p>
  <div class="w3-row-padding w3-grayscale" style="margin-top:64px">
    <div class="w3-col l3 m6 w3-margin-bottom">
      <div class="w3-card">
        <img src="http://ivywatson.com/john_doe.avif" alt="John" style="width:100%">
        <div class="w3-container">
          <h3>John Doe</h3>
          <p class="w3-opacity">Parent of Student</p>
          <p>"XX is just amazing. Ever since my child XX started tutoring with her, his grades skyrocketed and he understands the material."</p>
          <p><button class="w3-button w3-light-grey w3-block"><i class="fa fa-envelope"></i> Contact: email@email.com</button></p>
        </div>
      </div>
    </div>
    <div class="w3-col l3 m6 w3-margin-bottom">
      <div class="w3-card">
        <img src="http://ivywatson.com/jane_doe.avif" alt="Jimmy" style="width:100%">
        <div class="w3-container">
          <h3>Jimmy Doe</h3>
          <p class="w3-opacity">Student</p>
          <p>"When I first started with XX, I was so confused on the material we were learning in class and I hated it. But, now that it's making more sense, I'm enjoying it a lot more."</p>
          <p><button class="w3-button w3-light-grey w3-block"><i class="fa fa-envelope"></i> Contact: jimmy@email.com</button></p>
        </div>
      </div>
    </div>
    <div class="w3-col l3 m6 w3-margin-bottom">
      <div class="w3-card">
        <img src="http://ivywatson.com/mary_smith.avif" alt="Mary" style="width:100%">
        <div class="w3-container">
          <h3>Mary Smith</h3>
          <p class="w3-opacity">Teacher</p>
          <p>"XX has been my student for several years now, and I've seen her dedication not only in class but in ensuring her tutoring students have the skills they need in class."</p>
          <p><button class="w3-button w3-light-grey w3-block"><i class="fa fa-envelope"></i> Contact: m.smith@email.com</button></p>
        </div>
      </div>
    </div>
    <div class="w3-col l3 m6 w3-margin-bottom">
      <div class="w3-card">
        <img src="http://ivywatson.com/dan_williams.avif" alt="Dan" style="width:100%">
        <div class="w3-container">
          <h3>Dan Williams</h3>
          <p class="w3-opacity">Parent</p>
          <p>"My daughter XX used to complain all the time how she didn't understand anything in her class and hated school. But, after tutoring with XX, she is so much more interested in school!"</p>
          <p><button class="w3-button w3-light-grey w3-block"><i class="fa fa-envelope"></i> Contact: danny@email.com</button></p>
        </div>
      </div>
    </div>
  </div>
</div>

<!-- Promo Section "Statistics" -->
<div class="w3-container w3-row w3-center w3-dark-grey w3-padding-64">
  <div class="w3-quarter">
    <span class="w3-xxlarge">10+</span>
    <br>Subjects
  </div>
  <div class="w3-quarter">
    <span class="w3-xxlarge">3+</span>
    <br>Happy Clients
  </div>
  <div class="w3-quarter">
    <span class="w3-xxlarge">4+</span>
    <br>Recommenders
  </div>
  <div class="w3-quarter">
    <span class="w3-xxlarge">3+</span>
    <br>Pricing Options
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

