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
    <title>Game of Thrones DB: Account Registration</title>
</head>
<body bgcolor="black">
    <div class="input-box" width=200px>
        <form action="process_register.php" method="post">
            <p class="login-label">Email: </p><input class="login-field" id="email" name="username" type="text" placeholder="Enter your email address" autofocus="autofocus" autocomplete="off" required width="200px"/><br>
            <p class="login-label">Password: </p><input class="login-field" id="password" name="password" type="text" placeholder="Enter your desired password" autofocus="autofocus" autocomplete="off" required width="200px"/><br>
            <p class="login-label">Confirm Password: </p><input class="login-field" id="password2" name="password2" type="text" placeholder="Enter your password again" autofocus="autofocus" autocomplete="off" required width="200px"/><br><br>
            <input type="submit" id="register" name="register" value="Register"><br><br>
        <p id="error"><?php echo($error_display) ?></p>
        <br><br><p class="proceed">Proceed without registering</p>
        </form>
    </div>
</form>
</body>

<!-- <form action="redirect.php" method="post"><pre><p align="center"><input type="submit" name="login" value="Login">   <input type="submit" name="reset" value="Reset password">
</pre></form></body> -->