<?php 
session_start();
session_unset();
header("Location: login_page.php");
die();
?>