<?php 
session_start();

header('content-type: application/json; charset=utf-8');
header("access-control-allow-origin: *");

# TEST DATA
// $_SESSION["user_name"] = "Matt";
$userinput = $_POST["userinput"];

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

#TODO:
# Use user type as a check for certain types of query

// Construct SQL query using input

// Query DB

// Serialize results as JSON

// Print results
//print($userinput);

# Database connection
$db = new mysqli('stardock.cs.virginia.edu', $dbuser, $dbpass, $dbname);
if ($db->connect_error) {
    die("Could not connect to database: " . $db->connect_error);
  }

# SANITIZE USER INPUT

$HTTPResponse = [];
$result = $db->query("SELECT * FROM Characters WHERE name LIKE'%$userinput%'");
$result_array = mysqli_fetch_all($result);
// echo("<table border = \"1\" cellpadding = \"8\" width=\"50%\" align=\"center\">");
// echo("<caption><h2>Search results</h2></caption>");
// echo("<tr align = \"center\">");
// echo("<th style=\"width:40px\">Name</th>");
// echo("<th style=\"width:40px\">First appearance</th>");
// echo("<th style=\"width:40px\">Status</th></tr>");
$HTTPResponse[] = "<table border = \"1\" cellpadding = \"8\" width=\"100%\" align=\"center\" id=\"searchresulttext\">";
$HTTPResponse[] = "<caption id=\"tablecaption\"><h1>Search results</h1></caption>";
$HTTPResponse[] = "<tr align = \"center\">";
$HTTPResponse[] = "<th style=\"width:40px\">Name</th>";
$HTTPResponse[] = "<th style=\"width:40px\">First appearance</th>";
$HTTPResponse[] = "<th style=\"width:40px\">Status</th></tr>";

foreach ($result_array as $r) {
//    print_r($r);
    //echo("<tr align=\"center\"><td>$r[0]</td><td>$r[1]</td><td>$r[2]</td></tr>");
    $HTTPResponse[] = "<tr align=\"center\"><td>$r[0]</td><td>$r[1]</td><td>$r[2]</td></tr>";
}

$HTTPResponse[] = "<br><br><br><br><br>";

foreach ($HTTPResponse as $h) {
    echo($h);
    }
// foreach ($results_array as $a):
//     print_r($a);
// endforeach;
// $HTTPresponse["alldone"] = "YEP";

# Get final score from session
// $final_score = $num_correct_so_far;

// $HTTPresponse["finalscore"] = (int)$final_score;
// $HTTPresponse["finalattempted"] = (int)$number_of_questions;
// $temppercentage = (float)($final_score / $number_of_questions)*100;
// $score_percentage = number_format((float)$temppercentage, 2, '.', '');  
// $HTTPresponse["percentage"] = $score_percentage;

// $num_ppl_completed = (int)$the_quiz["numusers"];
// $num_ppl_completed++;
// $oldpublicavg = (float)strip_tags($the_quiz["publicavg"]);
// $newpublicavg = (float)($oldpublicavg*($num_ppl_completed - 1) + $score_percentage) / $num_ppl_completed;
// $formattednewpublicavg = number_format((float)$newpublicavg, 2, '.', ''); 
// $HTTPresponse["publicavg"] = $formattednewpublicavg;

# Add string field to Quizzes table
# Get the string, decode it, for each index, add to a running sum 

// $scores_array = json_decode($the_quiz["scoresarray"]);
// $scores_array[] = $score_percentage;
// $running_sum = (float)0.0;
// for($i = 0; $i < $num_ppl_completed; $i++) {
// $running_sum += (float)$scores_array[$i];   
// }
  
# Encodes the scores array for the database
// $encoded_scores = json_encode($scores_array);
  
  # Update DB to reflect new stats
#  $finaladd = $db->query("UPDATE Quizzes SET publicavg = '$formattednewpublicavg', numusers = '$num_ppl_completed', scoresarray = '$encoded_scores' WHERE datestring = '$date'");
    
  # Encode and echo
#  $finalencode = json_encode($HTTPresponse);
#  echo($finalencode);
#  }
  
# Add the next question
// $HTTPresponse["category"] = $temparray["category"];
// $HTTPresponse["currentQuestionID"] = (int)strip_tags($temparray["ID"]);
// $HTTPresponse["questiontext"] = strip_tags($temparray["string"]);
// $HTTPresponse["numchoices"] = (int)strip_tags($temparray["numchoices"]);

# Add the answers for the next question
// $result = $db->query("SELECT * FROM Answers WHERE questionID='$currentquestionID'");
// $resultrows = mysqli_num_rows($result);
// for($i = 1; $i < $resultrows+1; $i++) {
//   $temparray = $result->fetch_assoc();
//   $HTTPresponse["answer" . $i] = strip_tags($temparray["string"]);
//   $HTTPresponse["answerID" . $i] = (int)strip_tags($temparray["ID"]);
// }

# JSON Encode and send all data to dailyquiz.php
// $finalEncode = json_encode($HTTPresponse);
// echo($finalEncode);
// }
?>