<?php
session_start();
$dbh = new PDO('mysql:host=localhost;dbname=letsgo', 'root', 'nuitinfo');

$connect = FALSE;
$failconnect = FALSE;
if (isset($_GET['page']) && $_GET['page'] == 'logout') {
    $_SESSION = array();
    session_destroy();
    session_start();
} else {
    if (isset($_SESSION['id']))
        $connect = TRUE;

    if (isset($_POST['username']) && isset($_POST['password'])) {

        $sql = 'SELECT * FROM utilisateur WHERE username = ?';
        $sth = $dbh->prepare($sql);
        $sth->execute(array($_POST['username']));
        $resultat = $sth->fetch();
        $passHash = crypt($_POST['password'], $resultat['password']);
        if ($passHash == $resultat['password']) {
            $connect = TRUE;
            $_SESSION['id'] = $resultat['id'];
        } else {
            $failconnect = TRUE;
        }
    }
}

if(isset($_GET['page']) && $_GET['page'] == "reply" && !isset($_GET['tid'])) {
	header('Location: index.php');
}
?>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="author" content="Let's Go team"/>
        <meta name="robots" content="all"/>
        <title>Je cherche un truc...</title>
        <link href="bootstrap/css/bootstrap.css" rel="stylesheet">
        <link href="bootstrap/css/jquery.tagit.css" rel="stylesheet" type="text/css">
        <link href="bootstrap/css/tagit.ui-zendesk.css" rel="stylesheet" type="text/css">
        <link href="style.css" rel="stylesheet">
    </head>
    <body>
        <div id="wrap">
            <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-left">
                        <li><a href="index.php"><span class="glyphicon glyphicon-home"></span> Accueil</a></li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <?php if (!$connect) { ?>
                            <li><a href="index.php?page=register"><span class="glyphicon glyphicon-plus"></span> S'inscrire</a></li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-log-in"></span> Connexion <b class="caret"></b></a>
                                <div class="dropdown-menu">
                                    <form name="form1" method="post" action="index.php">
                                        <div class="form-group">
                                            <label for="username">Nom d'utilisateur :</label>
                                            <input name="username" class="form-control" type="text" id="username" required>
                                        </div>
                                        <div class="form-group">
                                            <label for="password">Mot de passe :</label>
                                            <input name="password" class="form-control" type="password" id="password" required>
                                        </div>
                                        <button type="submit" class="btn btn-default">Connexion</button>
                                    </form>
                                </div>
                            </li>
                        <?php } else { ?>
                            <li><a href="#"><span class="glyphicon glyphicon-question-sign"></span> Ils ont besoin de vous</a></li>
                            <li><a href="#"><span class="glyphicon glyphicon-pushpin"></span> Mes sujets</a></li>
                            <li><a href="#"><span class="glyphicon glyphicon-user"></span> Mon profil</a></li>
                            <li><a href="index.php?page=logout"><span class="glyphicon glyphicon-off"></span> Déconnexion</a></li>
                        <?php } ?>
                    </ul>
                </div>
            </nav>
            <div class="container">
                <h1 class="text-center">
                    <a href="index.php"><img src="img/logo_50.png" />Je cherche un truc...</a>
                </h1>
                <!-- Search form -->
                <div class="text-center">
                    <form method="post" action="#">
                        <div class="row">
                            <?php
                            if (!$connect) {
                                echo '
                            <div class="col-xs-4 col-xs-offset-4">Vous devez être connecté pour poser une question</div>';
                            } else {
                                echo '
                            <div class="col-xs-2 col-xs-offset-5"><a class="btn btn-default" href="index.php?page=newThread">
                                    <span class="glyphicon glyphicon-plus"></span> Poser une question !</a>
                            </div>';
                            }
                            ?>
                        </div>
                        <div class="row">
                            <p class="text-center">Ou</p>
                        </div>
                        <div class="row">
                            <div class="col-xs-7 col-xs-offset-2">
                                <input type="text" name="keywords" class="form-control" placeholder="Recherche..." required />
                            </div>
                            <div class="col-xs-1 ">
                                <button type="submit" class="btn btn-default"><span class="glyphicon glyphicon-search"></span> Cherche !</button>
                            </div>
                        </div>
                    </form>
                </div>

                <hr />

                <?php
                $page = array(
                    "login" => "login.php",
                    "newThread" => "newThread.php",
                    "reply" => "reply.php",
                    "register" => "register.php",
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
        </div> <!-- /container -->

        <div id="footer">
            <div class="">
                <ul>
                    <li><a href="index.php"><span class="glyphicon glyphicon-home"></span> Accueil</a></li>
                    <li><a href="index.php?page=team"><span class="glyphicon glyphicon-book"></span> À propos de nous</a></li>
                </ul>
                <p class="text-center">
                    Site créé par la Let's go team pour la <a href="http://www.nuitdelinfo.com">Nuit de l'Info</a>. Code disponible sous licence <a href="http://www.gnu.org/">GNU</a>.
                </p>
            </div>
        </div>



        <script src="bootstrap/js/jquery.js"></script>
        <script src="bootstrap/js/jquery-ui.js"></script>
        <script src="bootstrap/js/bootstrap.js"></script>
        <script src="bootstrap/js/tag-it.js"></script>

        <script>
            $(function() {
                $('#threadTags').tagit();
            });
        </script>
    </body>
</html>
