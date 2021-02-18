<?php

include_once '../database/dbConnection.php';

if($_SERVER['REQUEST_METHOD']=='POST'){
    $subject = $_POST['name'];
    $q1 = $_POST['Answer1'];
    $q2 = $_POST['Answer2'];
    $q3 = $_POST['Answer3'];
    $q4 = $_POST['Answer4'];
    $q5 = $_POST['Answer5'];
    $q6 = $_POST['Answer6'];
    $q7 = $_POST['Answer7'];
    $q8 = $_POST['Answer8'];
    $q9 = $_POST['Answer9'];
    $q10 = $_POST['Answer10'];

    $insertQuery = " INSERT INTO `exam answer`(`subject`, `1`, `2`, `3`, `4`, `5`, `6`, `7`, `8`, `9`, `10`) VALUES ('$subject','$q1','$q2','$q3','$q4','$q5','$q6','$q7','$q8','$q9','$q10')  ";
    $result = mysqli_query($dbConnection, $insertQuery);
    header("location: ../studentDashboard.php");
}






































?>