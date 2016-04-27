<?php 
session_start();
ini_set('display_errors', 1);
include 'helpers.php';
mysqli_report(MYSQLI_REPORT_OFF);

if (isset($_SESSION["error"])) {
    $error_display = "Invalid user name or password.";
} else {
    $error_display = "";
}

if (isset($_SESSION["access_level"])) {
    $access_level = $_SESSION["access_level"];
} else {
    $access_level = 5;
}

$access_level_label = convert_access_level_to_label($access_level);
$access_level_icon = convert_access_label_to_icon($access_level_label);

if (isset($_SESSION["email_address"])) {
    $login_label = $_SESSION["email_address"];
    $login_or_out = "<nav class=\"link-label\" id=\"login-link\"><a href=\"logout.php\">Logout</a></span></nav>";
    $register_or_export = "<nav class=\"link-label\" id=\"register-link\"><a href=\"export_page.php\">Export</a></span></nav>";
} else {
    $login_label = "Guest";
    $login_or_out = "<nav class=\"link-label\" id=\"login-link\"><a href=\"login_page.php\">Login</a></span></nav>";
    $register_or_export = "<nav class=\"link-label\" id=\"register-link\"><a href=\"register_page.php\">Register</a></span></nav>";
}

?>

<html background-color>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.2/jquery.min.js"></script>
<script type="text/javascript" language="javascript">

function play_music() {
    var player = document.getElementsByTagName("audio")[0];
    player.play();
}
</script>
<head>
    <link type="text/css" rel="stylesheet" href="style.css"/>
    <link href='https://fonts.googleapis.com/css?family=Lato:400,100,300,700' rel='stylesheet' type='text/css'>
    <title>Game of Thrones DB: Login</title>
</head>
<body bgcolor="black">
    <nav class="fixed-nav-bar"></nav>
    <nav class="fixed-nav-bar-shadow-top"></nav>
    <nav class="fixed-nav-bar-shadow-bottom"></nav>
    <nav class="nav-label" id="login-label"><?php echo($login_label . "<span title=$access_level_label id=\"rank\">" . " $access_level_icon " . '</span>'); ?></nav>
    <nav class="nav-label" id="site-label" onclick="play_music()">&#9819; game-of-thrones-db</nav>
    <nav class="link-label" id="search-link"><a href="search_page.php">Search</a></span></nav>
    <nav class="link-label" id="edit-link"><a href="admin_page.php">Admin</a></span></nav>
    <nav class="link-label" id="about-link"><a href="about_page.php">About</a></span></nav>
    <?php echo($register_or_export); ?>
    <?php echo($login_or_out); ?>
    <div class="login-input-box" width=200px>
        <form action="process_login.php" method="post">
        <p class="login-label">Email</p><input class="login-field" id="email" name="email" type="text" placeholder="Enter your email address" autofocus="autofocus" autocomplete="off" required width="200px"/><br>
        <p class="login-label">Password</p><input class="login-field" id="password" name="password" type="password" placeholder="Enter your password" autocomplete="off" required /><br><br>
        <input type="submit" id="login" name="login" value="Login"><br><br>
        <p id="error"><?php echo($error_display) ?></p>
        </form>
    </div>
    <div id="music-player">
    <audio controls loop="true" hidden="true">
        <source src="got_theme.mp3" type="audio/mpeg">
        Your browser does not support the audio element.
    </audio>
    </div>
</form>
</body>
