<?php
require_once 'dbconfig.php';
$roll2 = $_POST['roll1'];

try {

  $conn = new PDO("mysql:host=$host;dbname=$dbname", $username, $password);
  $count = 1;

  $sql = "SELECT name,course,dept,year,mail,phone FROM user WHERE reg='$roll2'";
  if ($res = $conn->query($sql)) {

      /* Check the number of rows that match the SELECT statement */
      if ($res->fetchColumn() > 0) {
        foreach ($conn->query("SELECT name,course,dept,year,mail,phone FROM user WHERE reg='$roll2'") as $row)
        {

          echo '<tbody>';
          echo "<tr><th scope='row'>";
          echo $count;
          echo "</td><td>";
          $name2 = $row['name'];
          echo $name2;
          echo "</td><td>";
          $course2 = $row['course'];
          echo $course2;
          echo "</td><td>";
          $dept2 = $row['dept'];
          echo $dept2;
          echo "</td><td>";
          $year2 = $row['year'];
          echo $year2;
          echo "</td><td>";
          $mail2 = $row['mail'];
          echo $mail2;
          echo "</td><td>";
          $phone2 = $row['phone'];
          echo $phone2;

          echo "</td></tr></tbody>";
          $count = $count+1;


          /*session is started if you don't write this line can't use $_Session  global variable*/
        }

        }
        /* No rows matched -- do something else */
        else {
        echo "";

        }
        }
        else {
        echo "";
        }


} catch (PDOException $pe) {
    die("Could not connect to the server. Please check your internet connection.");
}
 // Connection Closed
?>
