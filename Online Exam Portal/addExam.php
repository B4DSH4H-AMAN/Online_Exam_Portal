<?php
include_once 'database/dbConnection.php';

if($_SERVER['REQUEST_METHOD']=='POST'){
    $subject = $_POST['name'];
    $q1 = $_POST['Question1'];
    $q2 = $_POST['Question2'];
    $q3 = $_POST['Question3'];
    $q4 = $_POST['Question4'];
    $q5 = $_POST['Question5'];
    $q6 = $_POST['Question6'];
    $q7 = $_POST['Question7'];
    $q8 = $_POST['Question8'];
    $q9 = $_POST['Question9'];
    $q10 = $_POST['Question10'];

    $insertQuery = " INSERT INTO `exam paper`(`subject`, `1`, `2`, `3`, `4`, `5`, `6`, `7`, `8`, `9`, `10`) VALUES ('$subject','$q1','$q2','$q3','$q4','$q5','$q6','$q7','$q8','$q9','$q10')  ";
    $result = mysqli_query($dbConnection, $insertQuery);
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="asset/style.css">
    <title>Create a New Exam</title>
</head>
<body>
<h2>Create New Exam Below</h2>
<a href="teacherDashboard.php">Go Back!</a>
<div class="container">
    <form action="" method="post">
    <input type="text" name="name" placeholder="Subject Name">
    <input type="text" name="Question1" placeholder="Enter the Question">
    <input type="text" name="Question2" placeholder="Enter the Question">
    <input type="text" name="Question3" placeholder="Enter the Question">
    <input type="text" name="Question4" placeholder="Enter the Question">
    <input type="text" name="Question5" placeholder="Enter the Question">
    <input type="text" name="Question6" placeholder="Enter the Question">
    <input type="text" name="Question7" placeholder="Enter the Question">
    <input type="text" name="Question8" placeholder="Enter the Question">
    <input type="text" name="Question9" placeholder="Enter the Question">
    <input type="text" name="Question10" placeholder="Enter the Question">
    <button>Submit</button>
    </form>
</div>
</body>
</html>