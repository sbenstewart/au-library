<?php
session_start();
require_once 'dbconfig.php';
$name2 = $_POST['name1'];
$reg2 = $_POST['reg1'];
$email2 = $_POST['email1'];
$phone2 = $_POST['phone1'];
$password2 = $_POST['password1'];
$department2 = $_POST['department1'];
$course2 = $_POST['course1'];
$year2 = $_POST['year1'];


try {

  $conn = new PDO("mysql:host=$host;dbname=$dbname", $username, $password);
  $count = $conn->exec("INSERT INTO user (reg,name,password,course,dept,year,mail,phone) VALUES ('$reg2','$name2','$password2','$course2','$department2','$year2','$email2','$phone2')");
  echo "Student record has been inserted.";


} catch(Exception $e) {
  echo  $e->getMessage();
}
 // Connection Closed
?>
