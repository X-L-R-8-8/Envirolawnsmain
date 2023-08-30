<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Services - Enviro Lawns</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
    
    
    

<?php include("banner.php"); ?>




    <!-- Main content section -->
    <main>
        <div class="container">
            
    
<div class="text-wrapper">

    
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

        
?>



        </div>
        </div>
    </main>

    
    


    </body>



    