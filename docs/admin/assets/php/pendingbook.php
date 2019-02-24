<?php
session_start();
require_once 'dbconfig.php';

try {

  $conn = new PDO("mysql:host=$host;dbname=$dbname", $username, $password);
  $count = 1;
  $name=$_SESSION["name"];

  $sql = "SELECT book.id,book.name,user.name,issued.fine FROM (issued LEFT JOIN user ON issued.userid=user.id) LEFT JOIN book ON book.id = issued.bookid";
  if ($res = $conn->query($sql)) {

      /* Check the number of rows that match the SELECT statement */
      if ($res->fetchColumn() > 0) {

                  echo '<tbody>';
        foreach ($conn->query("SELECT book.id,book.name as bname,user.name as uname,issued.fine FROM (issued LEFT JOIN user ON issued.userid=user.id) LEFT JOIN book ON book.id = issued.bookid") as $row)
        {

          echo "<tr><th scope='row'>";
          echo $count;
          echo "</th><td>";
          $id2 = $row['id'];
          echo $id2;
          echo "</td><td>";
          $bname2 = $row['bname'];
          echo $bname2;
          echo "</td><td>";
          $uname2 = $row['uname'];
          echo $uname2;
          echo "</td><td>";
          $fine2 = $row['fine'];
          echo $fine2;
          echo "</td></tr>";
          $count = $count+1;


          /*session is started if you don't write this line can't use $_Session  global variable*/
        }
        echo "</tbody>";

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
