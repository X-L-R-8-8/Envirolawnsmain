<?php
// Include the setup.php file to establish the database connection
require_once 'setup.php';

// Check if the 'id' parameter is set in the URL
if (isset($_GET['id'])) {
    // Get the 'id' parameter from the URL
    $id = $_GET['id'];

    // Check if the user has confirmed the deletion
    if (isset($_POST['confirm'])) {
        // If confirmed, proceed with the deletion
        if ($_POST['confirm'] === 'yes') {
            // Prepare a SQL statement to delete the record with the specified 'id'
            $sql = "DELETE FROM contacts WHERE id = ?";

            // Prepare and execute the SQL statement with a prepared statement
            if ($stmt = mysqli_prepare($conn, $sql)) {
                // Bind the 'id' parameter as an integer
                mysqli_stmt_bind_param($stmt, "i", $id);

                // Execute the statement
                if (mysqli_stmt_execute($stmt)) {
                    // Redirect back to the admin page after successful deletion
                    header("Location: admin.php");
                    exit;
                } else {
                    // If there was an error executing the SQL statement, you can handle it here
                    echo "Error: " . mysqli_error($conn);
                }

                // Close the statement
                mysqli_stmt_close($stmt);
            }
        } else {
            // If the user didn't confirm, redirect back to the admin page
            header("Location: admin.php");
            exit;
        }
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Delete Record - Enviro Lawns</title>
</head>
<body>
    <h1>Delete Record</h1>
    <p>Are you sure you want to delete this record?</p>
    <form method="post">
        <input type="hidden" name="confirm" value="yes">
        <input type="submit" value="Yes">
    </form>
    <form method="post">
        <input type="hidden" name="confirm" value="no">
        <input type="submit" value="No">
    </form>
</body>
</html>