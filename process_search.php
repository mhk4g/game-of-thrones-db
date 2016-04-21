<?php 
ini_set('display_errors', 1);

$checkboxes = [];

if(isset($_POST["userinput"])) {
    $userinput = $_POST["userinput"];
}

if(isset($_POST["char_box"])) { $checkboxes["characters"] = $_POST["char_box"]; }
if(isset($_POST["faction_box"])) { $checkboxes["factions"] = $_POST["faction_box"]; }
if(isset($_POST["creature_box"])) { $checkboxes["creatures"] = $_POST["creature_box"]; }
if(isset($_POST["episode_box"])) { $checkboxes["episodes"] = $_POST["episode_box"]; }

$permission_code = 4;

# Store user type in session variable
if(isset($_SESSION["user_type"])) {
    $permission_code = (string)$_SESSION["user_type"];
}

# Database credentials
$dbuser = "cs4750mhk4g";
$dbpass = "aryastark";
$dbname = "cs4750mhk4g";
$HTTPresponse = array();    # <- This is where AJAX response data goes, as K/V pairs

$db = new mysqli('stardock.cs.virginia.edu', $dbuser, $dbpass, $dbname);
if ($db->connect_error) {
    die("Could not connect to database: " . $db->connect_error);
  }

$HTTPResponse = [];

if ($checkboxes["characters"] == true):
    $result = $db->query("SELECT * FROM Characters WHERE character_name LIKE'%$userinput%' UNION SELECT * FROM Characters WHERE aka LIKE'%$userinput%'");
    if (mysqli_num_rows($result) > 0): 
        $result_array = [];
        while ($data = $result->fetch_array())
        {
            $result_array[] = $data;
        }

        $HTTPResponse[] = "<table border = \"1\" cellpadding = \"8\" width=\"100%\" align=\"center\" id=\"searchresulttext\">";
        $HTTPResponse[] = "<col width=20%><col width=20%><col width=15%><col width=45%>";
        $HTTPResponse[] = "<caption id=\"tablecaption\"><h1>Characters</h1></caption>";
        $HTTPResponse[] = "<tr align = \"center\">";
        $HTTPResponse[] = "<th style=\"width:40px\">Name</th>";
        $HTTPResponse[] = "<th style=\"width:40px\">First appearance</th>";
        $HTTPResponse[] = "<th style=\"width:40px\">Status</th>";
        $HTTPResponse[] = "<th style=\"width:40px\">Also known as...</th></tr>";

        foreach ($result_array as $r) {
            $alive = "<td id=\"$r[2]\">$r[2]</td>";
            $bio = str_replace("[SPOILER]", "<span class=\"spoiler\">[SPOILER]</span>", $r[3]);
            $HTTPResponse[] = "<tr align=\"center\"><td>$r[0]</td><td>$r[1]</td>$alive<td>$bio</td></tr>";
        }

        $HTTPResponse[] = "</table><br><br><br>";
    endif;    
endif;

if ($checkboxes["factions"] == true):
    $result = $db->query("SELECT * FROM Faction WHERE faction_name LIKE'%$userinput%'");
    if (mysqli_num_rows($result) > 0):
        $result_array = [];
        while ($data = $result->fetch_array())
        {
            $result_array[] = $data;
        }

        $HTTPResponse[] = "<table border = \"1\" cellpadding = \"8\" width=\"100%\" align=\"center\" id=\"searchresulttext\">";
        $HTTPResponse[] = "<caption id=\"tablecaption\"><h1>Factions</h1></caption>";
        $HTTPResponse[] = "<tr align = \"center\">";    
        $HTTPResponse[] = "<th style=\"width:40px\">Name</th>";
        $HTTPResponse[] = "<th style=\"width:40px\">Based in</th>";
        $HTTPResponse[] = "<th style=\"width:40px\">Leader</th></tr>";

        foreach ($result_array as $r) {
            $HTTPResponse[] = "<tr align=\"center\"><td>$r[0]</td><td>$r[1]</td><td>$r[2]</td></tr>";
        }

        $HTTPResponse[] = "</table><br><br><br>";    
    endif;
endif;

foreach ($HTTPResponse as $h) {
    echo($h);
    }

?>
