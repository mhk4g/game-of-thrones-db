<?php 
session_start();
ini_set('display_errors', 1);
include 'helpers.php';
//mysqli_report(MYSQLI_REPORT_ALL);

$checkboxes = [];

if(isset($_POST["userinput"])) {
    $userinput = $_POST["userinput"];
    $matching_user_input = "%" . $userinput . "%";
}

if(isset($_POST["char_box"])) { $checkboxes["characters"] = $_POST["char_box"]; }
if(isset($_POST["faction_box"])) { $checkboxes["factions"] = $_POST["faction_box"]; }
if(isset($_POST["creature_box"])) { $checkboxes["creatures"] = $_POST["creature_box"]; }
if(isset($_POST["episode_box"])) { $checkboxes["episodes"] = $_POST["episode_box"]; }
if(isset($_POST["alias_box"])) { $checkboxes["aliases"] = $_POST["alias_box"]; }
if(isset($_POST["death_box"])) { $checkboxes["deaths"] = $_POST["death_box"]; }

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

$db = new mysqli('stardock.cs.virginia.edu', $dbuser, $dbpass, $dbname);
if ($db->connect_error) {
    die("Could not connect to database. Check your wifi connection.");
}

$HTTPResponse = [];


$p1 = "SELECT * FROM Characters ";
$p1 .= "LEFT JOIN CharacterActor ON CharacterActor.character_name = Characters.character_name ";
$p1 .= "INNER JOIN CharacterAlias ON CharacterAlias.character_name = Characters.character_name "; 
$p1 .= "INNER JOIN CharacterDeath ON CharacterDeath.character_name  = Characters.character_name  ";
$p1 .= "INNER JOIN CharacterFaction ON CharacterFaction.character_name = Characters.character_name ";
$p1 .= "WHERE Characters.character_name LIKE ? OR Characters.aka LIKE ?";

if (isset($checkboxes["characters"])):
    $char_search_stmt = $db->prepare($p1);
    $char_search_stmt->bind_param("ss", $matching_user_input, $matching_user_input);
    $char_search_stmt->execute();
    $metadata = mysqli_stmt_result_metadata($char_search_stmt);
    echo("<br><h1>" . mysqli_num_fields($metadata) . "<br></h1>");
    mysqli_stmt_bind_result($char_search_stmt, $char_name, $first_app, $char_status, $char_aka, $null1, $actor_name, $null2, $alias_name, $null3, $death_episode_name, $death_description, $null5, $faction_name);
    mysqli_stmt_store_result($char_search_stmt);
    
    if ($char_search_stmt->num_rows):
        
        $HTTPResponse[] = "<table border = \"1\" cellpadding = \"8\" width=\"100%\" align=\"center\" id=\"searchresulttext\">";
        $HTTPResponse[] = "<col width=15%><col width=15%><col width=5%><col width=15%><col width=35%>";
        $HTTPResponse[] = "<caption id=\"tablecaption\"><h1>Characters</h1></caption>";
        $HTTPResponse[] = "<tr align = \"center\">";
        $HTTPResponse[] = "<th>Name</th>";
        $HTTPResponse[] = "<th>First appearance</th>";
        $HTTPResponse[] = "<th>Status</th>";
        $HTTPResponse[] = "<th>Factions</th>";
        $HTTPResponse[] = "<th>Also known as...</th></tr>";
        
        while($char_search_stmt->fetch()) {
            
            // ALIASES
            $aliases = "";
            if (isset($checkboxes["aliases"])):
                $aliases .= $alias_name . "\n";
                if($aliases == "") { $aliases = "No aliases"; }
            endif;
            $names_and_aliases = "<span id='alias' title='$aliases'>$char_name</span>";
            
            // FACTIONS
            $factions = "";
            $faction_search_stmt = $db->prepare("SELECT faction_name from CharacterFaction where character_name =?");
            $faction_search_stmt->bind_param("s", $char_name);
            $faction_search_stmt->execute();
            mysqli_stmt_bind_result($faction_search_stmt, $faction_result);
            if (mysqli_stmt_result_metadata($faction_search_stmt)) {
                while ($faction_search_stmt->fetch())
                {
                    $factions .= $faction_result . "<br>";
                }
            }
            if($factions == "") { $factions = "None"; }
            
            // DEATHS
            $deathlabel = "";
            if(isset($checkboxes["deaths"])):
                $death_search_stmt = $db->prepare("SELECT episode_name, description from CharacterDeath where character_name =?");
                $death_search_stmt->bind_param("s", $char_name);
                $death_search_stmt->execute();
                mysqli_stmt_bind_result($death_search_stmt, $death_ep, $death_desc);
                if (mysqli_stmt_result_metadata($death_search_stmt)) {
                    while ($death_search_stmt->fetch())
                    {
                        $deathlabel .= 'Dies in: ' . $death_ep . "\n" . $death_desc;
                    }
                }
            endif;
            $alive = "<span id=\"$char_status\" title=\"$deathlabel\">$char_status</span>";
            
            // BIO
            $bio = str_replace("[SPOILER]", "<span class=\"spoiler\">[SPOILER]</span>", $char_aka);
            $HTTPResponse[] = "<tr align=\"center\"><td>$names_and_aliases</td><td>$first_app</td><td>$alive</td><td>$factions</td><td>$bio</td></tr>";
        }
        
        $HTTPResponse[] = "</table><br><br><br>";
    endif;
