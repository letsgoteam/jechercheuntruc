<html lang="en">
<head>
<meta charset="utf-8">
<title>Tag-it! test Olol</title>
  
<link href="bootstrap/css/jquery.tagit.css" rel="stylesheet" type="text/css">
<link href="bootstrap/css/tagit.ui-zendesk.css" rel="stylesheet" type="text/css">

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js" type="text/javascript" charset="utf-8"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.9.2/jquery-ui.min.js" type="text/javascript" charset="utf-8"></script>


<script src="bootstrap/js/tag-it.js" type="text/javascript" charset="utf-8"></script>

<script>

$(function(){

        

                $('#threadTags').tagit();
                });
</script>






<?php
if (isset($_POST['title'])) {
    $titre = htmlentities($_POST['title']);
    $content = htmlentities($_POST['content']);
    $tags = htmlentities($_POST['tags']);
    echo "Formulaire envoyé !<br />$titre<br />$content<br />$tags";
}
?>

<h2>Vous cherchez quoi ?</h2>
<form action="traitement.php" method="post" >
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
