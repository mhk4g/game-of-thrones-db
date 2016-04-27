<?php
session_start();
ini_set('display_errors', 1);
mysqli_report(MYSQLI_REPORT_OFF);

# Reload login page if user or pass were left blank
if(empty($_POST["username"]) || empty($_POST["password"])):
  $_SESSION["error"] = "Please enter an email address and password.";
  header("Location: register_page.php");
  die;
endif;

# Database credentials
$dbuser = "cs4750mhk4g";
$dbpass = "aryastark";
$dbname = "cs4750mhk4g";

$username = $_POST["username"];
$password = $_POST["password"];
$confirm = $_POST["password2"];
$hashedpw = hash("md5", $password);
$tempaccess = 4;

$db = new mysqli('stardock.cs.virginia.edu', $dbuser, $dbpass, $dbname);
if ($db->connect_error) {
    die("Could not connect to database: " . $db->connect_error);
  }

# If the passwords don't match, go back.  
if($password != $confirm) {
    $_SESSION["error"] = "The passwords you provided do not match. Please try again.";
    header("Location: register_page.php");
    die;
}

# If register was clicked...
if(isset($_POST["register"])) {
  
  # Attempt to insert into database
  $registerstatement = $db->prepare("INSERT INTO GOTUsers (email, password, access_level) VALUES (?, ?, ?)");
  $registerstatement->bind_param("ssi", $username, $hashedpw, $tempaccess);
  $registerstatement->execute();
  
  if (!$registerstatement->error):
      $_SESSION["email_address"] = $username; 
      $_SESSION["access_level"] = "4";
      header("Location: search_page.php");  
  else:
    $_SESSION["error"] = "Something went wrong with your registration.";
    header("Location: register_page.php");
  endif;
  }
?>