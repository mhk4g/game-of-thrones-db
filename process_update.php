<?php 
session_start();

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

# Database credentials
$dbuser = "cs4750mhk4g";
$dbpass = "aryastark";
$dbname = "cs4750mhk4g";

$db = new mysqli('stardock.cs.virginia.edu', $dbuser, $dbpass, $dbname);
if ($db->connect_error) {
    die("Could not connect to database: " . $db->connect_error);
  }

# If login button was clicked...
if(isset($_POST["update"])) {
  $result1 = $db->query("UPDATE Characters SET character_name='$newname', first_appearance='$firstappearance', status='$status', aka='$aka' WHERE character_name='$oldname'");
  $result2 = $db->query("UPDATE CharacterFaction SET character_name='$newname' WHERE character_name='$oldname'");
  $result3 = $db->query("UPDATE CharacterActor SET character_name='$newname' WHERE character_name='$oldname'");
  $result4 = $db->query("UPDATE CharacterAlias SET character_name='$newname' WHERE character_name='$oldname'");
  $result5 = $db->query("UPDATE CharacterDeath SET character_name='$newname' WHERE character_name='$oldname'");
  
  header("Location: admin_page.php");
  $_SESSION["admin_results"] = [$result1, $result2, $result3, $result4, $result5];
  } else {
      $_SESSION["error"] = "Something went wrong with your update. Check character name.";
  }
?>