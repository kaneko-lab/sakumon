<h2>提案手順</h2>

<table border="1">
<tr><th>現在の項目</th><th>何があった</th><th>次の項目</th><th>目的</th><th>修正</th></tr>
<?php

  $procedure = array("START！", "参考資料を見る", "問題にする内容をまとめる", "問題文の作成", "解答(選択肢)の作成", "解説の作成", "見直し", "提出！");
  $pdo = new PDO("mysql:dbname=sakumon3", "root", "2Flyand8Fr");
  $st = $pdo->query("SELECT * FROM suggestion");
  while ($row = $st->fetch()) {
    $current = nl2br(htmlspecialchars($row['current']));
    $purpose = nl2br(htmlspecialchars($row['purpose']));
    $next = nl2br(htmlspecialchars($row['next']));
    $next_purpose = nl2br(htmlspecialchars($row['next_purpose']));
echo "<tr><td>$procedure[$current]</td><td>$purpose</td><td>$procedure[$next]</td><td>$next_purpose</td><td><a href='e_update.php?current=$current&next=$next'>修正</a></td></tr>";
  }
?>
</table>
