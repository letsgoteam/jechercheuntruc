<?php
if (isset($_POST['username']) && isset($_POST['password1']) && isset($_POST['password2']) && isset($_POST['email'])) {
    if (!empty($_POST['username']) && !empty($_POST['password1']) && !empty($_POST['password2']) && !empty($_POST['email'])) {
        if ($_POST['password1'] == $_POST['password2']) {
            $sth = $dbh->prepare('INSERT INTO utilisateur (username,password,email) VALUES (?,?,?)');
            $sth->execute(array($_POST['username'], crypt($_POST['password1']), $_POST['email']));
            echo "<div class='alert alert-success'>Inscription réussie ! Vous pouvez vous connecter :)</div>";
        } else {
            echo "<div class='alert alert-danger'>Les deux mots de passe ne sont pas identiques</div>";
        }
    } else {
        echo "<div class='alert alert-danger'>Vous devez remplir l'ensemble des champs</div>";
    }
}
?>
<h2>S'enregistrer :</h2>
<form action="index.php?page=register" method="post" >
    <div class="form-group">
        <label for="username">Nom d'utilisateur :</label>
        <input type = "text" class = "form-control" id = "username" placeholder = "Nom d'utilisateur" name = "username"/>
    </div>
    <div class = "form-group">
        <label for = "email">Adresse e-mail :</label>
        <input type = "email" class = "form-control" id = "email" placeholder = "Adresse email" name = "email"/>
    </div>
    <div class = "form-group">
        <label for = "replyLink">Mot de passe (deux fois!)</label>
        <input type = "password" class = "form-control" id = "password1" placeholder = "Une première fois..." name = "password1"/><br />
        <input type = "password" class = "form-control" id = "password2" placeholder = "... et une deuxième !" name = "password2"/>
    </div>

    <div class = "form-group">
        <input type = "submit" value = "S'enregistrer !" class = "btn btn-primary"/>
    </div>

</form>
