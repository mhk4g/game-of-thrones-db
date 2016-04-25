<?php 
session_start();
ini_set('display_errors', 1);
include 'helpers.php';

if (isset($_SESSION["error"])) {
    $error_display = $_SESSION["error"];
    unset($_SESSION["error"]);
} else {
    $error_display = "";
}

if (isset($_SESSION["admin_results"])) {
    $results_display = $_SESSION["admin_results"];
    unset($_SESSION["admin_results"]);
} else {
    $results_display = "";
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
    $access_level = 5;
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
            
            <?php echo($results_display . "<br>"); ?>
            
            <?php if($access_level <= 3): ?>
            
            <form action="process_insert.php" method="post">
                <table border = "1" cellpadding = "8" width="100%" align="center" id="admintable">
                    <col width=20%><col width=20%><col width=20%><col width=40%>
                    <caption id="tablecaption"><h1>Add new character</h1></caption>
                    <tr align = "center">
                        <th>Name</th><th>First appearance</th><th>Status</th><th>Also known as...</th></tr>
                        <tr>
                            <td><input type="text" name="name" placeholder="Ex: 'Arya Stark'" autocomplete="off" required style="width:100%"/></td>
                            <td><input type="text" name="first_appearance" placeholder="Ex: 'Winter is Coming'" autocomplete="off" required style="width:100%"/></td>
                            <td><input type="text" name="status" placeholder="Alive, Deceased, Unknown" autocomplete="off" required style="width:100%"/></td>
                            <td><input type="text" name="aka" placeholder="Ex: 'Guy who gets [SPOILER]ed'" autocomplete="off" required style="width:100%"/></td>
                        </tr>
                    </table><br><input type="submit" id="insert" name="insert" value="Create character"><br><br>
                </form>

            <?php endif; 
            if($access_level <= 2): ?>

                <form action="process_update.php" method="post">
                    <table border = "1" cellpadding = "8" width="100%" align="center" id="admintable">
                        <col width=18%><col width=18%><col width=19%><col width=15%><col width=30%>
                        <caption id="tablecaption"><h1>Edit existing character</h1></caption>
                        <tr align = "center">
                            <th>Old character name</th><th>New character name</th><th>First appearance</th><th>Status</th><th>Also known as...</th></tr>
                            <tr>
                                <td><input type="text" name="old_name" placeholder="Ex: 'Arya Stark'" autocomplete="off" required style="width:100%"/></td>
                                <td><input type="text" name="new_name" placeholder="Ex: 'Aryo Stark'" autocomplete="off" required style="width:100%"/></td>
                                <td><input type="text" name="first_appearance" placeholder="Ex: 'Winter is Coming'" autocomplete="off" required style="width:100%"/></td>
                                <td><input type="text" name="status" placeholder="Alive, Deceased, Unknown" autocomplete="off" required style="width:100%"/></td>
                                <td><input type="text" name="aka" placeholder="Ex: 'Guy who gets [SPOILER]ed'" autocomplete="off" required style="width:100%"/></td>
                            </tr>
                        </table><br><input type="submit" id="update" name="update" value="Update character"><br><br>  
                    </form>

                    <?php endif; 
                    if($access_level <= 1): ?>

                    <form action="process_delete.php" method="post">
                        <table border = "1" cellpadding = "8" width="100%" align="center" id="admintable">
                            <col width=30%><col width=30%><col width=30%>
                            <caption id="tablecaption"><h1>Delete character</h1></caption>
                            <tr align = "center">
                                <th>Character name</th><th>Confirm character name</th><th>Confirm deletion</th><tr>
                                    <td><input type="text" name="name" placeholder="Ex: 'Arya Stark'" autocomplete="off" required style="width:100%"/></td>
                                    <td><input type="text" name="confirm_name" placeholder="Ex: 'Arya Stark'" autocomplete="off" required style="width:100%"/></td>
                                    <td><input type="text" name="confirm_delete" placeholder="Type 'DELETE' to confirm deletion" autocomplete="off" required style="width:100%"/></td>
                                </tr>
                            </table><br><input type="submit" id="delete" name="delete" value="Delete character"><br><br>  
                        </form>

                    <?php endif; 
                    if($access_level >= 4): echo "<h2>You do not have any admin permissions. $access_level</h2>"; endif;?>

                </div>
            </div>
        </body>
