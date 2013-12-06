<?php
session_start();
?>

<html>
<head></head>
    <body>
    <?php

	 $dbh = new PDO('mysql:host=localhost;dbname=letsgo', 'root', 'nuitinfo');
    // on teste la déclaration de nos variables
    if (isset($_POST['title']) && isset($_POST['content']) && isset($_POST['tags']) ) {
    // on affiche nos résultats

	$donnee=explode(",",$_POST['tags']); //chaines séparées par une virgule


$sth = $dbh->prepare('insert into question (titre,contenu,auteur) VALUES (?,?,?)');
            $sth->execute(array($_POST['title'], $_POST['content'], $_SESSION['id']));
            echo "<div class='alert alert-success'>Question ajouté :)</div>";
        } else {
            echo "<div class='alert alert-danger'>Erreur lors de la tentative d'ajout</div>";
        }


	foreach($donnee as $value){
		$sth = $dbh->prepare('select tag from tag where tag=?');
		$sth->execute(array($value));
		$array = $sth->fetchAll();
		if(empty($array)){
			$sth = $dbh->prepare('insert into tag (tag,count) VALUES (?,1)');
        		$sth->execute(array($value));    
	
	
		}else{

			$sth = $dbh->prepare('UPDATE tag SET count=(count+1) WHERE tag=?');
			$sth->execute(array($value));
		}
	}	

?>
</body>
</html>
