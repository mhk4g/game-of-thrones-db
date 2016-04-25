<?php 
session_start();
ini_set('display_errors', 1);
include 'helpers.php';

# Get login info from POST

if(isset($_POST["name"])) {
    $name = (string)$_POST["name"];
}
if(isset($_POST["confirm_name"])) {
    $confirmname = (string)$_POST["confirm_name"];
}
if(isset($_POST["confirm_delete"])) {
    $confirmdelete = (string)$_POST["confirm_delete"];
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
    die("Could not connect to database: " . $db->connect_error);
  }

# If login button was clicked...
if(isset($_POST["delete"]) && ($confirmdelete == "DELETE") && ($name == $confirmname)) {
  $st1 = $db->prepare("DELETE FROM Characters WHERE character_name=?"); 
  $st2 = $db->prepare("DELETE FROM CharacterFaction WHERE character_name=?");
  $st3 = $db->prepare("DELETE FROM CharacterActor WHERE character_name=?");
  $st4 = $db->prepare("DELETE FROM CharacterAlias WHERE character_name=?");
  $st5 = $db->prepare("DELETE FROM CharacterDeath WHERE character_name=?");
  $st1->bind_param("s", $name);
  $st2->bind_param("s", $name);
  $st3->bind_param("s", $name);
  $st4->bind_param("s", $name);
  $st5->bind_param("s", $name);
  $st1->execute();
  $st2->execute();
  $st3->execute();
  $st4->execute();
  $st5->execute();

  header("Location: admin_page.php");
  $_SESSION["admin_results"] = "Delete succeeded!";
  } else {
      $_SESSION["admin_results"] = "Something went wrong with your delete. Check fields and try again.";
      header("Location: admin_page.php");
  }
?>