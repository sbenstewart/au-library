<?php
require_once 'dbconfig.php';
$book2 = $_POST['book1'];
$student2 = $_POST['student1'];


try {

  $conn = new PDO("mysql:host=$host;dbname=$dbname", $username, $password);
  $sql = "SELECT id FROM book where isbn = '$book2'";
  if ($res = $conn->query($sql)) {
      if ($res->fetchColumn() > 0) {
        foreach ($conn->query("SELECT id FROM book where isbn = '$book2'") as $row)
        {
          $bookid=$row['id'];
        }
        }
        else {
          throw new Exception("Wrong book id.");
        }
        }
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
  $count = $conn->exec("DELETE FROM issued WHERE userid='$userid' AND bookid='$bookid'");
  echo "Student record has been inserted.";


} catch(Exception $e) {
  echo 'Message: ' .$e->getMessage();
}
 // Connection Closed
?>