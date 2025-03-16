<?php
// Database connection settings
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "Portfolio";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Check if form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Get form data
    $name = $_POST['name'];
    $email = $_POST['email'];
    $mobile = $_POST['mobile'];
    $message = $_POST['message'];

    // Prepare and bind
    $stmt = $conn->prepare("INSERT INTO messages (name, email, mobile, message) VALUES (?, ?, ?, ?)");
    $stmt->bind_param("ssss", $name, $email, $mobile, $message);

    // Execute query
    if ($stmt->execute()) {
        // Success: Show alert and redirect
        echo "<script>alert('Data inserted successfully!'); window.location.href = 'index.html';</script>";
    } else {
        // Error: Show alert and redirect
        echo "<script>alert('Error: " . $stmt->error . "'); window.location.href = 'index.html';</script>";
    }

    // Close the statement and connection
    $stmt->close();
    $conn->close();
}
?>
