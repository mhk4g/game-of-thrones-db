<?php 
session_start();

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

# Database credentials
$dbuser = "cs4750mhk4g";
$dbpass = "aryastark";
$dbname = "cs4750mhk4g";

$db = new mysqli('stardock.cs.virginia.edu', $dbuser, $dbpass, $dbname);
if ($db->connect_error) {
    die("Could not connect to database: " . $db->connect_error);
  }

# If login button was clicked...
if(isset($_POST["delete"]) && ($confirmdelete == "DELETE") && ($name == $confirmname)) {
  $result1 = $db->query("DELETE FROM Characters WHERE character_name='$name'");
  $result2 = $db->query("DELETE FROM CharacterFaction WHERE character_name='$name'");
  $result3 = $db->query("DELETE FROM CharacterActor WHERE character_name='$name'");
  $result4 = $db->query("DELETE FROM CharacterAlias WHERE character_name='$name'");
  $result5 = $db->query("DELETE FROM CharacterDeath WHERE character_name='$name'");
  
  header("Location: admin_page.php");
  $_SESSION["admin_results"] = "Delete succeeded!";
  } else {
      $_SESSION["error"] = "Something went wrong with your delete. Check fields and try again.";
  }
?>