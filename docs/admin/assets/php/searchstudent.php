<?php
require_once 'dbconfig.php';
$roll2 = $_POST['roll1'];

try {

  $conn = new PDO("mysql:host=$host;dbname=$dbname", $username, $password);
  $count = 1;

  $sql = "SELECT * FROM book LEFT JOIN issued ON book.id = issued.bookid AND issued.bookid = (SELECT bookid FROM issued WHERE userid = (SELECT id from user where reg='$roll2'))";
  if ($res = $conn->query($sql)) {

      /* Check the number of rows that match the SELECT statement */
      if ($res->fetchColumn() > 0) {
        foreach ($conn->query("SELECT book.isbn,book.name,issued.returndate,issued.fine FROM book INNER JOIN issued ON book.id = issued.bookid AND issued.bookid = (SELECT bookid FROM issued WHERE userid = (SELECT id from user where reg='$roll2'))") as $row)
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
          $temp2 = $row['returndate'];
          echo $temp2;
          echo "</td><td>";
          $remaining2 = $row['remaining'];
          $availability = 'Yes';
          if($remaining2==0)
          {$availability='No';}
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
