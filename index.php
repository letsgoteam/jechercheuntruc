<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>Let's go !</title>
        <link href="bootstrap/css/bootstrap.css" rel="stylesheet">
        <link href="bootstrap/css/bootstrap-theme.css" rel="stylesheet">
        <link href="papaOurs.css" rel="stylesheet">
    </head>
    <body>

        <h1>La cave de Papa Ours</h1>
        <?php
        if (isset($_GET['src'])) {
            include "src.php";
        } else {
            include "accueil.php";
        }
        ?>



        <script src="bootstrap/js/jquery.js"></script>
        <script src="bootstrap/js/bootstrap.js"></script>
    </body>
</html>