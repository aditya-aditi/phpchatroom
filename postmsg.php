<?php 


include 'dbconnect.php';

$msg = $_POST['text'];
$room = $_POST['room'];
$ip = $_POST['ip'];

$sql = "INSERT INTO `msg` (`message`, `ip`, `room`) VALUES ('$msg', '$ip', '$room')";
mysqli_query($conn, $sql);


?>