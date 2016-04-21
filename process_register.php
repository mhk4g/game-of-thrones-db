<?php
session_start();
session_unset();

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
$hashedpw = hash("sha256", $password);

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
  $query = "INSERT INTO GOTUsers (email, password, access_level) VALUES ('$username', '$hashedpw', 4)";
  $result = $db->query($query);
  
  # If the entry is successfully created...
  if($result):
    $_SESSION["email"] = $username;
    $_SESSION["access_level"] = $temp["access_level"];    # Set the maker ID
    header("Location: search_page.php");
      
  # Otherwise, the insert fails because 
  else:
    $_SESSION["error"] = "An account with that email address already exists.";
    header("Location: register_page.php");
    die;
  endif;
}
?>