<?php 
session_start();
ini_set('display_errors', 1);
include 'helpers.php';
mysqli_report(MYSQLI_REPORT_OFF);

if (isset($_SESSION["error"])) {
    $error_display = "Invalid user name or password.";
} else {
    $error_display = "";
}

if (isset($_SESSION["email_address"])) {
    $login_label = $_SESSION["email_address"];
    $login_or_out = "<nav class=\"link-label\" id=\"login-link\"><a href=\"logout.php\">Logout</a></span></nav>";
} else {
    $login_label = "Guest  ";
    $login_or_out = "<nav class=\"link-label\" id=\"login-link\"><a href=\"login_page.php\">Login</a></span></nav>";
}

if (isset($_SESSION["access_level"])) {
    $access_level = $_SESSION["access_level"];
} else {
    $access_level = 4;
}
?>

<html background-color>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.2/jquery.min.js"></script>
<script type="text/javascript" language="javascript">

function sendRequest() {
    var httpRequest;
    var post_string = prepareUserInput();
    
    // BEGIN OBLIGATORY AJAX STUFF //
    if (window.XMLHttpRequest) { // Mozilla, Safari, ...
        httpRequest = new XMLHttpRequest();
        if (httpRequest.overrideMimeType) {
            httpRequest.overrideMimeType('text/xml'); } } 
    else if (window.ActiveXObject) { // IE
        try { httpRequest = new ActiveXObject("Msxml2.XMLHTTP"); } 
            catch (e) { try { httpRequest = new ActiveXObject("Microsoft.XMLHTTP"); } catch (e) {} } }
    if (!httpRequest) { alert('Giving up :( Cannot create an XMLHTTP instance'); return false; }
    // END OBLIGATORY AJAX STUFF //
    
    httpRequest.onreadystatechange = function() { displayResults(httpRequest); };
    httpRequest.open('POST', 'process_search.php', true);
    httpRequest.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    httpRequest.send(post_string);
  }
  
function displayResults(httpRequest) {
  if (httpRequest.readyState == 4) {
      if (httpRequest.status == 200) {
          document.getElementById("searchresults").innerHTML = httpRequest.responseText;
          document.getElementById("specialinput").value = "";
        } 
    }
  }

function prepareUserInput() {
    temp_string = "userinput=" + document.getElementById("specialinput").value;
    if (document.getElementById("char_box").checked == true) { temp_string += "&char_box=true"; }    
    if (document.getElementById("faction_box").checked = true) { temp_string += "&faction_box=true"; }    
    if (document.getElementById("creature_box").checked == true) { temp_string += "&creature_box=true"; }    
    if (document.getElementById("episode_box").checked == true) { temp_string += "&episode_box=true"; }    
    return temp_string;
}

$(document).keypress(function(e) {
        if(e.which == 13) {
                sendRequest();
        }
        });

</script>
<head>
    <link type="text/css" rel="stylesheet" href="style.css"/>
<link href='https://fonts.googleapis.com/css?family=Lato:400,100,300,700' rel='stylesheet' type='text/css'>
    <title>Game of Thrones DB</title>
</head>
<body bgcolor="black">
    <nav class="fixed-nav-bar"></nav>
    <nav class="fixed-nav-bar-shadow-top"></nav>
    <nav class="fixed-nav-bar-shadow-bottom"></nav>
    <nav class="nav-label" id="login-label"><?php echo($login_label); ?></nav>
    <nav class="nav-label" id="site-label">&#9819; game-of-thrones-db</nav>
    <nav class="link-label" id="search-link"><a href="search_page.php">Search</a></span></nav>
    <nav class="link-label" id="edit-link"><a href="admin_page.php">Admin</a></span></nav>
    <nav class="link-label" id="about-link"><a href="about_page.php">About</a></span></nav>
    <nav class="link-label" id="register-link"><a href="register_page.php">Register</a></span></nav>
    <?php echo($login_or_out); ?>
    <div class="input-box">
  <input id="specialinput" name="userinput" type='text' placeholder="Enter your search here" autofocus="autofocus" autocomplete="off" required />
  <span class="unit" style="color:black;">&#9819;</span><p>
  <input type="checkbox" id="char_box" checked /> Characters
  <input type="checkbox" id="faction_box" checked /> Factions
  <input type="checkbox" id="creature_box" checked /> Creatures
  <input type="checkbox" id="episode_box" checked /> Episodes
    </div>

    <audio controls autoplay, loop>
        <source src="gameofthrones.ogg" type="audio/ogg">
        <source src="gameofthrones.mp3" type="audio/mpeg">
        Your browser does not support the audio element.
    </audio>
  <div id="resultcontainer">
      <div id="searchresults">
          <!-- This is where the results go -->
      </div>
  </div>

</div>
</body>
