<?php 

$dbuser = "cs4750mhk4g";
$dbpass = "aryastark";
$dbname = "cs4750mhk4g";
$success = TRUE;

$db = new mysqli('stardock.cs.virginia.edu', $dbuser, $dbpass, $dbname);
if ($db->connect_error) {
    die("Could not connect to database: " . $db->connect_error);
  }
  
# SETUP
$SQLcommands = [];
$SQLcommands[] = "SET FOREIGN_KEY_CHECKS = 0";

# CLEAR TABLES
// $SQLcommands[] = "TRUNCATE TABLE Character";
// $SQLcommands[] = "TRUNCATE TABLE City";
// $SQLcommands[] = "TRUNCATE TABLE Creature";
// $SQLcommands[] = "TRUNCATE TABLE Death";
// $SQLcommands[] = "TRUNCATE TABLE Episode";
// $SQLcommands[] = "TRUNCATE TABLE Event";
// $SQLcommands[] = "TRUNCATE TABLE Faction";
// $SQLcommands[] = "TRUNCATE TABLE Region";

# INSERT MAKERS
$SQLcommands[] = "INSERT INTO Characters (name, actor_name, faction, first_appearance) VALUES ('a', 'b', 'c', 'd')";

# RUN ALL SQL COMMANDS
foreach($SQLcommands as $c):
  if(!mysqli_query($db, $c)):
    $success = FALSE;
    echo("Error:" . mysqli_error($db));
  endif;
endforeach;

if($success):
  echo("Database initialization complete!");
else:
  echo("Yeah, something went wrong.");
endif;
  ?>