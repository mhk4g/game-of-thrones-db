<?php 
session_start();
ini_set('display_errors', 1);
include 'helpers.php';
mysqli_report(MYSQLI_REPORT_OFF);

$permission_code = 5;

# Store user type in session variable
if(isset($_SESSION["access_level"])) {
    $permission_code = (string)$_SESSION["access_level"];
} 

if ($permission_code > 3) {
    $_SESSION["admin_results"] = "Exporting by Peasants is forbidden. Shoo!";
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
    die("Could not connect to database. Check your wifi connection.");
  }

$jsonexport = [];
$csvexport = [];
$readable = [];
$all_results = [];

foreach ($tables as $tablename) {
    $all_results[] = $db->query("SELECT * FROM $tablename");
}

foreach ($all_results as $result) {

    while($fetched = $result->fetch_row()):
        $jsonexport[] = json_encode($fetched);
        $csvexport[] = implode(",", $fetched);
        $readable[] = $fetched;
    endwhile;
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