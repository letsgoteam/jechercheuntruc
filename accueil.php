
<div class="col-xs-12">
    <h4>Ces utilisateurs ont besoin de votre aide !</h4>
    <?php
    foreach ($dbh->query("SELECT *FROM question ORDER BY id DESC LIMIT 10") as $question):
        echo '<div class="col-xs-12 result"><span class="glyphicon glyphicon-chevron-right"></span> <strong>' . $question['titre'] . '</strong><br />';
        echo '<p>' . nl2br($question['contenu']) . '</p>';
        echo '<span class="glyphicon glyphicon-flag"></span> <strong>Tags :</strong> ';
        //foreach ($dbh->query("SELECT *FROM "))
        echo '</div>';
    endforeach;
    ?>
</div>