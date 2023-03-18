
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<title>About Me</title>
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
  <a href="#team" onclick="w3_close()" class="w3-bar-item w3-button">TESTIMONIALS</a>
  <a href="#work" onclick="w3_close()" class="w3-bar-item w3-button">APPOINTMENT SCHEDULER</a>
  <a href="#pricing" onclick="w3_close()" class="w3-bar-item w3-button">PRICING</a>
</nav>

<!-- About Section -->
<div class="w3-container" style="padding:128px 16px" id="about">
  <h3 class="w3-center">ABOUT ME</h3>
  <p class="w3-center w3-large">I demonstrate key characteristics of effective tutors</p>
  <div class="w3-row-padding w3-center" style="margin-top:64px">
    <div class="w3-quarter">
      <i class="fa fa-desktop w3-margin-bottom w3-jumbo w3-center"></i>
      <p class="w3-large">Responsive</p>
      <p>I respond quickly to communication with students. I am available to help students by email and text outside of tutoring sessions.</p>
    </div>
    <div class="w3-quarter">
      <i class="fa fa-heart w3-margin-bottom w3-jumbo"></i>
      <p class="w3-large">Passionate</p>
      <p>Math became my favorite class once I realized I was good at it. This spurs me to tutor so others can experience this as well. </p>
    </div>
    <div class="w3-quarter">
      <i class="fa fa-book w3-margin-bottom w3-jumbo"></i>
      <p class="w3-large">Knowledgeable</p>
      <p>I have a wide background of knowledge, having taken the most advanced classes available to me  since middle school. </p>
    </div>
    <div class="w3-quarter">
      <i class="fa fa-life-ring w3-margin-bottom w3-jumbo"></i>
      <p class="w3-large">Supportive</p>
      <p>I understand that everyone learns differently. I am always happy to explain concepts in a different way and answer questions.</p>
    </div>
  </div>
</div>

<!-- Skills Section -->
<div class="w3-container w3-light-grey w3-padding-64">
  <div class="w3-row-padding">
    <div class="w3-col m6">
      <h3>Qualifications</h3>
      <p>My concentration is in STEM fields. I have received A's in all subjects, including advanced level courses such as AP BC Calculus, AP Physics C, IB English, IB Computer Science HL, and IB Spanish B HL</p>
      <p>Although my concentration is in STEM fields, I have extensive background in the humanities. I have strong writing skills developed from advanced English and History courses, as well as my participation in IB classes.</p>
    </div>
    <div class="w3-col m6">
      <h4><i class="fa fa-line-chart w3-margin-right"></i>Math Subjects</h4>
      <p>Algebra I & II, Geometry, Trigonometry, Pre-Calculus/IB Math SL, AB & BC Calculus </p>
      <h4><i class="fa fa-flask w3-margin-right"></i>Sciences </h4>
      <p>Classical Physics: Algebra and Calculus based, Computer Science: Java, C, Python </p>
      <h4><i class="fa fa-pencil-square-o w3-margin-right"></i>Writing</h4>
      <p>Literary Analysis (fiction & non-fiction), Narrative Writing, Persuasive Essays </p>
    </div>
  </div>
</div>

<!-- Promo Section - "We know design" -->
<div class="w3-container w3-light-grey" style="padding:128px 16px">
  <div class="w3-row-padding">
    <div class="w3-col m6">
      <h3>I know tutoring</h3>
      <p>I began tutoring as a sophomore in high school through the Mu Alpha Theta (Math) Honors Society. I am available to work with students in a variety of formats, from virtual meetings to in-person. I use tools such as Google Jamboards and I am available by text and email to my students. </p>
      <p><a href="/appointment-scheduler" class="w3-button w3-black"><i class="fa fa-calendar"> </i> Login to View Available Appointments</a></p>
    </div>
    <div class="w3-col m6">
      <img class="w3-image w3-round-large" src="http://ivywatson.com/IMG_0152.JPG" alt="Headshot" height="394">
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
