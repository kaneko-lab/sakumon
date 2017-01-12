<h2>問題、解答・解説一覧</h2>

<table border="1">
<tr>
	<td>No.</td>
	<td>問題の内容</td>
	<td>問題</td>
	<td colspan="2">選択肢</td>
	<td>正解</td>
	<td>解説</td>
	<td>参考資料</td>
</tr>


<?php
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
    $choice_a = nl2br(htmlspecialchars($row['choice_a']));
    $study1 = nl2br(htmlspecialchars($row['study1']));
    $study2 = nl2br(htmlspecialchars($row['study2']));
    $study3 = nl2br(htmlspecialchars($row['study3']));
    $study4 = nl2br(htmlspecialchars($row['study4']));
    $refer = nl2br(htmlspecialchars($row['refer']));

  $correct=array("","","","");

switch($choice_a){
 case 1:
 $correct[0] = "●";
 break;
 case 2:
 $correct[1] = "●";
 break;
 case 3:
 $correct[2] = "●";
 break;
 case 4:
 $correct[3] = "●";
 break;
}

echo "	<tr>
		<td rowspan=\"4\">$no</td>
		<td rowspan=\"4\">$concept</td>
		<td rowspan=\"4\">$question</td>
		<td>①</td>
		<td>$choice1</td>
		<td>$correct[0]</td>
		<td>$study1</td>
		<td rowspan=\"4\">$refer</td>
	</tr>
	<tr>
		<td>②</td>
		<td>$choice2</td>
		<td>$correct[1]</td>
		<td>$study2</td>
	</tr>
	<tr>
		<td>③</td>
		<td>$choice3</td>
		<td>$correct[2]</td>
		<td>$study3</td>
	</tr>
	<tr>
		<td>④</td>
		<td>$choice4</td>
		<td>$correct[3]</td>
		<td>$study4</td>
	</tr>";
  }
?>
</table>
