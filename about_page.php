<?php 
session_start();

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
    <link type="text/css" rel="stylesheet" href="style.css"/>
    <link href='https://fonts.googleapis.com/css?family=Lato:400,100,300,700' rel='stylesheet' type='text/css'>
    <title>Game of Thrones DB: Login</title>
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
    <div id="resultcontainer">
        <div id="searchresults">
            </div>
            <h1>About</h1>
            <p> This page is our final project for CS4750. Winter is coming.
        </div>
    </body>
