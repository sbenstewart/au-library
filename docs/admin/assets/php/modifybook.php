<?php
require_once 'dbconfig.php';
$bookid2 = $_POST['bookid1'];
$name2 = $_POST['name1'];
$author2 = $_POST['author1'];
$count2 = $_POST['count1'];
$publisher2 = $_POST['publisher1'];
$edition2 = $_POST['edition1'];
$price2 = $_POST['price1'];
$subject2 = $_POST['subject1'];
$department2 = $_POST['department1'];
$row2 = $_POST['row1'];




try {

  $conn = new PDO("mysql:host=$host;dbname=$dbname", $username, $password);
  $count = $conn->exec("UPDATE book SET name='$name2',author='$author2',count='$count2',remaining='$count2',publisher='$publisher2',edition='$edition2',price='$price2',subject='$subject2',reference='yes',department='$department2',row='$row2' where isbn='$bookid2'");
  echo "Book has been modified.";


} catch (PDOException $pe) {
    die("Could not connect to the server. Please check your internet connection.");
}
 // Connection Closed
?>
