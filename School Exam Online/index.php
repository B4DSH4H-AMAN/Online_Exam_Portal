<?php 
include_once 'common/glowbutton.php';  
session_start();

include_once 'database/dbConnection.php';
if(isset($_SESSION['ID'])){
    if($_SESSION['Role'] == 'Student'){
        header("Location: studentDashboard.php");
    }else if($_SESSION['Role'] == 'Teacher'){
        header("Location: teacherDashboard.php");
    }else if($_SESSION['Role'] == 'Admin'){
        header("Location: adminDashboard.php");
    }
}

if($_SERVER['REQUEST_METHOD']=='POST'){
        // For all the Error Message which may occur
        $errorMessage = $role = "";
        // Fetching Values from HTML Form via POST method and filtering out SQL script using mysqli_real_escape_string function and passing parameter of Database connection
        $email = mysqli_real_escape_string($dbConnection, $_POST['email']);
        $pass = mysqli_real_escape_string($dbConnection, $_POST['password']);
        $role = mysqli_real_escape_string($dbConnection, $_POST['role']);
        // Now We will check if the Email and Password Entered already Exist in Database
        $query = " SELECT*FROM `$role` WHERE email = '$email' ";
        $result = mysqli_query($dbConnection, $query);
        if(mysqli_num_rows($result)==1){
            while($row = mysqli_fetch_assoc($result)){
                if(password_verify($pass, $row['Password'])){
                    $_SESSION['ID'] = $row['ID'];
                    $_SESSION['Email'] = $row['Email'];
                    $_SESSION['Name'] = $row['Name'];
                    $_SESSION['Role'] = $role;
                    
                    if($role == 'Student'){
                        $_SESSION['Subject'] = $row['Subject'];
                        header("Location: studentDashboard.php");
                    }else if($role == 'Teacher'){
                        $_SESSION['Subject'] = $row['Subject'];
                        $_SESSION['Qualification'] = $row['Qualification'];
                        header("Location: teacherDashboard.php");
                    }else if($role == 'Admin'){
                        header("Location: adminDashboard.php");
                    }
                }else{
                    $errorMessage = "Email or Password is Incorrect";
                }
            }
        }else{
            $errorMessage = "You are not Registered";
        }
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="asset/style.css">
    <title>Welcome - Login to Start</title>
</head>
<body>
    <h2>Welcome to Online Exams Portal</h2>
    <div class="container" id="container">
        <div class="form-container sign-up-container">
            <form action="" method="post" id="form">
                <h1>Student Login</h1>
                <span>Use your official credential</span>
                <input type="hidden" name="role" value="Student">
                <input type="email" name="email" placeholder="Enter Your Email" required>
                <input type="password" name="password" placeholder="Enter Your Password" required>
                <?php echo $signIn;  ?>
            </form>
        </div>
        <div class="form-container sign-in-container">
            <form action="" method="post" id="form">
                <h1>Teacher Login</h1>
                <span>Use your official credential</span>
                <input type="hidden" name="role" value="Teacher">
                <input type="email" name="email" placeholder="Enter Your Email" required>
                <input type="password" name="password" placeholder="Enter Your Password" required>
                <?php echo $signIn;  ?>
            </form>
        </div>
        <div class="overlay-container">
            <div class="overlay">
                <div class="overlay-panel overlay-left">
                    <h1>Hello, Teacher!</h1>
                    <p>Enter your official details and do Management</p>
				    <button class="ghost" id="signIn">Click Here</button>
                </div>
                <div class="overlay-panel overlay-right">
				    <h1>Hello, Admin!</h1>
				    <p>Enter your official details to manage and <a href="adminLogin.php">Login here!</a></p>
				    <button class="ghost" id="signUp">Student Here</button>
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