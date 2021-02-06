<?php
// dbConnection is Variable which stores Database Connection Details.
$dbConnection = mysqli_connect('localhost', 'root', '', 'exam_portal');
// If Database connection Fails it will through an Error with Details and Connection will be closed with Die() Function.
if($dbConnection === false){
    die(mysqli_connect_error());
}
?>