<?php 
session_start();
ini_set('display_errors', 1);
include 'helpers.php';
mysqli_report(MYSQLI_REPORT_OFF);

# If either field omitted, display error
if(empty($_POST["email"]) || empty($_POST["password"])):
  $_SESSION["error"] = "Please enter an email address and password.";
  header("Location: login_page.php");
  die;
endif;

# Get login info from POST
if(isset($_POST["email"])) {
    $user = (string)$_POST["email"];
}
if(isset($_POST["password"])) {
    $password = (string)$_POST["password"];
}

# Database credentials
$dbuser = "cs4750mhk4g";
$dbpass = "aryastark";
$dbname = "cs4750mhk4g";
$hashedpw = hash("md5", $password);

$db = new mysqli('stardock.cs.virginia.edu', $dbuser, $dbpass, $dbname);
if ($db->connect_error) {
    die("Could not connect to database. Check your wifi connection.");
  }

# If login button was clicked...
if(isset($_POST["login"])) {
  $loginstatement = $db->prepare("SELECT email, access_level from GOTUsers where email=? AND password=?");
  $loginstatement->bind_param("ss", $user, $hashedpw);
  $loginstatement->execute();
  mysqli_stmt_bind_result($loginstatement, $user_result, $access_level_result);
  
  if ($loginstatement->fetch()):
      $_SESSION["email_address"] = $user_result; 
      $_SESSION["access_level"] = $access_level_result;
      header("Location: search_page.php");  
  else:
    $_SESSION["error"] = "Invalid email address or password.";
    header("Location: login_page.php");
  endif;
  }
?>