<?php
require_once 'signup_view.php';
require_once 'config_session.php';
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styles.css">
    <title>Sign Up</title>
</head>
<body>
    <h1>Sign Up</h1>
    <form action="signup.php" method="post">
        <label for="username">Name:</label>
        <input type="text" id="username" name="username"><br><br>

        <label for="email">Email:</label>
        <input type="email" id="email" name="email" ><br><br>

        <label for="password">Password:</label>
        <input type="password" id="password" name="password"><br><br>

        <input type="submit" value="Sign Up">
    </form>

    <?php
        check_signup_errors();
    ?>
</body>
</html>