<?php 
session_start();
ini_set('display_errors', 1);
mysqli_report(MYSQLI_REPORT_OFF);

$permission_code = 5;

# Store user type in session variable
if(isset($_SESSION["access_level"])) {
    $permission_code = (string)$_SESSION["access_level"];
} 

if ($permission_code > 3) {
    $_SESSION["admin_results"] = "Invalid access level entered. Check your spelling.";
    header("Location: admin_page.php");
}

# Database credentials
$dbuser = "cs4750mhk4g";
$dbpass = "aryastark";
$dbname = "cs4750mhk4g";
$jsonexport = array();
$csvexport = array();
$readable = array();

$tables = ["Characters", "CharacterActor", "CharacterAlias", "CharacterDeath", "CharacterFaction", "City", "Creature Episode", "Faction", "Region"];

$db = new mysqli('stardock.cs.virginia.edu', $dbuser, $dbpass, $dbname);
if ($db->connect_error) {
    die("Could not connect to database: " . $db->connect_error);
  }

$jsonexport = [];
$csvexport = [];
$readable = [];
$all_results = [];

foreach ($tables as $tablename) {
    $all_results[] = $db->query("SELECT * FROM $tablename");
}

foreach ($all_results as $result) {
    $fetched = $result->fetch_all();
    foreach ($fetched as $f) {
        $jsonexport[] = json_encode($f);
        $csvexport[] = implode(",", $f);
        $readable[] = $f;
    }
}

echo "<pre>JSON<br><br>-------------<br><br>";
foreach ($jsonexport as $entry) {
    echo $entry . "<br>";
}

echo "<br><br>CSV<br><br>-------------<br><br>";
foreach ($csvexport as $entry) {
    echo $entry . "<br>";
}

echo "<br><br>PHP Readable<br><br>-------------<br><br>";
print_r($readable);

?>