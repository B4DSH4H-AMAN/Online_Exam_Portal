<?php
include_once 'database/dbConnection.php';
if($_SERVER['REQUEST_METHOD']=='POST'){
    $errorMessage = "";
    $ID = mysqli_real_escape_string($dbConnection, $_POST['id']);
    $Query = " DELETE FROM `student` WHERE ID = '$ID'  ";
    $result = mysqli_query($dbConnection, $Query);

    if(!$result){
        $errorMessage = 'Something Went Wrong! Could Not Delete';
    }else if($result){
        $errorMessage = 'Succesfully Deleted the Record!';
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
    <title>Student Details</title>
</head>
<body>
    <h2>All Student Records are Here</h2> <a href="adminDashboard.php">Go Back!</a>
    <div class="container">
    <form action="" method="POST">
    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Subject</th>
                <th>Class</th>
            </tr>
        </thead>
        <tbody>
            <?php       
            $Query = "SELECT `ID`, `Name`, `Email`, `Subject`, `Class` FROM `student`";
            $result = mysqli_query($dbConnection, $Query);
            $row = mysqli_num_rows($result);
            if($row > 0){
			while($Details = mysqli_fetch_array($result)){
				echo "<tr>";
				echo "<td>".$Details['ID']."</td>";
				echo "<td>".$Details['Name']."</td>";
				echo "<td>".$Details['Email']."</td>";
				echo "<td>".$Details['Subject']."</td>";
				echo "<td>".$Details['Class']."</td>";
				echo "</tr>";
			  }
            }  
			?>
        </tbody>
    </table>
    <p></p>
            <input type="hidden" name="role" value="Student">
            <input type="text" name="id" placeholder="ENTER STUDENT ID" required>
            <button>DELETE</button>
        </form>
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