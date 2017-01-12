<h1>以下の内容で提出します。よろしいでしょうか？</h1>
<h2><font color="red">この画面から入力フォームに戻る場合は下の戻るボタンから戻ってください。</font></h2>
<?php
  $concept = htmlspecialchars($_POST['concept']);
  $question = htmlspecialchars($_POST['question']);
  $choice1 = htmlspecialchars($_POST['choice1']);
  $choice2 = htmlspecialchars($_POST['choice2']);
  $choice3 = htmlspecialchars($_POST['choice3']);
  $choice4 = htmlspecialchars($_POST['choice4']);
  $choice_a = htmlspecialchars($_POST['choice_a']);
  $study1 = htmlspecialchars($_POST['study1']);
  $study2 = htmlspecialchars($_POST['study2']);
  $study3 = htmlspecialchars($_POST['study3']);
  $study4 = htmlspecialchars($_POST['study4']);
  $refer = htmlspecialchars($_POST['refer']);
?>

<h2>問題の内容</h2>
<?php echo nl2br($concept); ?><br>

<h2>問題文</h2>
<?php echo nl2br($question); ?><br><br><br><br>

<h2>選択肢・正解・解説</h2>

<table border="5">
	<tbody>
		<tr>
			<td colspan="2">選択肢</td>
			<td>正解</td>
			<td>解説</td>
		</tr>
		<tr>
			<td>①</td>
			<td><?php echo nl2br($choice1); ?></td>
			<td><?php if($choice_a == 1)echo "●"; ?></td>
			<td><?php echo nl2br($study1); ?></td>
		</tr>
		<tr>
			<td>②</td>
			<td><?php echo nl2br($choice2); ?></td>
			<td><?php if($choice_a == 2)echo "●"; ?></td>
			<td><?php echo nl2br($study2); ?></td>
		</tr>
		<tr>
			<td>③</td>
			<td><?php echo nl2br($choice3); ?></td>
			<td><?php if($choice_a == 3)echo "●"; ?></td>
			<td><?php echo nl2br($study3); ?></td>
		</tr>
		<tr>
			<td>④</td>
			<td><?php echo nl2br($choice4); ?></td>
			<td><?php if($choice_a == 4)echo "●"; ?></td>
			<td><?php echo nl2br($study4); ?></td>
		</tr>
	</tbody>
</table>


<h2>参考資料</h2>
<?php echo nl2br($refer); ?><br><br><br><br>

<form action="form.php" method="post" style="display: inline">
  <input type="hidden" name="concept" value="<?php echo $concept ?>">
  <input type="hidden" name="question" value="<?php echo $question ?>">
  <input type="hidden" name="choice1" value="<?php echo $choice1 ?>">
  <input type="hidden" name="choice2" value="<?php echo $choice2 ?>">
  <input type="hidden" name="choice3" value="<?php echo $choice3 ?>">
  <input type="hidden" name="choice4" value="<?php echo $choice4 ?>">
  <input type="hidden" name="choice_a" value="<?php echo $choice_a ?>">
  <input type="hidden" name="study1" value="<?php echo $study1 ?>">
  <input type="hidden" name="study2" value="<?php echo $study2 ?>">
  <input type="hidden" name="study3" value="<?php echo $study3 ?>">
  <input type="hidden" name="study4" value="<?php echo $study4 ?>">
  <input type="hidden" name="refer" value="<?php echo $refer ?>">
  <input type="submit" value="戻る">
</form>



<form action="confirm.php" method="post" style="display: inline">
  <input type="hidden" name="concept" value="<?php echo $concept ?>">
  <input type="hidden" name="question" value="<?php echo $question ?>">
  <input type="hidden" name="choice1" value="<?php echo $choice1 ?>">
  <input type="hidden" name="choice2" value="<?php echo $choice2 ?>">
  <input type="hidden" name="choice3" value="<?php echo $choice3 ?>">
  <input type="hidden" name="choice4" value="<?php echo $choice4 ?>">
  <input type="hidden" name="choice_a" value="<?php echo $choice_a ?>">
  <input type="hidden" name="study1" value="<?php echo $study1 ?>">
  <input type="hidden" name="study2" value="<?php echo $study2 ?>">
  <input type="hidden" name="study3" value="<?php echo $study3 ?>">
  <input type="hidden" name="study4" value="<?php echo $study4 ?>">
  <input type="hidden" name="refer" value="<?php echo $refer ?>">
  <input type="submit" value="提出">
</form>

<br><br><br><br><br><br><br><br><br><br><br>