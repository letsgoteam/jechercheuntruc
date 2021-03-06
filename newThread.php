<?php
if (isset($_POST['title']) && isset($_POST['content']) && isset($_POST['tags'])) {
    $donnee = explode(",", $_POST['tags']);
    $sth = $dbh->prepare('INSERT INTO question (titre,contenu,auteur) VALUES (?,?,?)');
    $sth->execute(array($_POST['title'], $_POST['content'], $_SESSION['id']));
    echo "<div class='alert alert-success'>Question ajoutée :)</div>";

    $sth = $dbh->prepare('SELECT *FROM question WHERE titre=? AND contenu=? AND auteur=?');
    $sth->execute(array($_POST['title'], $_POST['content'], $_SESSION['id']));
    $array = $sth->fetch();
    $question_id = $array['id'];

    foreach ($donnee as $value) {
        $sth = $dbh->prepare('SELECT *FROM tag WHERE tag=?');
        $sth->execute(array($value));
        $array = $sth->fetch();
        if (empty($array)) {
            $sth = $dbh->prepare('INSERT INTO tag (tag,count) VALUES (?,1)');
            $sth->execute(array($value));
            $sth = $dbh->prepare('SELECT *FROM tag WHERE tag=?');
            $sth->execute(array($value));
            $array = $sth->fetch();
        } else {
            $sth = $dbh->prepare('UPDATE tag SET count=(count+1) WHERE tag=?');
            $sth->execute(array($value));
        }
        $tag_id = $array['id'];
        $sth = $dbh->prepare('INSERT INTO asso_question_tag (question,tag) VALUES (?,?)');
        $sth->execute(array($question_id, $tag_id));
    }
}
?>

<h2>Vous cherchez quoi ?</h2>
<form action="index.php?page=newThread" method="post" >
    <div class="form-group">
        <label for="threadTitle">Titre</label>
        <input type="text" class="form-control" id="threadTitle" placeholder="Titre de la question" name="title"/>
    </div>
    <div class="form-group">
        <label for="threadContent">Un peu plus de détails ?</label>
        <textarea class="form-control" rows="5" name="content" id="threadContent"></textarea>
    </div>
    <div class="form-group">
        <label for="threadTags">Des mots clefs !</label>
        <input type="text" class="form-control" id="threadTags" placeholder="Plus de mots clefs !" name="tags"/>
    </div>

    <div class="form-group">
        <input type="submit" value="Envoyer !" class="btn btn-primary"/>
    </div>

</form>
