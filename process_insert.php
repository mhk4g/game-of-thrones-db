<?php 
session_start();

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

# Database credentials
$dbuser = "cs4750mhk4g";
$dbpass = "aryastark";
$dbname = "cs4750mhk4g";

$db = new mysqli('stardock.cs.virginia.edu', $dbuser, $dbpass, $dbname);
if ($db->connect_error) {
    die("Could not connect to database: " . $db->connect_error);
  }

# If login button was clicked...
if(isset($_POST["insert"])) {
// prepare and bind
  $char_table_statement = $db->prepare("INSERT INTO Characters (character_name, first_appearance, status, aka) VALUES (?, ?, ?, ?)"); 
  $char_table_statement->bind_param("ssss", $name, $firstappearance, $status, $aka);
  $char_table_statement->execute();
  $char_table_statement->close();
  
  header("Location: admin_page.php");
  $_SESSION["admin_results"] = "New character inserted!";
  } else {
      $_SESSION["error"] = "Something went wrong with your insert. Please try again.";
      header("Location: admin_page.php");
  }
?>