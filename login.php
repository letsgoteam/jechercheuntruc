<div class="row">
    <div class="col-lg-6 col-lg-offset-3">
        <form name="form1" method="post" action="index.php">
	    <?php
		if ($failconnect) {
			if ($resultat['password'] == NULL && $resultat['id'] == NULL) {
			echo $_POST['username'] . " : cet utilisateur n'existe pas<br/>";
			}
			else {
			echo $_POST['username'] . " : le mot de passe n'est pas correct<br/>";
			}
		}
	    ?>
            <strong>Connexion </strong>
            Nom d'utilisateur
            <input name="username" type="text" id="username">
            Mot de passe
            <input name="password" type="password" id="password">
            <input type="submit" name="Submit" value="Login">
        </form>
        <a href="index.php?page=register">S'enregistrer</a>
    </div>
</div>
