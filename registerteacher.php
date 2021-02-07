<?php 
include_once 'common/glowbutton.php';  

session_start();
include_once 'database/dbConnection.php';

if($_SERVER['REQUEST_METHOD']=='POST'){
    // For all the Error Message which may occur
    $errorMessage = "";

    // Fetching Values from HTML Form via POST method and filtering out SQL script using mysqli_real_escape_string function and passing parameter of Database connection
    $name = mysqli_real_escape_string($dbConnection, $_POST['name']);
    $subject = mysqli_real_escape_string($dbConnection, $_POST['subject']);
    $qualification = mysqli_real_escape_string($dbConnection, $_POST['Qualification']);
    $email = mysqli_real_escape_string($dbConnection, $_POST['email']);
    $pass = mysqli_real_escape_string($dbConnection, $_POST['password']);

    // We need to Store Password into Hash form for Security
    $pass = password_hash($pass, PASSWORD_DEFAULT);

    // Now We will check if the Email Entered already Exist in Database
    $emailCheck = " SELECT*FROM `teacher` WHERE email = '$email' ";
    $emailFound = mysqli_query($dbConnection, $emailCheck);
    if($emailFound->num_rows == 1){
        $errorMessage = "This Email is already registered";
    }else{
        // Inserting the Details of Student if the Data does not Exist in Database
        $insertQuery = " INSERT INTO `teacher`( `Name`, `Subject`, `Qualification`, `Email`, `Password`)  VALUES ('$name','$subject','$qualification','$email','$pass') ";
        $result = mysqli_query($dbConnection, $insertQuery);
        if($result == true){
            $errorMessage = "Teacher Registration Succeed!";
        }else{
            $errorMessage = "Teacher Registration Failed. Please Try Again!";
        }
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="asset/style.css">
    <title>Teacher - Register Form</title>
</head>
<body>
    <h2>Register Teacher Here - </h2> <a href="">Go Back!</a>
    <div class="container">
        <div class="form-container sign-in-container">
            <form action="" method="post">
                <h1>Teacher Details</h1>
                <input type="text" name="name" id="" placeholder="Teacher Name" required>
                <input type="text" name="subject" id="" placeholder="Subject" value="" >
                <input type="text" name="Qualification" id="" placeholder="Qualification"value="" >
                <input type="email" name="email" id="" placeholder="Email Address" required>
                <input type="password" name="password" id="" placeholder="Password" required>
                <?php echo $register;  ?>
            </form>
        </div>
        <div class="overlay-container">
            <div class="overlay">
                <div class="overlay-panel overlay-right">
                    <h1>Welcome Teacher</h1>
                    <p>We are glad you are a part of our School Staff.</p>
                </div>
            </div>
        </div>
    </div>
    <?php 

    if(isset($errorMessage)){
        echo '<div class="alert success">
               <span class="closebtn">&times;</span>  
               <strong>ALERT !</strong> '.$errorMessage.'
             </div>';
    }
    include_once 'common/footer.php';
    include_once 'common/alert.php';  
    ?>
</body>
</html>