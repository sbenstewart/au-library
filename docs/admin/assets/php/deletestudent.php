<?php
session_start();
require_once 'dbconfig.php';
$student2 = $_POST['student1'];


try {

  $conn = new PDO("mysql:host=$host;dbname=$dbname", $username, $password);

  $sql = "SELECT id FROM user where reg = '$student2'";
  if ($res = $conn->query($sql)) {
      if ($res->fetchColumn() > 0) {
        foreach ($conn->query("SELECT id FROM user where reg = '$student2'") as $row)
        {
          $userid=$row['id'];
        }
        }
        else {
          throw new Exception("Wrong student register number.");
        }
        }
  $sql = "SELECT COUNT(*) FROM issued where userid=(SELECT id FROM user where reg = '$student2')";
  if ($res = $conn->query($sql)) {
      if ($res->fetchColumn() > 0) {
          throw new Exception("Student has pending books.");
        }
        }
  $count = $conn->exec("DELETE FROM `user` WHERE user.reg = '$student2'");
  echo "Student record has been deleted.";


} catch(Exception $e) {
  echo  $e->getMessage();
}
 // Connection Closed
?>
