<?php
require_once 'dbconfig.php';
try {
    $conn = new PDO("mysql:host=$host;dbname=$dbname", $username, $password);
      $sql = "SELECT book.id,book.isbn,book.name,book.author,book.count,book.remaining,book.publisher,book.edition,book.price,book.subject,book.reference,book.department,book.row FROM book";
      //Prepare our SQL query.
      $statement = $conn->prepare($sql);
      //Executre our SQL query.
      $statement->execute();
      //Fetch all of the rows from our MySQL table.
      $rows = $statement->fetchAll(PDO::FETCH_ASSOC);
      //Get the column names.
      $columnNames = array();
      if(!empty($rows)){
          //We only need to loop through the first row of our result
          //in order to collate the column names.
          $firstRow = $rows[0];
          foreach($firstRow as $colName => $val){
              $columnNames[] = $colName;
          }
      }
      //Setup the filename that our CSV will have when it is downloaded.
      $fileName = 'books.csv';
      ob_clean();
      header("Pragma: no-cache");
      header('Content-Type: application/octet-stream');
      header('Content-Disposition: attachment;filename=books.csv');

      //Open up a file pointer
      $fp = fopen('php://output', 'w');

      //Start off by writing the column names to the file.
      fputcsv($fp, $columnNames);

      //Then, loop through the rows and write them to the CSV file.
      foreach ($rows as $row) {
          fputcsv($fp, $row);
}
//Close the file pointer.
fclose($fp);
} catch (PDOException $pe) {
    die("Could not connect to the database $dbname :" . $pe->getMessage());
}
 // Connection Closed
?>