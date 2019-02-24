<?php
session_start();
require_once 'dbconfig.php';
$book2 = $_POST['book1'];


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

  $count = $conn->exec("UPDATE book SET reference='No' WHERE isbn='$book2'");
  echo "Book has been made a non-Reference copy.";


} catch(Exception $e) {
  echo  $e->getMessage();
}
 // Connection Closed
?>
