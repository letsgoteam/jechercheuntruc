<h2>Répondre à une question : #</h2>
<form action="index.php?page=reply" method="post" >
    <div class="form-group">
        <label for="replyContent">Contenu de votre réponse :</label>
        <textarea class="form-control" rows="5" name="content" id="replyContent"></textarea>
    </div>
    <div class="form-group">
        <label for="replyLink">Lien vers le produit :</label>
        <input type="text" class="form-control" id="replyLink" placeholder="Un lien vers l'achat idéal ?" name="link"/>
    </div>

    <div class="form-group">
        <input type="submit" value="Envoyer !" class="btn btn-primary"/>
    </div>

</form>
