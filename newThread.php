<?php
if (isset($_POST['title'])) {
    $titre = htmlentities($_POST['title']);
    $content = htmlentities($_POST['content']);
    $tags = htmlentities($_POST['tags']);
    echo "Formulaire envoyé !<br />$titre<br />$content<br />$tags";
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
