<?php
  $pdo = new PDO("mysql:dbname=sakumon3",DB_USER, DB_PW);
  $st = $pdo->prepare("INSERT INTO suggestion(current, purpose, next, next_purpose) VALUES(?, ?, ?, ?)");
  $st->execute(array($_POST['current'], $_POST['purpose'], $_POST['next'], $_POST['next_purpose']));
?>

保存しました。<br>

<a href="e_insert.htm">戻る</a>
