<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <meta name="author" content="Let's Go team"/>
        <meta name="robots" content="all"/>
        <title>Je cherche un truc...</title>
        <link href="bootstrap/css/bootstrap.css" rel="stylesheet">
        <link href="bootstrap/css/bootstrap-theme.css" rel="stylesheet">
        <link href="papaOurs.css" rel="stylesheet">
    </head>
    <body>
        <div class="container col-lg-12">
            <h1>Je cherche un truc...</h1>
            <?php
            $page = array(
                "login" => "login.php",
                "newThread" => "newThread.php",
                "reply" => "reply.php",
                "thread" => "thread.php"
            );
            if (isset($_GET['page'])) {
                if (isset($page[$_GET['page']])) {
                    include $page[$_GET['page']];
                } else {
                    include "accueil.php";
                }
            } else {
                include "accueil.php";
            }
            ?>

        </div>



        <script src="bootstrap/js/jquery.js"></script>
        <script src="bootstrap/js/bootstrap.js"></script>
    </body>
</html>