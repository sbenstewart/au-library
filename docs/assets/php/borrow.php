<?php session_start();
require_once 'dbconfig.php';
$book2 = $_POST['book1'];
$author2 = $_POST['author1'];
$code2 = $_POST['code1'];

try {

  $conn = new PDO("mysql:host=$host;dbname=$dbname", $username, $password);
  $count = 1;



  if(isset($_SESSION["userid"]))
  {
    $user = $_SESSION["userid"];
  }

  $sql = "SELECT COUNT(*) FROM book LEFT JOIN issued ON book.id = issued.bookid WHERE issued.userid='$user'";
  if ($res = $conn->query($sql)) {

      if ($res->fetchColumn() > 0) {
        foreach ($conn->query("SELECT isbn,name,author,if(CURDATE()<returndate,"NO","YES") as returned FROM book LEFT JOIN issued ON book.id = issued.bookid WHERE issued.userid='$user'") as $row)
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
          $returned = $row['returned'];
          echo $returned;
          echo "</td></tr></tbody>";
          $count = $count+1;


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
