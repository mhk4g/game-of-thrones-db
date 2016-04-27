<?php 
session_start();
ini_set('display_errors', 1);
include 'helpers.php';
mysqli_report(MYSQLI_REPORT_NONE);

# Get login info from POST

if(isset($_POST["email"])) {
    $email = (string)$_POST["email"];
}
if(isset($_POST["confirm_email"])) {
    $confirmemail = (string)$_POST["confirm_email"];
}
if(isset($_POST["new_access_level"])) {
    $newaccesslevel = (string)$_POST["new_access_level"];
}

$newaccesslevelvalue = "";

if $newaccesslevel == "Khaleesi":
    $newaccesslevelvalue = "1";
elseif ($newaccesslevel == "Lord"):
    $newaccesslevelvalue = "2";
elseif ($newaccesslevel == "Ser"):
    $newaccesslevelvalue = "3";
elseif ($newaccesslevel == "Peasant"):
    $newaccesslevelvalue = "4";
else:
    $_SESSION["admin_results"] = "Invalid access level entered. Check your spelling.";
    header("Location: admin_page.php");
    }
endif;    

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
    die("Could not connect to database: " . $db->connect_error);
}

# If login button was clicked...
if(isset($_POST["promote"]) && ($email == $confirmemail)) {
  $st1 = $db->prepare("UPDATE GOTUsers SET access_level=? WHERE email=?"); 
  $st1->bind_param("ss", $newaccesslevelvalue, $email);
  $st1->execute();

  if (mysqli_stmt_get_result)
  header("Location: admin_page.php");
  $_SESSION["admin_results"] = "Permissions for !";
  } else {
      $_SESSION["admin_results"] = "Something went wrong with your delete. Check fields and try again.";
      header("Location: admin_page.php");
  }
?>