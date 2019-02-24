<?php
session_start();
require_once 'dbconfig.php';

try {

  $conn = new PDO("mysql:host=$host;dbname=$dbname", $username, $password);
  $count = 1;
  $name=$_SESSION["name"];

  $sql = "SELECT * FROM book LEFT JOIN issued ON book.id = issued.bookid AND issued.bookid = (SELECT bookid FROM issued WHERE userid = (SELECT id from user where reg='$name'))";
  if ($res = $conn->query($sql)) {

      /* Check the number of rows that match the SELECT statement */
      if ($res->fetchColumn() > 0) {

        foreach ($conn->query("SELECT book.isbn,book.name,book.author,history.returndate FROM history LEFT JOIN book ON book.id = history.bookid AND history.bookid = (SELECT bookid FROM history WHERE userid = (SELECT id from user where reg='$name'))") as $row)
        {

          echo '<tbody>';
          echo "<tr><th scope='row'>";
          echo $count;
          echo "</th><td>";
          $isbn2 = $row['isbn'];
          echo $isbn2;
          echo "</td><td>";
          $name2 = $row['name'];
          echo $name2;
          echo "</td><td>";
          $author2 = $row['author'];
          echo $author2;
          echo "</td><td>";
          $temp2 = $row['returndate'];
          echo $temp2;
          echo "</td><td>";
          $availability = 'Yes';
          echo $availability;
          echo "</td></tr></tbody>";
          $count = $count+1;


          /*session is started if you don't write this line can't use $_Session  global variable*/
        }

        foreach ($conn->query("SELECT book.isbn,book.name,book.author,issued.returndate FROM issued LEFT JOIN book ON book.id = issued.bookid AND issued.bookid = (SELECT bookid FROM issued WHERE userid = (SELECT id from user where reg='$name'))") as $row)
        {

          echo '<tbody>';
          echo "<tr><th scope='row'>";
          echo $count;
          echo "</th><td>";
          $isbn2 = $row['isbn'];
          echo $isbn2;
          echo "</td><td>";
          $name2 = $row['name'];
          echo $name2;
          echo "</td><td>";
          $author2 = $row['author'];
          echo $author2;
          echo "</td><td>";
          $temp2 = $row['returndate'];
          echo $temp2;
          echo "</td><td>";
          $availability = 'No';
          echo $availability;
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
