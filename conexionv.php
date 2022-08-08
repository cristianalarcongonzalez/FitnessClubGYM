<?php
session_start();

$conn = mysqli_connect(
  'localhost',
  'root',
  '',
  'bdfitnessclubgym'
) or die(mysqli_erro($mysqli));

?>
