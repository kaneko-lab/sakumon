<?php
  $pdo = new PDO("mysql:dbname=sakumon3", "root", "2Flyand8Fr");
  $st = $pdo->prepare("UPDATE suggestion SET purpose=?,next_purpose=? WHERE current=? and next=?");
  $st->execute(array($_POST['purpose'], $_POST['next_purpose'], $_POST['current'], $_POST['next']));
?>
レコードを修正しました。<br>

  <a href="e_list.php">リストへ</a>