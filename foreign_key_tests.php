<?php 


# Database credentials
$dbuser = "cs4750mhk4g";
$dbpass = "aryastark";
$dbname = "cs4750mhk4g";

$db = new mysqli('stardock.cs.virginia.edu', $dbuser, $dbpass, $dbname);
if ($db->connect_error) {
    die("Could not connect to database. Check your wifi connection.");
  }

# FACTION 
$count = 0;
$result = $db->query("SELECT character_name FROM CharacterFaction WHERE NOT EXISTS (SELECT * FROM Characters WHERE CharacterFaction.character_name = Characters.character_name)");
while($row = mysqli_fetch_assoc($result)) {
    $count++;
    print_r($row["character_name"]);
}
echo "FACTIONS MISSING: $count\n";

# DEATHS
$count = 0;
$result = $db->query("SELECT character_name FROM CharacterDeath WHERE NOT EXISTS (SELECT * FROM Characters WHERE CharacterDeath.character_name = Characters.character_name)");
while($row = mysqli_fetch_assoc($result)) {
    $count++;
    print_r($row["character_name"]);
}
echo "DEATHS MISSING: $count\n";

# ALIASES
$count = 0;
$result = $db->query("SELECT character_name FROM CharacterAlias WHERE NOT EXISTS (SELECT * FROM Characters WHERE CharacterAlias.character_name = Characters.character_name)");
while($row = mysqli_fetch_assoc($result)) {
    $count++;
    print_r($row["character_name"]);
}
echo "ALIASES MISSING: $count\n";

# ALIASES
$count = 0;
$result = $db->query("SELECT character_name FROM CharacterAlias WHERE NOT EXISTS (SELECT * FROM Characters WHERE CharacterAlias.character_name = Characters.character_name)");
while($row = mysqli_fetch_assoc($result)) {
    $count++;
    print_r($row["character_name"]);
}
echo "ALIASES MISSING: $count\n";

# ACTORS
$count = 0;
$result = $db->query("SELECT character_name FROM CharacterActor WHERE NOT EXISTS (SELECT * FROM Characters WHERE CharacterActor.character_name = Characters.character_name)");
while($row = mysqli_fetch_assoc($result)) {
    $count++;
    print_r($row["character_name"]);
}
echo "ACTORS MISSING: $count\n";

# FIRST APPEARANCES
$count = 0;
$result = $db->query("SELECT * FROM Characters WHERE NOT EXISTS (SELECT * FROM Episode WHERE Characters.first_appearance = Episode.episode_name)");
while($row = mysqli_fetch_assoc($result)) {
    $count++;
    print_r($row);
}
echo "FIRST APPEARANCES MISSING: $count\n";


# CREATURE AFFILIATION
$count = 0;
$result = $db->query("SELECT * FROM Creature WHERE NOT EXISTS (SELECT * FROM Characters WHERE Creature.affiliation = Characters.character_name)");
while($row = mysqli_fetch_assoc($result)) {
    $count++;
    print_r($row);
}
echo "CREATURE AFFILIATIONS MISSING: $count\n";

# FACTION LEADER
$count = 0;
$result = $db->query("SELECT * FROM Faction WHERE NOT EXISTS (SELECT * FROM Characters WHERE Faction.leader_name = Characters.character_name)");
while($row = mysqli_fetch_assoc($result)) {
    $count++;
    print_r($row);
}
echo "FACTION LEADERS MISSING: $count\n";

# FACTION LEADER
$count = 0;
$result = $db->query("SELECT * FROM Faction WHERE NOT EXISTS (SELECT * FROM City WHERE Faction.capital = City.city_name)");
while($row = mysqli_fetch_assoc($result)) {
    $count++;
    print_r($row);
}
echo "FACTION CITIES MISSING: $count\n";

# CHARACTER FACTION 
$count = 0;
$result = $db->query("SELECT * FROM CharacterFaction WHERE NOT EXISTS (SELECT * FROM Faction WHERE CharacterFaction.faction_name = Faction.faction_name)");
while($row = mysqli_fetch_assoc($result)) {
    $count++;
    print_r($row);
}
echo "CHARACTER FACTIONS MISSING: $count\n";

# CITY REGION
$count = 0;
$result = $db->query("SELECT * FROM City WHERE NOT EXISTS (SELECT * FROM Region WHERE City.region = Region.name)");
while($row = mysqli_fetch_assoc($result)) {
    $count++;
    print_r($row);
}
echo "CITY REGIONS MISSING: $count\n";


?>