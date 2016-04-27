<?php 
session_start();
ini_set('display_errors', 1);
include 'helpers.php';
// mysqli_report(MYSQLI_REPORT_OFF);

$checkboxes = [];

if(isset($_POST["userinput"])) {
    $userinput = $_POST["userinput"];
    $matching_user_input = '%' . $userinput . '%';
}

if(isset($_POST["char_box"])) { $checkboxes["characters"] = $_POST["char_box"]; }
if(isset($_POST["faction_box"])) { $checkboxes["factions"] = $_POST["faction_box"]; }
if(isset($_POST["creature_box"])) { $checkboxes["creatures"] = $_POST["creature_box"]; }
if(isset($_POST["episode_box"])) { $checkboxes["episodes"] = $_POST["episode_box"]; }

# Store user type in session variable
$permission_code = 5;
if(isset($_SESSION["access_level"])) {
    $permission_code = (string)$_SESSION["access_level"];
}

# Database credentials
$dbuser = "cs4750mhk4g" . convert_access_level_to_login_suffix($permission_code);
if ($dbuser == "cs4750mhk4g") {
    $dbpass = "aryastark";
} else {
    $dbpass = "spring2016";
}
$dbname = "cs4750mhk4g";
$HTTPresponse = array();    # <- This is where AJAX response data goes, as K/V pairs
$num_results = 0;

$db = new mysqli('stardock.cs.virginia.edu', $dbuser, $dbpass, $dbname);
if ($db->connect_error) {
    die("Could not connect to database: " . $db->connect_error);
  }

$HTTPResponse = [];
$char_name, $first_app, $char_status, $char_aka;

if ($checkboxes["characters"] == true):
    $char_search_stmt = $db->prepare("SELECT * from Characters where character_name LIKE ? UNION SELECT * FROM Characters where aka like ?");
    $char_search_stmt->bind_param("ss", $matching_user_input, $matching_user_input);
    $char_search_stmt->execute();
    mysqli_stmt_bind_result($char_search_stmt, $char_name, $first_app, $char_status, $char_aka);
    
    if (mysqli_stmt_result_metadata($char_search_stmt)): 

        $HTTPResponse[] = "<table border = \"1\" cellpadding = \"8\" width=\"100%\" align=\"center\" id=\"searchresulttext\">";
        $HTTPResponse[] = "<col width=15%><col width=15%><col width=5%><col width=15%><col width=35%>";
        $HTTPResponse[] = "<caption id=\"tablecaption\"><h1>Characters</h1></caption>";
        $HTTPResponse[] = "<tr align = \"center\">";
        $HTTPResponse[] = "<th>Name</th>";
        $HTTPResponse[] = "<th>First appearance</th>";
        $HTTPResponse[] = "<th>Status</th>";
        $HTTPResponse[] = "<th>Factions</th>";
        $HTTPResponse[] = "<th>Also known as...</th></tr>";

        $while($r = $char_search_stmt->fetch()) {
            $num_results++;
            
            // ALIASES
            $temp_name = '%' . $char_name . '%';
            $aliases = "";
            $alias_search_stmt = $db->prepare("SELECT alias_name from CharacterAlias where character_name LIKE ?");
            $alias_search_stmt->bind_param("s", $temp_name);
            $alias_search_stmt->execute();
            mysqli_stmt_bind_result($alias_search_stmt, $alias_result);
            
            if(mysqli_stmt_result_metadata($alias_search_stmt)) {
                while ($alias_search_stmt->fetch())
                    {
                        $aliases .= $alias_result . "\n";
                    }
            }
            if($aliases == "") { $aliases = "No aliases"; }
            $names_and_aliases = "<span id='alias' title='$aliases'>$char_name</span>";
            
            // FACTIONS
            $factions = "";
            $faction_search_stmt = $db->prepare("SELECT faction_name from CharacterFaction where character_name LIKE ?");
            $faction_search_stmt->bind_param("s", $temp_name);
            $faction_search_stmt->execute();
            mysqli_stmt_bind_result($faction_search_stmt, $faction_result);
            if (mysqli_stmt_result_metadata($faction_search_stmt)) {
                while ($faction_search_stmt->fetch())
                {
                    $factions .= $faction_result . "<br>";
                }
            }
            if($factions == "") { $factions = "None"; }
            #TODO: INSERT HOVER DEATH DETAILS
            $alive = "<td id=\"$char_status\">$char_status</td>"; 

            // BIO
            $bio = str_replace("[SPOILER]", "<span class=\"spoiler\">[SPOILER]</span>", $char_aka);
            $HTTPResponse[] = "<tr align=\"center\"><td>$names_and_aliases</td><td>$first_app</td>$alive<td>$factions</td><td>$bio</td></tr>";
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
            $num_results++;
            $HTTPResponse[] = "<tr align=\"center\"><td>$r[0]</td><td>$r[1]</td><td>$r[2]</td></tr>";
        }

        $HTTPResponse[] = "</table><br><br><br>";    
    endif;
endif;

foreach ($HTTPResponse as $h) {
    echo($h);
    }
    
if ($num_results < 1) {
    echo "<h2>No results</h2>";
}

?>
