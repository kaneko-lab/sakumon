<?php
  $number = $_POST['number'];
  $filename = "2016prks0" . $number . ".pdf";
  header("Content-Type: application/pdf");
  readfile($filename);
exit();
?>