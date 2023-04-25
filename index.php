<?php
	$db_host = getenv('DB_HOST');
	$db_user = getenv('DB_USER');
	$db_password = getenv('DB_PASSWORD');
	$db_name = getenv('DB_NAME');
	$conn = new mysqli($db_host, $db_user, $db_password, $db_name);

	if ($conn->connect_error) {
		die("Connection failed: " . $conn->connect_error);
	}

	$result = $conn->query("SELECT * FROM users");
	while ($row = $result->fetch_assoc()) {
		echo $row['id'] . ' ' . $row['name'] . ' ' . $row['address'] . ' ' . $row['position'] . ' ' ."\n";
	}

	// Close connection
	$conn->close();
?>