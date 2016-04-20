<?php 

// ACCOUNT CREATION

$dbuser = "cs4750mhk4g";
$dbpass = "aryastark";
$dbname = "cs4750mhk4g";
$success = TRUE;

$db = new mysqli('stardock.cs.virginia.edu', $dbuser, $dbpass, $dbname);
if ($db->connect_error) {
    die("Could not connect to database: " . $db->connect_error);
  }

$account_insert = [];
$mattpw = hash("md5", "matt");
$brittanypw = hash("md5", "brittany");
$agnespw = hash("md5", "agnes");
$mollypw = hash("md5", "molly");
$character_insert[] = "INSERT INTO GOTUsers (email, password, access_level) VALUES ('mes3fn@virginia.edu', '$mollypw', '4')";
$character_insert[] = "INSERT INTO GOTUsers (email, password, access_level) VALUES ('mhk4g@virginia.edu', '$mattpw', '4')";
$character_insert[] = "INSERT INTO GOTUsers (email, password, access_level) VALUES ('bch3cn@virginia.edu', '$brittanypw', '4')";
$character_insert[] = "INSERT INTO GOTUsers (email, password, access_level) VALUES ('ak5nt@virginia.edu', '$agnespw', '4')";
  
# RUN ALL SQL COMMANDS
foreach($character_insert as $c):
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