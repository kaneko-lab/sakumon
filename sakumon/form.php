<html>
<head>
<script language="JavaScript"><!--
function setData()
{
	nameList = document.sakumon.question.value;
	nData = "";
	nData = nameList;
	parent.copy_qa.printData(nData);
}

function setData1()
{
	nameList1 = document.sakumon.choice1.value;
	nameList2 = document.sakumon.choice2.value;
	nameList3 = document.sakumon.choice3.value;
	nameList4 = document.sakumon.choice4.value;
	nData1 = "";
	nData2 = "";
	nData3 = "";
	nData4 = "";
	nData1 = nameList1;
	nData2 = nameList2;
	nData3 = nameList3;
	nData4 = nameList4;
	parent.copy_qa.printData1(nData1, nData2, nData3, nData4);
}
// --></script>
</head>

<?php
  $concept='第○回に関する問題';
  $question='';
  $choice1='';
  $choice2='';
  $choice3='';
  $choice4='';
  $choice_a='';
  $study1='';
  $study2='';
  $study3='';
  $study4='';
  $refer='';

if ($_POST) {
    $concept = $_POST["concept"];
}

if ($_POST) {
    $question = $_POST["question"];
}

if ($_POST) {
    $choice1 = $_POST["choice1"];
}
if ($_POST) {
    $choice2 = $_POST["choice2"];
}
if ($_POST) {
    $choice3 = $_POST["choice3"];
}
if ($_POST) {
    $choice4 = $_POST["choice4"];
}
if ($_POST) {
    $choice_a = $_POST["choice_a"];
}
if ($_POST) {
    $study1 = $_POST["study1"];
}
if ($_POST) {
    $study2 = $_POST["study2"];
}
if ($_POST) {
    $study3 = $_POST["study3"];
}
if ($_POST) {
    $study4 = $_POST["study4"];
}
if ($_POST) {
    $refer = $_POST["refer"];
}
?>

<h2 id="concept">問題にする内容をまとめる</h2>
第何回の講義に関する問題を作るのか、その出題意図やキーワードを記入しましょう。

<form action="verify.php" method="post" name="sakumon">
  <textarea name="concept" cols="60" rows="15"><?php echo $concept; ?>
</textarea><br><br><br><br>

<br><br><br><br><br><br><br><br><br><br><br>
<br><br><br><br><br><br><br><br><br><br><br>
<br><br><br><br><br><br><br><br><br><br><br>
<br><br><br><br><br><br><br><br><br><br><br>

<h2 id="question">問題文の作成</h2>
問題文を入力しましょう。<br>
  <textarea name="question" cols="60" rows="15" onblur="setData()"><?php echo $question; ?>
</textarea><br><br>

<br><br><br><br>

<br><br><br><br><br><br><br><br><br><br><br>
<br><br><br><br><br><br><br><br><br><br><br>
<br><br><br><br><br><br><br><br><br><br><br>
<br><br><br><br><br><br><br><br><br><br><br>



<h2 id="answer">解答の作成</h2>
選択肢と正解の選択肢を4択で入力しましょう。<br>
①
<textarea name="choice1" cols="60" rows="5" onblur="setData1()"><?php echo $choice1; ?>
</textarea><br><br>
②
<textarea name="choice2" cols="60" rows="5" onblur="setData1()"><?php echo $choice2; ?>
</textarea><br><br>
③
<textarea name="choice3" cols="60" rows="5" onblur="setData1()"><?php echo $choice3; ?>
</textarea><br><br>
④
<textarea name="choice4" cols="60" rows="5" onblur="setData1()"><?php echo $choice4; ?>
</textarea><br><br>

正解<br>
<input type="radio" name="choice_a" value="1" <?php echo ($choice_a == 1) ? "checked" : ""; ?> >1
<input type="radio" name="choice_a" value="2" <?php echo ($choice_a == 2) ? "checked" : ""; ?> >2
<input type="radio" name="choice_a" value="3" <?php echo ($choice_a == 3) ? "checked" : ""; ?> >3
<input type="radio" name="choice_a" value="4" <?php echo ($choice_a == 4) ? "checked" : ""; ?> >4
<br><br>


<br><br><br><br><br><br><br><br><br><br><br>
<br><br><br><br><br><br><br><br><br><br><br>
<br><br><br><br><br><br><br><br><br><br><br>
<br><br><br><br><br><br><br><br><br><br><br>

<h2 id="study">解説の作成</h2>
解説を入力しましょう。<br>
正解の選択肢に対してはその根拠、<br>
間違えた選択肢に対してはどこが誤っているかなどを記入しましょう。<br><br>
①<br>
<textarea name="study1" cols="60" rows="5"><?php echo $study1; ?>
</textarea><br><br>

②<br>
<textarea name="study2" cols="60" rows="5"><?php echo $study2; ?>
</textarea><br><br>

③<br>
<textarea name="study3" cols="60" rows="5"><?php echo $study3; ?>
</textarea><br><br>

④<br>
<textarea name="study4" cols="60" rows="5"><?php echo $study4; ?>
</textarea><br><br><br><br>

<br><br><br><br><br><br><br><br><br><br><br>
<br><br><br><br><br><br><br><br><br><br><br>
<br><br><br><br><br><br><br><br><br><br><br>
<br><br><br><br><br><br><br><br><br><br><br>

<h3 id="refer">参考資料</h3>
参考にした資料等があれば入力しましょう。<br>
<textarea name="refer" cols="60" rows="5"><?php echo $refer; ?>
</textarea><br><br>

</form>
</html>