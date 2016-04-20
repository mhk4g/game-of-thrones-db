<?php 
session_start();
session_unset();


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

# Store user type in session variable
if(isset($_SESSION["user_type"])) {
    $permission_code = (string)$_SESSION["user_type"];
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
  $result = $db->query("SELECT * from GOTUsers where email='$user' AND password='$hashedpw'");
  
  if (mysqli_num_rows($result) > 0):
    
    # Username exists. Login!
    $temp = $result->fetch_assoc();
    $_SESSION["email"] = $username;
    $_SESSION["access_level"] = $temp["access_level"];
    header("Location: search_page.php");
  
  else:
    
    $_SESSION["error"] = "Invalid email address or password: $temp \n $user \n $hashedpw";
    header("Location: login_page.php");
    
  endif;
  }
?>