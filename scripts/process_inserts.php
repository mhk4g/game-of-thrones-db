<?php

// Takes an array of SQL statements and runs them on our database
function process_inserts($SQLcommands) {

    $dbuser = "cs4750mhk4g";
    $dbpass = "aryastark";
    $dbname = "cs4750mhk4g";
    $success = TRUE;

    $db = new mysqli('stardock.cs.virginia.edu', $dbuser, $dbpass, $dbname);
    if ($db->connect_error) {
        die("Could not connect to database. Check your wifi connection.");
      }
      
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
}
     
?>