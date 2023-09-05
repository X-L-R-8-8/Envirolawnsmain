<?php

session_start();
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);
include ("../setup.php");

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Get data from the form
    $user_id = 1; // Replace with your user authentication logic
    $event_date = $_POST['event_date'];
    $start_time = $_POST['start_time'];
    $end_time = $_POST['end_time'];
    $description = $_POST['description'];

    // Insert data into the database
    $sql = "INSERT INTO bookings (user_id, event_date, start_time, end_time, description) VALUES (?, ?, ?, ?, ?)";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("issss", $user_id, $event_date, $start_time, $end_time, $description);
    
    if ($stmt->execute()) {
        // Booking was successful
        echo "Booking successful!";
    } else {
        // Handle the error
        echo "Error: " . $stmt->error;
    }
    
    // Close the database connection
$conn->close();
}
?>

