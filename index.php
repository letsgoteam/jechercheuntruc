<?php
session_start();
$dbh = new PDO('mysql:host=localhost;dbname=letsgo', 'letsgo', 'hk4J99Wk');

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
?>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <meta name="author" content="Let's Go team"/>
        <meta name="robots" content="all"/>
        <title>Je cherche un truc...</title>
        <link href="bootstrap/css/bootstrap.css" rel="stylesheet">
        <!--<link href="bootstrap/css/bootstrap-theme.css" rel="stylesheet">-->
        <link href="papaOurs.css" rel="stylesheet">
    </head>
    <body>
        <div class="container col-lg-12">
            <h1>Je cherche un truc...</h1>
            <?php
            if ($connect) {
        	$sql = 'SELECT username FROM utilisateur WHERE id = ?';
		$sth = $dbh->prepare($sql);
		$sth->execute(array($_SESSION['id']));
		$resultat = $sth->fetch();
                echo "Bonjour  " . $resultat['username']  . "<br /><a href='index.php?page=logout'>Déconnexion</a>";
            } else {
                include "login.php";
            }
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



        <script src="bootstrap/js/jquery.js"></script>
        <script src="bootstrap/js/bootstrap.js"></script>
    </body>
</html>
