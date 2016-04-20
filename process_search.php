<?php 
ini_set('display_errors', 1);

$userinput = "targaryen";

# TEST DATA
// $_SESSION["user_name"] = "Matt";
if(isset($_POST["userinput"])) {
    $userinput = $_POST["userinput"];
}

$permission_code = "";

# Store user type in session variable
if(isset($_SESSION["user_type"])) {
    $permission_code = (string)$_SESSION["user_type"];
}

# Database credentials
$dbuser = "cs4750mhk4g" . $permission_code;
$dbpass = "aryastark";
$dbname = "cs4750mhk4g";
$HTTPresponse = array();    # <- This is where AJAX response data goes, as K/V pairs

$db = new mysqli('stardock.cs.virginia.edu', $dbuser, $dbpass, $dbname);
if ($db->connect_error) {
    die("Could not connect to database: " . $db->connect_error);
  }

$HTTPResponse = [];
$result = $db->query("SELECT * FROM Characters WHERE name LIKE'%$userinput%'");
$result_array = [];
while ($data = $result->fetch_array())
{
    $result_array[] = $data;
}

$HTTPResponse[] = "<table border = \"1\" cellpadding = \"8\" width=\"100%\" align=\"center\" id=\"searchresulttext\">";
$HTTPResponse[] = "<caption id=\"tablecaption\"><h1>Search results</h1></caption>";
$HTTPResponse[] = "<tr align = \"center\">";
$HTTPResponse[] = "<th style=\"width:40px\">Name</th>";
$HTTPResponse[] = "<th style=\"width:40px\">First appearance</th>";
$HTTPResponse[] = "<th style=\"width:40px\">Status</th></tr>";

foreach ($result_array as $r) {
    $HTTPResponse[] = "<tr align=\"center\"><td>$r[0]</td><td>$r[1]</td><td>$r[2]</td></tr>";
}

$HTTPResponse[] = "<br><br><br><br><br>";

foreach ($HTTPResponse as $h) {
    echo($h);
    }

?>
