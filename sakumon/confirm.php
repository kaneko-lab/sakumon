<?php
  $pdo = new PDO("mysql:dbname=sakumon3", "root", "2Flyand8Fr");
  $st = $pdo->prepare("INSERT INTO question_list(concept, question, choice1, choice2, choice3, choice4, choice_a, study1, study2, study3, study4, refer) VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
  $st->execute(array($_POST['concept'], $_POST['question'], $_POST['choice1'], $_POST['choice2'], $_POST['choice3'], $_POST['choice4'], $_POST['choice_a'], $_POST['study1'], $_POST['study2'], $_POST['study3'], $_POST['study4'], $_POST['refer']));
?>

保存しました。<br>

<a href="javascript:void(0)" onClick="parent.left.location.href='menu.htm'; parent.up_left.location.href='blank.htm'; parent.right.location.href='blank.htm'">トップへ</a>
