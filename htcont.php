<?php

$room = $_POST['room'];
include 'dbconnect.php';
$sql = "SELECT message, timestamp, ip FROM msg WHERE room = '$room'";

$res = "";
$result = mysqli_query($conn, $sql);
if (mysqli_num_rows($result)>0) 
{
	while ($row = mysqli_fetch_assoc($result))
	{
		$res = $res . "<div class='container'>";
		$res = $res . '<img src="img/user.png" alt="Avatar" style="width:100%;">';
		$res = $res . $row['ip'];
		$res = $res . " says <p>". $row['message'];
		$res = $res . "</p> <span class='time-right'>" . $row['timestamp'];
		$res = $res . "</span> </div>";
	}
}

echo $res;

?>