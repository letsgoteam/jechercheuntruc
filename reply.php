<?php include("thread.php"); ?>

<h2>R&eacute;pondre &agrave; une question : #<?php echo $_GET['tid']; ?></h2>
<form action="index.php?page=reply" method="post" >
    <div class="form-group">
        <label for="replyContent">Contenu de votre réponse :</label>
        <textarea class="form-control" rows="5" name="content" id="replyContent"></textarea>
    </div>

    <div class="form-group">
        <input type="submit" value="Envoyer !" class="btn btn-primary"/>
    </div>

</form>
