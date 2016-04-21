<?php 
session_start();
$error_display = "";

if (isset($_SESSION["error"])) {
    $error_display = $_SESSION["error"];
}
 ?>

<html background-color>
</script>
<head>
    <link type="text/css" rel="stylesheet" href="login_style.css"/>
    <title>Game of Thrones DB: Login</title>
</head>
<body bgcolor="black">
    <div class="input-box" width=200px>
        <form action="process_login.php" method="post">
        <p class="login-label">Email</p><input class="login-field" id="email" name="email" type="text" placeholder="Enter your email address" autofocus="autofocus" autocomplete="off" required width="200px"/><br>
        <p class="login-label">Password</p><input class="login-field" id="password" name="password" type="password" placeholder="Enter your password" autocomplete="off" required /><br><br>
        <input type="submit" id="login" name="login" value="Login"><br><br>
        <p id="error"><?php echo($error_display) ?></p>
        <br><br><p class="proceed">Browse as guest . ' . ' . Create new account</p>
        </form>
    </div>
</form>
</body>
