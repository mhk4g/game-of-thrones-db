<?php 
session_start();
ini_set('display_errors', 1);
include 'helpers.php';
// mysqli_report(MYSQLI_REPORT_OFF);

# Get login info from POST

if(isset($_POST["old_name"])) {
    $oldname = (string)$_POST["old_name"];
}
if(isset($_POST["new_name"])) {
    $newname = (string)$_POST["new_name"];
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
if(isset($_POST["update"])) {
  $st1 = $db->prepare("UPDATE Characters SET character_name= ?, first_appearance= ?, status= ?, aka= ? WHERE character_name= ?"); 
  $st2 = $db->prepare("UPDATE CharacterFaction SET character_name=? WHERE character_name=?");
  $st3 = $db->prepare("UPDATE CharacterActor SET character_name=? WHERE character_name=?");
  $st4 = $db->prepare("UPDATE CharacterAlias SET character_name=? WHERE character_name=?");
  $st5 = $db->prepare("UPDATE CharacterDeath SET character_name=? WHERE character_name=?");
  $st1->bind_param("sssss", $newname, $firstappearance, $status, $aka, $oldname);
  $st2->bind_param("ss", $newname, $oldname);
  $st3->bind_param("ss", $newname, $oldname);
  $st4->bind_param("ss", $newname, $oldname);
  $st5->bind_param("ss", $newname, $oldname);
  $st1->execute();
  $st2->execute();
  $st3->execute();
  $st4->execute();
  $st5->execute();
  
  header("Location: admin_page.php");
  $_SESSION["admin_results"] = "Update succeeded!";
  } else {
      $_SESSION["admin_results"] = "Something went wrong with your update. Check character name.";
      header("Location: admin_page.php");
  }
?>