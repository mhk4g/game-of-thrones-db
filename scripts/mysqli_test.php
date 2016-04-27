<?php 
session_start();
ini_set('display_errors', 1);
include 'helpers.php';
// mysqli_report(MYSQLI_REPORT_OFF);

$user = "mhk4g@virginia.edu";
$password = "matt";

# Database credentials
$dbuser = "cs4750mhk4g";
$dbpass = "aryastark";
$dbname = "cs4750mhk4g";
$hashedpw = hash("md5", $password);

$db = new mysqli('stardock.cs.virginia.edu', $dbuser, $dbpass, $dbname);
if ($db->connect_error) {
    die("Could not connect to database. Check your wifi connection.");
  }

$loginstatement = $db->prepare("SELECT email, access_level from GOTUsers where email=? AND password=?");
$loginstatement->bind_param("ss", $user, $hashedpw);
$loginstatement->execute();
mysqli_stmt_bind_result($loginstatement, $user_result, $access_level_result);

echo("PRE: \n");
echo($user_result . "\n");
echo($access_level_result . "\n");

$result = $loginstatement->fetch();

echo("Result: $result");
echo("POST: \n");
echo($user_result . "\n");
echo($access_level_result . "\n");

?>