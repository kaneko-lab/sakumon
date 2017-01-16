<h2>問題一覧</h2>

<table border="1">
<tr>
	<td>No.</td>
	<td>問題の内容</td>
	<td>問題</td>
	<td colspan="2">選択肢</td>
	<td>参考資料</td>
</tr>


<?php
  include("db_conf.php");
  $pdo = new PDO("mysql:dbname=sakumon3",DB_USER, DB_PW);
  $st = $pdo->query("SELECT * FROM question_list");
  while ($row = $st->fetch()) {
    $no = htmlspecialchars($row['no']);
    $concept = nl2br(htmlspecialchars($row['concept']));
    $question = nl2br(htmlspecialchars($row['question']));
    $choice1 = nl2br(htmlspecialchars($row['choice1']));
    $choice2 = nl2br(htmlspecialchars($row['choice2']));
    $choice3 = nl2br(htmlspecialchars($row['choice3']));
    $choice4 = nl2br(htmlspecialchars($row['choice4']));
    $refer = nl2br(htmlspecialchars($row['refer']));

echo "	<tr>
		<td rowspan=\"4\">$no</td>
		<td rowspan=\"4\">$concept</td>
		<td rowspan=\"4\">$question</td>
		<td>①</td>
		<td>$choice1</td>
		<td rowspan=\"4\">$refer</td>
	</tr>
	<tr>
		<td>②</td>
		<td>$choice2</td>
	</tr>
	<tr>
		<td>③</td>
		<td>$choice3</td>
	</tr>
	<tr>
		<td>④</td>
		<td>$choice4</td>
	</tr>";
  }
?>
</table>
