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
$faction_count = 0;
$result = $db->query("SELECT character_name FROM CharacterFaction WHERE NOT EXISTS (SELECT * FROM Characters WHERE CharacterFaction.character_name = Characters.character_name)");
while($row = mysqli_fetch_assoc($result)) {
    $faction_count++;
    print_r($row["character_name"]);
}
echo "FACTIONS MISSING: $faction_count\n";

# DEATHS
$death_count = 0;
$result = $db->query("SELECT character_name FROM CharacterDeath WHERE NOT EXISTS (SELECT * FROM Characters WHERE CharacterDeath.character_name = Characters.character_name)");
while($row = mysqli_fetch_assoc($result)) {
    $death_count++;
    print_r($row["character_name"]);
}
echo "DEATHS MISSING: $death_count\n";

# ALIASES
$alias_count = 0;
$result = $db->query("SELECT character_name FROM CharacterAlias WHERE NOT EXISTS (SELECT * FROM Characters WHERE CharacterAlias.character_name = Characters.character_name)");
while($row = mysqli_fetch_assoc($result)) {
    $alias_count++;
    print_r($row["character_name"]);
}
echo "ALIASES MISSING: $alias_count\n";

# ALIASES
$alias_count = 0;
$result = $db->query("SELECT character_name FROM CharacterAlias WHERE NOT EXISTS (SELECT * FROM Characters WHERE CharacterAlias.character_name = Characters.character_name)");
while($row = mysqli_fetch_assoc($result)) {
    $alias_count++;
    print_r($row["character_name"]);
}
echo "ALIASES MISSING: $alias_count\n";

# ACTORS
$actor_count = 0;
$result = $db->query("SELECT character_name FROM CharacterActor WHERE NOT EXISTS (SELECT * FROM Characters WHERE CharacterActor.character_name = Characters.character_name)");
while($row = mysqli_fetch_assoc($result)) {
    $actor_count++;
    print_r($row["character_name"]);
}
echo "ACTORS MISSING: $actor_count\n";

# first_appearances
$appearance_count = 0;
$result = $db->query("SELECT * FROM Characters WHERE NOT EXISTS (SELECT * FROM Episode WHERE Characters.first_appearance = Episode.episode_name)");
while($row = mysqli_fetch_assoc($result)) {
    $appearance_count++;
    print_r($row);
}
echo "FIRST APPEARANCES MISSING: $appearance_count\n";


# first_appearances
$appearance_count = 0;
$result = $db->query("SELECT * FROM Characters WHERE NOT EXISTS (SELECT * FROM Episode WHERE Characters.first_appearance = Episode.episode_name)");
while($row = mysqli_fetch_assoc($result)) {
    $appearance_count++;
    print_r($row);
}
echo "FIRST APPEARANCES MISSING: $appearance_count\n";



?>