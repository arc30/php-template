<?php

$url = parse_url(getenv("CLEARDB_DATABASE_URL"));

$servername = $url["host"];
$username = $url["user"];
$password = $url["pass"];
$db = substr($url["path"], 1);

// Create connection
$conn = new mysqli($servername, $username, $password, $db);
// Check connection
if ($conn->connect_error) {
    echo "Error creating database: " . $conn->connect_error;
    die("Connection failed: " . $conn->connect_error);
} else {
    echo "Database created successfully";
}

$conn->close();
?> 
