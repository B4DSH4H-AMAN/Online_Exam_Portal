<?php include_once 'server/urlPatch.php'; 

if($_SESSION['Role'] == 'Student'){
    $dashBoard = 'studentDashboard.php';
}else if($_SESSION['Role'] == 'Teacher'){
    $dashBoard = 'teacherDashboard.php';
    
}else if($_SESSION['Role'] == 'Admin'){
    $dashBoard = 'adminDashboard.php';

}

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="asset/profile.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css" integrity="sha384-gfdkjb5BdAXd+lj+gudLWI+BXq4IuLW5IT+brZEZsLFm++aCMlF1V92rMkPaX4PP" crossorigin="anonymous">
    <title><?php echo ucwords($_SESSION['Name']); ?> - Profile</title>
</head>
<body>
    <main class="profile">
        <div class="profile-bg"></div>
        <section class="container">
            <aside class="profile-image">
                <a href="" class="camera">
                    <i class="fas fa-camera"></i>
                    <img src="asset/img/beetlejuice.jpg" alt="" srcset="">
                </a>
            </aside>
            <section class="profile-info">
                <h1 class="first-name"><?php echo ucwords($_SESSION['Name']); ?></h1>
                <h2>GREETING</h2>
                <p>Hello, Hope you are doing great and staying Healthy, We will hope you are utilizing your time 🌼. Peace SCHOOL ONLINE EXAM PROTAL🌱 Happy to be here! 🌿</p>
                <a href="<?php echo $dashBoard  ?>">Go Back!</a>
            </section>
        </section>
        <section class="statistics">
            <button class="icon arrow left"></button>
            <button class="icon arrow right"></button>
            <p><strong>ID</strong> <?php echo ucwords($_SESSION['ID']); ?> </p>
            <p><strong>Role</strong> <?php echo ucwords($_SESSION['Role']); ?> </p>
            <p><strong>Email</strong> <?php echo ucwords($_SESSION['Email']); ?> </p>
            <?php
            if(isset($_SESSION['Subject'])){
                echo " <p><strong>Subject </strong>" .$_SESSION['Subject']." </p>";
            }
            ?>
            <?php
            if(isset($_SESSION['Qualification'])){
                echo " <p><strong>Qualification </strong>" .$_SESSION['Qualification']." </p>";
            }
            ?>
          </section>
    </main>
</body>
</html>