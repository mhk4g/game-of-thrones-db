<?php 
session_start();
ini_set('display_errors', 1);
include 'helpers.php';
mysqli_report(MYSQLI_REPORT_ALL);

echo "wtf";
echo "wtf";

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
endif;

echo "is going";

if (($promoter_email == $email) && ($promoter_email == $confirm_email)) {
    $_SESSION["admin_results"] = "Can't promote yourself, bro. Nice try.";
    header("Location: admin_page.php");
} elseif ($promoter_access_level > 1) {
    $_SESSION["admin_results"] = "You must be a Khaleesi to promote other users. You, sir, are no Khaleesi.";
    header("Location: admin_page.php");
}

echo "wrong?";
# Database credentials
$dbuser = "cs4750mhk4g";
$dbpass = "aryastark";
$dbname = "cs4750mhk4g";

$db = new mysqli('stardock.cs.virginia.edu', $dbuser, $dbpass, $dbname);
if ($db->connect_error) {
    die("Could not connect to database. Check your wifi connection.");
}

echo "Attempting promotion...";

# If login button was clicked...
// $newaccesslevelvalue = 4;
// $confirmemail = "newguy@gmail.com";
// $email = "newguy@gmail.com";

mysqli_refresh($db, MYSQLI_REFRESH_LOG);

if(isset($_POST["promote"]) && ($email == $confirmemail)) {
    $st2 = $db->prepare("UPDATE GOTUsers SET access_level=? WHERE user_email_address=?");
    $st2->bind_param("is", $newaccesslevelvalue, $email);
    $st2->execute();
    mysqli_stmt_reset($st2);
    mysqli_stmt_free_result($st2);
    mysqli_stmt_close($st2);
 
  if (false) {
      header("Location: admin_page.php");
      $_SESSION["admin_results"] = "Permissions updated!";
  } else {
    //   $_SESSION["admin_results"] = "Something went wrong with your delete. Check fields and try again.";
    //   header("Location: admin_page.php");
    echo "problem";
  }
}
?>