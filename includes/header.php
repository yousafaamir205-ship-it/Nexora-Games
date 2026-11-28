<?php
if(session_status()===PHP_SESSION_NONE){
    session_start();
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Nexora Games</title>
    <link rel="stylesheet" href="/nexora-games/css/style.css">
    <link rel="stylesheet" href="/nexora-games/css/responsive.css">
</head>
<body>
    <header class="site-header">
        <div class="site-handler">
            <a href="/nexora-games/index.php" class="logo">NEXORA<span>GAMES</span></a>
            <nav>
                <a href ="/nexora-games/index.php">HOME</a>
                <a href ="/nexora-games/games.php">GAMES</a>
                <a href ="/nexora-games/about.php">ABOUT</a>
                <a href ="/nexora-games/contact.php">CONTACT</a>
</nav>
<div class="nav-buttons">
    <a href="/nexora-games/login.php" class="login-btn">Login</a>
    <a href="/nexora-games/register.php" class="register-btn">Join Now</a>
</div>
        </div>  
</header>
<main>
                