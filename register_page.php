<?php 
session_start();
ini_set('display_errors', 1);
include 'helpers.php';

if (isset($_SESSION["error"])) {
    $error_display = "Invalid user name or password.";
} else {
    $error_display = "";
}

if (isset($_SESSION["email_address"])) {
    $login_label = $_SESSION["email_address"];
    $login_or_out = "<nav class=\"link-label\" id=\"login-link\"><a href=\"logout.php\">Logout</a></span></nav>";
} else {
    $login_label = "Guest  ";
    $login_or_out = "<nav class=\"link-label\" id=\"login-link\"><a href=\"login_page.php\">Login</a></span></nav>";
}

if (isset($_SESSION["access_level"])) {
    $access_level = $_SESSION["access_level"];
} else {
    $access_level = 4;
}
?>

<html background-color>
</script>
<head>
    <link type="text/css" rel="stylesheet" href="login_style.css"/>
    <link href='https://fonts.googleapis.com/css?family=Lato:400,100,300,700' rel='stylesheet' type='text/css'>
    <title>Game of Thrones DB: Register</title>
</head>
<body bgcolor="black">
    <nav class="fixed-nav-bar"></nav>
    <nav class="fixed-nav-bar-shadow-top"></nav>
    <nav class="fixed-nav-bar-shadow-bottom"></nav>
    <nav class="nav-label" id="login-label"><?php echo($login_label); ?></nav>
    <nav class="nav-label" id="site-label">&#9819; game-of-thrones-db</nav>
    <nav class="link-label" id="search-link"><a href="search_page.php">Search</a></span></nav>
    <nav class="link-label" id="edit-link"><a href="admin_page.php">Admin</a></span></nav>
    <nav class="link-label" id="about-link"><a href="about_page.php">About</a></span></nav>
    <nav class="link-label" id="register-link"><a href="register_page.php">Register</a></span></nav>
    <?php echo($login_or_out); ?>
    <div class="input-box" width=200px>
        <form action="process_register.php" method="post">
            <p class="login-label">Email: </p><input class="login-field" id="email" name="username" type="text" placeholder="Enter your email address" autofocus="autofocus" autocomplete="off" required width="200px"/><br>
            <p class="login-label">Password: </p><input class="login-field" id="password" name="password" type="password" placeholder="Enter your desired password" autofocus="autofocus" autocomplete="off" required width="200px"/><br>
            <p class="login-label">Confirm Password: </p><input class="login-field" id="password2" name="password2" type="password" placeholder="Enter your password again" autofocus="autofocus" autocomplete="off" required width="200px"/><br><br>
            <input type="submit" id="register" name="register" value="Register"><br><br>
        <p id="error"><?php echo($error_display) ?></p>
        <br>
        </form>
    </div>
