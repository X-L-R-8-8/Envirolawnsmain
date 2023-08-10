<?php
// Include the setup.php file to establish database connection
require_once 'setup.php';
// Check if the form is submitted
if($_SERVER['REQUEST_METHOD'] === 'POST') {

    
        // Check if all required form fields are filled
    if(isset($_POST['id'], $_POST['fname'], $_POST['lname'], $_POST['email'], $_POST['comment'])) {
        $id = $_POST['id'];
        $fname = $_POST['fname'];
        $lname = $_POST['lname'];
        $email = $_POST['email'];
        $comment = $_POST['comment'];
        
        // Update the record in the "contacts" table
        $query = "UPDATE contacts SET fname = ?, lname = ?, email = ?, comment = ? WHERE id = ?";
        $stmt = mysqli_prepare($conn, $query);
        mysqli_stmt_bind_param($stmt, "ssssi", $fname, $lname, $email, $comment, $id);

                if(mysqli_stmt_execute($stmt)) {
            // Record updated successfully, redirect to admin.php
            mysqli_stmt_close($stmt);
            mysqli_close($conn);
            header("Location: admin.php");
            exit(); // Make sure to exit after the redirect
        } else {
            echo 'Error updating record: ' . mysqli_stmt_error($stmt);
        }
        // Close the statement
        mysqli_stmt_close($stmt);
    } else {
        echo 'All form fields are required.';
    }
} else {
    echo 'Invalid request.';
}

// Close the database connection
mysqli_close($conn);
?>

