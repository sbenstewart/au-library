<?php
require_once 'dbconfig.php';
$roll2 = $_POST['roll1'];

function random_num($size) {
	$alpha_key = '';
	$keys = range('A', 'Z');

	for ($i = 0; $i < 2; $i++) {
		$alpha_key .= $keys[array_rand($keys)];
	}

	$length = $size - 2;

	$key = '';
	$keys = range(0, 9);

	for ($i = 0; $i < $length; $i++) {
		$key .= $keys[array_rand($keys)];
	}

	return $alpha_key . $key;
}

$code=random_num(6);

try {
    $conn = new PDO("mysql:host=$host;dbname=$dbname", $username, $password);
    //echo "Connected to $dbname at $host successfully.";
    $sql = "SELECT COUNT(*) from user where reg='$roll2'";
    if ($res = $conn->query($sql)) {

        /* Check the number of rows that match the SELECT statement */
        if ($res->fetchColumn() > 0) {

					$code = password_hash($code, PASSWORD_BCRYPT);
          $count = $conn->exec("update user set password='$code' where reg='$roll2'");
          //echo "New password is $code";

					foreach ($conn->query("SELECT mail from admin where reg='$roll2'") as $row)
	        {
	          $mail2 = $row['mail'];
	        }

					$to   = $mail2;
					$from = 'him@sbenstewart.in';

					$subject = "Password Changed";

					$headers = "From: " . $from . "\r\n";
					$headers .= "Reply-To: ". $from . "\r\n";
					$headers .= "CC: your_email\r\n";
					$headers .= "MIME-Version: 1.0\r\n";
					$headers .= "Content-Type: text/html; charset=ISO-8859-1\r\n";

					$message = '<html><body>';
					$message .= '<h1>CEG Hostel Library</h1>';
					$message .= "Password is $code. Please use this password for logging into the website.";
					$message .= "</body></html>";

					mail($to, $subject, $message, $headers);

					echo "Password has been mailed.";


        }
        else {
            echo "No such mail id found in the server. Please register.";
        }

    }


} catch (PDOException $pe) {
    die("Could not connect to the server. Please check your internet connection.");
}
 // Connection Closed
?>
