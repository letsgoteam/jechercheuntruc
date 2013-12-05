<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <meta name="author" content="Let's Go team"/>
        <meta name="robots" content="all"/>
        <title>La cave de Papa Ours</title>
        <link href="bootstrap/css/bootstrap.css" rel="stylesheet">
        <link href="bootstrap/css/bootstrap-theme.css" rel="stylesheet">
        <link href="papaOurs.css" rel="stylesheet">
    </head>
    <body>
        <div class="container col-lg-12">
            <h1>La cave de Papa Ours</h1>
            <?php
            if (isset($_GET['src'])) {
                include "src.php";
            } else {
                include "accueil.php";
            }
            ?>

        </div>



        <script src="bootstrap/js/jquery.js"></script>
        <script src="bootstrap/js/bootstrap.js"></script>
    </body>
</html>