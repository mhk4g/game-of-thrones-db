<?php 
session_start();

# TEST DATA
// $_POST["user_input"] = "Stark";

$permission_code = "";

# Get login info from POST
if(isset($_POST["username"])) {
    $user = (string)$_POST["username"];
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
$HTTPresponse = array();    # <- This is where AJAX response data goes, as K/V pairs

# Sanitize input


# Log into database

# SELECT * from DBUsers where 

?>