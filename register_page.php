<?php 
session_start();

if (isset($_SESSION["error"])) {
    $error_display = "Invalid user name or password.";
} else {
    $error_display = "";
}

if (isset($_SESSION["email_address"])) {
    $login_label = $_SESSION["email_address"];
} else {
    $login_label = "Guest  ";
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
    <title>Game of Thrones DB: Account Registration</title>
</head>
<body bgcolor="black">
    <div class="input-box" width=200px>
        <form action="process_register.php" method="post">
            <p class="login-label">Email: </p><input class="login-field" id="email" name="username" type="text" placeholder="Enter your email address" autofocus="autofocus" autocomplete="off" required width="200px"/><br>
            <p class="login-label">Password: </p><input class="login-field" id="password" name="password" type="password" placeholder="Enter your desired password" autofocus="autofocus" autocomplete="off" required width="200px"/><br>
            <p class="login-label">Confirm Password: </p><input class="login-field" id="password2" name="password2" type="password" placeholder="Enter your password again" autofocus="autofocus" autocomplete="off" required width="200px"/><br><br>
            <input type="submit" id="register" name="register" value="Register"><br><br>
        <p id="error"><?php echo($error_display) ?></p>
        <br><br><p class="proceed">Proceed without registering</p>
        </form>
    </div>
