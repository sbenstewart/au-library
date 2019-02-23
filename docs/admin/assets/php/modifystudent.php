<?php
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
  $count = $conn->exec("UPDATE user SET name='$name2',password='$password2',course='$course2',dept='$department2',year='$year2',mail='$email2',phone='$phone2' where reg='$reg2'");
  echo "Student record has been modified.";


} catch (PDOException $pe) {
    die("Could not connect to the server. Please check your internet connection.");
}
 // Connection Closed
?>
