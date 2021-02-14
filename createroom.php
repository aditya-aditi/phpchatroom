<?php

include "dbconnect.php";
$roomname = $_POST['claimroom'];
$sql = "SELECT * FROM `roomname` WHERE room_name = '$roomname'";
$result = mysqli_query($conn, $sql);
if ($result) {
	if (mysqli_num_rows($result)>0) {
		echo "<script language='javascript'>";
		echo "alert('This room name already exists. Please choose another name');";
		echo "window.location='http://localhost/php chatroom';";
		echo "</script>";

	}
	else{
		$insert_sql = "INSERT INTO `roomname` (`room_name`) VALUES ('$roomname')";
		if (mysqli_query($conn, $insert_sql)) {
			echo $roomname;
			echo "<script language='javascript'>";
			echo "alert('Chatroom is created and you can chat now!');";
			echo "window.location='http://localhost/php chatroom/chatroom.php?roomname=" . $roomname . "';";
			echo "</script>";
		}

	}
}


?>