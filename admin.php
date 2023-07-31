<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Services - Enviro Lawns</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
    
    
    <?php 
        // Include the setup.php file to establish database connection
        require_once 'setup.php';

        // Fetch records from the "contacts" table
        $sql = "SELECT * FROM contacts";
        $result = mysqli_query($conn, $sql);

         if (mysqli_num_rows($result) > 0) {

         // Display the records in a table
            echo '<table>';
            echo '<tr><th>First Name</th><th>Last Name</th><th>Email</th><th>Comment</th><th>Actions</th></tr>';

            while ($row = mysqli_fetch_assoc($result)) {
                echo '<tr>';
                echo '<td>' . $row['fname'] . '</td>';
                echo '<td>' . $row['lname'] . '</td>';
                echo '<td>' . $row['email'] . '</td>';
                echo '<td>' . $row['comment'] . '</td>';
                echo '<td><a href="edit.php?id=' . $row['id'] . '">Edit</a> | <a href="delete.php?id=' . $row['id'] .'">Delete</a></td>';

                
                         echo '</tr>';
            }
            echo '</table>';
    
             } else {
        echo 'No records found.';
    }
    
// Close the statement and database connection
 mysqli_stmt_close($stmt);
mysqli_close($conn);

        




// define variables and set to empty values
$fname = $lname = $email = $gender = $comment = $website = "";

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    //we can check each $_POST variable with the test_input() function
  $lname = test_input($_POST["lname"]);
  $fname = test_input($_POST["fname"]);
  $email = test_input($_POST["email"]);
  // $website = test_input($_POST["website"]);
  $comment = test_input($_POST["comment"]);
  $gender = test_input($_POST["gender"]);
}

function test_input($data) {
  $data = trim($data); //Strip unnecessary characters (extra space, tab, newline)
  $data = stripslashes($data);//Remove backslashes (\) from the user input data
  $data = htmlspecialchars($data);// saved as HTML escaped code
  return $data;
}
    
    include "setup.php";
    
    
    
    
$sql = "INSERT INTO contacts (fname, lname, email, comment)
VALUES ('$fname', '$lname', '$email', '$comment')";

if ($conn->query($sql) === TRUE) {
  echo "New record created successfully";
} else {
  echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
?>
    
    
    


    </body>



    