<?php 
session_start();
ini_set('display_errors', 1);
include 'helpers.php';
// mysqli_report(MYSQLI_REPORT_OFF);

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
    die("Could not connect to database: " . $db->connect_error);
  }

# If login button was clicked...
if(isset($_POST["login"])) {
  $loginstatement = $db->prepare("SELECT * from GOTUsers where email=? AND password=?");
  $loginstatement->bind_param("ss", $user, $hashedpw);
  $loginstatement->execute();
  
  if ($result = mysqli_stmt_fetch($loginstatement)):
  
  $_SESSION["email_address"] = $user; 
  $_SESSION["access_level"] = $result[2];
  $_SESSION["error"] = $result[2];
  header("Location: search_page.php");
  
  else:
    
    $_SESSION["error"] = "Invalid email address or password.";
    header("Location: login_page.php");
    
  endif;
  }
?>