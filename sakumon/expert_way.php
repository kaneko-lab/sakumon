<table border="1">
<tr><th>何で詰まった</th><th>次の工程</th><th>目的</th></tr>
<?php
  $httpReferer=$_SERVER['HTTP_REFERER'];

  $from=strstr($httpReferer, "_", TRUE);
  $from=strrev($from);
  $from=strstr($from, "/", TRUE);
  $from=strrev($from);

  include($from.".htm");

  $current = htmlspecialchars($_POST['no']);
  $procedure = array("作問開始！", "参考資料を見る", "問題にする内容をまとめる", "問題文の作成", "解答(選択肢)の作成", "解説の作成", "見直し", "提出！");

  $pdo = new PDO("mysql:dbname=sakumon3", "root", "2Flyand8Fr");
  $st = $pdo->query("SELECT * FROM suggestion where current=$current ORDER BY next ASC");
  while ($row = $st->fetch()) {
    $purpose = htmlspecialchars($row['purpose']);
    $next = htmlspecialchars($row['next']);
    $next_purpose = htmlspecialchars($row['next_purpose']);
  echo "<tr><td>$purpose</td><td>$procedure[$next]</td><td>$next_purpose</td></tr>";
}
?>
</table>
