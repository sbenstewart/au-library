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

  if(isset($_SESSION["admin"]))
  {$name=$_SESSION["admin"];}
  else
  {throw new Exception("<b>You must log in.</b>");}
  $sql = "SELECT COUNT(*) from admin where id='$name'";
  if ($res = $conn->query($sql))
  {
  if ($res->fetchColumn() > 0){}
  else{throw new Exception("<b>You must log in.</b>");}
  }
  else{throw new Exception("<b>You must log in.</b>");}

  $count = $conn->exec("INSERT INTO book (isbn,name,author,count,remaining,publisher,edition,price,subject,reference,department,row) VALUES ('$bookid2','$name2','$author2',1,1,'$publisher2','$edition2',$price2,'$subject2','$count2','$department2','$row2')");
  echo "Book has been inserted.";


} catch(Exception $e) {
  echo  $e->getMessage();
}
 // Connection Closed
?>
