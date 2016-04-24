<?php 
session_start();

if (isset($_SESSION["error"])) {
    $error_display = "Invalid user name or password.";
    session_unset();
} else {
    $error_display = "";
}

$login_label = "Guest";

?>

<html background-color>
</script>
<head>
    <link type="text/css" rel="stylesheet" href="login_style.css"/>
    <link href='https://fonts.googleapis.com/css?family=Lato:400,100,300,700' rel='stylesheet' type='text/css'>
    <title>Game of Thrones DB: Login</title>
</head>
<body bgcolor="black">
    <nav class="fixed-nav-bar"></nav>
    <nav class="fixed-nav-bar-shadow-top"></nav>
    <nav class="fixed-nav-bar-shadow-bottom"></nav>
    <nav class="nav-label" id="login-label">Guest</nav>
    <nav class="nav-label" id="site-label">&#9819; game-of-thrones-db</nav>
    <nav class="link-label" id="search-link"><a href="search_page.php">Search</a></span></nav>
    <nav class="link-label" id="edit-link"><a href="admin_page.php">Admin</a></span></nav>
    <nav class="link-label" id="about-link"><a href="about_page.php">About</a></span></nav>
    <nav class="link-label" id="login-link"><a href="login_page.php">Login</a></span></nav>
    <div class="input-box" width=200px>
        <form action="process_login.php" method="post">
        <p class="login-label">Email</p><input class="login-field" id="email" name="email" type="text" placeholder="Enter your email address" autofocus="autofocus" autocomplete="off" required width="200px"/><br>
        <p class="login-label">Password</p><input class="login-field" id="password" name="password" type="password" placeholder="Enter your password" autocomplete="off" required /><br><br>
        <input type="submit" id="login" name="login" value="Login"><br><br>
        <p id="error"><?php echo($error_display) ?></p>
        </form>
    </div>
</form>
</body>
