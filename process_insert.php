<?php 
session_start();
ini_set('display_errors', 1);
include 'helpers.php';
mysqli_report(MYSQLI_REPORT_OFF);

# Get login info from POST

if(isset($_POST["name"])) {
    $name = (string)$_POST["name"];
}
if(isset($_POST["first_appearance"])) {
    $firstappearance = (string)$_POST["first_appearance"];
}
if(isset($_POST["status"])) {
    $status = (string)$_POST["status"];
}
if(isset($_POST["aka"])) {
    $aka = (string)$_POST["aka"];
}

# Store user type in session variable
$permission_code = 5;
if(isset($_SESSION["access_level"])) {
    $permission_code = (string)$_SESSION["access_level"];
}

# Database credentials
$dbuser = "cs4750mhk4g" . convert_access_level_to_login_suffix($permission_code);
if ($dbuser == "cs4750mhk4g") {
    $dbpass = "aryastark";
} else {
    $dbpass = "spring2016";
}
$dbname = "cs4750mhk4g";

$db = new mysqli('stardock.cs.virginia.edu', $dbuser, $dbpass, $dbname);
if ($db->connect_error) {
    die("Could not connect to database. Check your wifi connection.");
  }

# If login button was clicked...
if(isset($_POST["insert"])) {
// prepare and bind
  $char_table_statement = $db->prepare("INSERT INTO Characters (character_name, first_appearance, status, aka) VALUES (?, ?, ?, ?)"); 
  $char_table_statement->bind_param("ssss", $name, $firstappearance, $status, $aka);
  $success = $char_table_statement->execute();
  $char_table_statement->close();
  
  if($success) {
      header("Location: admin_page.php");
      $_SESSION["admin_results"] = "New character inserted!";
      die();
  } else {
      $_SESSION["admin_results"] = "Something went wrong with your insert. Please try again.";
      header("Location: admin_page.php");
      die();
   }
}
?>