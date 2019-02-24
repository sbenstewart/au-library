<?php
session_start();
require_once 'dbconfig.php';
$fine2 = $_POST['fine1'];

try {

  $conn = new PDO("mysql:host=$host;dbname=$dbname", $username, $password);

  $sql = "SELECT value1 from config where key1='fine'";


  if ($res = $conn->query($sql)) {

      /* Check the number of rows that match the SELECT statement */
      if ($res->fetchColumn() > 0) {
        foreach ($conn->query("SELECT value1 from config where key1='fine'") as $row)
        {
          $fine1 = $row['value1'];
          /*session is started if you don't write this line can't use $_Session  global variable*/
        }

        $count = $conn->exec("UPDATE config SET value1='$fine2' where key1='fine'");

        echo "Fine amount changed from $fine1 to $fine2";

        }
        /* No rows matched -- do something else */

        }
        else {
        echo "Submission failed. Try later.";
        }


} catch(Exception $e) {
  echo  $e->getMessage();
}
 // Connection Closed
?>