endif;


if (isset($checkboxes["factions"])):
    
    $faction_search_stmt2 = $db->prepare("SELECT * FROM Faction WHERE faction_name LIKE ?");
    $faction_search_stmt2->bind_param("s", $matching_user_input);
    $faction_search_stmt2->execute();
    mysqli_stmt_bind_result($faction_search_stmt2, $fact_name, $fact_capital, $fact_leader);
    mysqli_stmt_store_result($faction_search_stmt2);
    
    if ($faction_search_stmt2->num_rows):
        
        $HTTPResponse[] = "<table border = \"1\" cellpadding = \"8\" width=\"100%\" align=\"center\" id=\"searchresulttext\">";
        $HTTPResponse[] = "<caption id=\"tablecaption\"><h1>Factions</h1></caption>";
        $HTTPResponse[] = "<tr align = \"center\">";    
        $HTTPResponse[] = "<th>Name</th>";
        $HTTPResponse[] = "<th>Based in</th>";
        $HTTPResponse[] = "<th>Leader</th></tr>";
        
        while($faction_search_stmt2->fetch()) {
            $HTTPResponse[] = "<tr align=\"center\"><td>$fact_name</td><td>$fact_capital</td><td>$fact_leader</td></tr>";
        }
        
        $HTTPResponse[] = "</table><br><br><br>";    
    endif;
endif;


if (isset($checkboxes["creatures"])):
    
    $creature_search_stmt = $db->prepare("SELECT * FROM Creature WHERE creature_name LIKE ?");
    $creature_search_stmt->bind_param("s", $matching_user_input);
    $creature_search_stmt->execute();
    mysqli_stmt_bind_result($creature_search_stmt, $creature_name, $creature_species, $creature_affiliation);
    mysqli_stmt_store_result($creature_search_stmt);
    
    if ($creature_search_stmt->num_rows):
        
        $HTTPResponse[] = "<table border = \"1\" cellpadding = \"8\" width=\"100%\" align=\"center\" id=\"searchresulttext\">";
        $HTTPResponse[] = "<caption id=\"tablecaption\"><h1>Creatures</h1></caption>";
        $HTTPResponse[] = "<tr align = \"center\">";    
        $HTTPResponse[] = "<th>Name</th>";
        $HTTPResponse[] = "<th>Species</th>";
        $HTTPResponse[] = "<th>Affiliation</th></tr>";
        
        while($creature_search_stmt->fetch()) {
            $HTTPResponse[] = "<tr align=\"center\"><td>$creature_name</td><td>$creature_species</td><td>$creature_affiliation</td></tr>";
        }
        
        $HTTPResponse[] = "</table><br><br><br>";    
    endif;
endif;


if (isset($checkboxes["episodes"])):
    
    $episode_search_stmt = $db->prepare("SELECT * FROM Episode WHERE episode_name LIKE ? ORDER BY season ASC");
    $episode_search_stmt->bind_param("s", $matching_user_input);
    $episode_search_stmt->execute();
    mysqli_stmt_bind_result($episode_search_stmt, $episode_name, $episode_season, $episode_number);
    mysqli_stmt_store_result($episode_search_stmt);
    
    if ($episode_search_stmt->num_rows):
        
        $HTTPResponse[] = "<table border = \"1\" cellpadding = \"8\" width=\"100%\" align=\"center\" id=\"searchresulttext\">";
        $HTTPResponse[] = "<caption id=\"tablecaption\"><h1>Episodes</h1></caption>";
        $HTTPResponse[] = "<tr align = \"center\">";    
        $HTTPResponse[] = "<th>Name</th>";
        $HTTPResponse[] = "<th>Season</th>";
        $HTTPResponse[] = "<th>Number</th></tr>";
        
        while($episode_search_stmt->fetch()) {
            $HTTPResponse[] = "<tr align=\"center\"><td>$episode_name</td><td>$episode_season</td><td>$episode_number</td></tr>";
        }
        
        $HTTPResponse[] = "</table><br><br><br>";    
    endif;
endif;


foreach ($HTTPResponse as $h) {
    echo($h);
}

if (empty($HTTPResponse)) {
    echo("<br><br><h3>No results</h3>");
}

?>
