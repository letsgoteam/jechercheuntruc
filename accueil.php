
<div class="col-xs-12">
    <h4>Ces utilisateurs ont besoin de votre aide !</h4>
    <?php
    foreach ($dbh->query("SELECT *FROM question ORDER BY id DESC LIMIT 10") as $question):
        echo '<div class="col-xs-12 result"><span class="glyphicon glyphicon-chevron-right"></span> <strong><a href="index.php?page=reply&amp;tid=' .$question['id']. '">' . $question['titre'] . '</a></strong><br />';
        echo '<p>' . nl2br($question['contenu']) . '</p>';
        echo '<span class="glyphicon glyphicon-flag"></span> <strong>Tags :</strong> ';
        foreach ($dbh->query("SELECT *FROM asso_question_tag, tag WHERE question = " . $question['id'] . " AND asso_question_tag.tag = tag.id") as $asso):
            echo $asso['tag'] . " ";
        endforeach;
        echo '</div>';
    endforeach;
    ?>
</div>
