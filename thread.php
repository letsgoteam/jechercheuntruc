<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

if(isset($_GET['tid']) && $_GET['tid'] != "") {
	$query1 = 'SELECT * FROM `question` WHERE `id` = ?';
	
	$q1 = $dbh->prepare($query1);
	$q1->execute(array($_GET['tid']));

	$return1 = $q1->fetch();

	echo '<div class="col-xs-12 result"><span class="glyphicon glyphicon-question-sign"></span> <strong>' . $return1['titre'] . '</strong><br />';
        echo '<p>' . nl2br($return1['contenu']) . '</p>';
        echo '<span class="glyphicon glyphicon-flag"></span> <strong>Tags :</strong> ';
        echo '</div>';
	// End of question display

	$query2 = 'SELECT reponse.contenu, utilisateur.username FROM reponse INNER JOIN utilisateur ON reponse.auteur = utilisateur.id WHERE question = ?';
	$q2 = $dbh->prepare($query2);
	$q2->execute(array($_GET['tid']));


	foreach($q2->fetchAll() as $answ):
		echo '<div class="col-xs-12 result"><span class="glyphicon glyphicon-chevron-right"></span> <strong>' . $answ['username'] . '</strong><br />';
		echo '<p>' . nl2br($answ['contenu']) . '</p>';
        	echo '</div>';
	endforeach;
}

?>
