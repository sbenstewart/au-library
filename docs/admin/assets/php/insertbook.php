<?php
session_start();
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
  $count = $conn->exec("INSERT INTO book (isbn,name,author,count,remaining,publisher,edition,price,subject,reference,department,row) VALUES ('$bookid2','$name2','$author2',$count2,$count2,'$publisher2','$edition2',$price2,'$subject2','yes','$department2','$row2')");
  echo "Book has been inserted.";


} catch(Exception $e) {
  echo  $e->getMessage();
}
 // Connection Closed
?>
