<?php
  $current = htmlspecialchars($_GET['current']);
  $next = htmlspecialchars($_GET['next']);
  $pdo = new PDO("mysql:dbname=sakumon3", "root", "2Flyand8Fr");
  $st = $pdo->prepare("SELECT * FROM suggestion WHERE current=? and next=?");
  $st->execute(array($current, $next));
  $row = $st->fetch();
  $current = htmlspecialchars($row['current']);
  $purpose = htmlspecialchars($row['purpose']);
  $next = htmlspecialchars($row['next']);
  $next_purpose = htmlspecialchars($row['next_purpose']);
?>
<form action="e_update2.php" method="post">
  <?php echo $current ?><br>
  <textarea name="purpose" cols="60" rows="5"><?php echo $purpose ?></textarea><br>
  <?php echo $next ?><br>
  <textarea name="next_purpose" cols="60" rows="5"><?php echo $next_purpose ?></textarea><br>
  <input type="hidden" name="current" value="<?php echo $current ?>">
  <input type="hidden" name="next" value="<?php echo $next ?>">
  <input type="submit">
</form>

<a href="e_list.php">戻る</a>