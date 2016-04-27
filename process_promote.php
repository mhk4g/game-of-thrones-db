<?php 
session_start();
ini_set('display_errors', 1);
include 'helpers.php';
mysqli_report(MYSQLI_REPORT_ALL);

if (isset($_SESSION["email_address"])) {
    $promoter_email = $_SESSION["email_address"];
}

if (isset($_SESSION["access_level"])) {
    $promoter_access_level = $_SESSION["access_level"];
}

if(isset($_POST["email"])) {
    $email = (string)$_POST["email"];
}
if(isset($_POST["confirm_email"])) {
    $confirmemail = (string)$_POST["confirm_email"];
}
if(isset($_POST["new_access_level"])) {
    $newaccesslevel = (string)$_POST["new_access_level"];
}

if ($newaccesslevel == "Khaleesi"):
    $newaccesslevelvalue = 1;
elseif ($newaccesslevel == "Lord"):
    $newaccesslevelvalue = 2;
elseif ($newaccesslevel == "Ser"):
    $newaccesslevelvalue = 3;
elseif ($newaccesslevel == "Peasant"):
    $newaccesslevelvalue = 4;
else:
    $_SESSION["admin_results"] = "Invalid access level entered. Check your spelling.";
    header("Location: admin_page.php");
    die();
endif;

if ($promoter_email == $email) {
    $_SESSION["admin_results"] = "Can't promote yourself, bro. Nice try.";
    header("Location: admin_page.php");
    die();
} elseif ($promoter_access_level > 1) {
    $_SESSION["admin_results"] = "You must be a Khaleesi to promote other users. You, sir, are no Khaleesi.";
    header("Location: admin_page.php");
    die();
}

# Database credentials
$dbuser = "cs4750mhk4g";
$dbpass = "aryastark";
$dbname = "cs4750mhk4g";

$db = new mysqli('stardock.cs.virginia.edu', $dbuser, $dbpass, $dbname);
if ($db->connect_error) {
    die("Could not connect to database. Check your wifi connection.");
}

if(isset($_POST["promote"]) && ($email == $confirmemail)) {
    $st2 = $db->prepare("UPDATE GOTUsers SET access_level=? WHERE email=? LIMIT 1");
    $st2->bind_param("is", $newaccesslevelvalue, $email);
    $result = $st2->execute();
 
  if ($result) {
      header("Location: admin_page.php");
      $_SESSION["admin_results"] = "Permissions updated!";
      die();
   }
} else {
      $_SESSION["admin_results"] = "Something went wrong with your delete. Check fields and try again.";
      header("Location: admin_page.php");
      die();
  }
   
?>