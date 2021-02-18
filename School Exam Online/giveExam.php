<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="asset/style.css">
    <title>Online Exam</title>
</head>
<body>
    <h2>All the Best for Exams</h2>
    <div class="container">
    <?php
    include_once 'database/dbConnection.php';
    $query = " SELECT * FROM `exam paper`   ";
    $result = mysqli_query($dbConnection, $query);
    $row = mysqli_num_rows($result);
    if($row > 0){
      while($Details = mysqli_fetch_array($result)){ ?>
          <form action="server/submitExam.php" method="post">
          <h2><?php echo $Details['subject'] ?> </h2>
          <input type="hidden" name="name" value="<?php echo $Details['subject'] ?> ">
          <label>1. <?php echo $Details['1'] ?> </label>
          <input type="text" name="Answer1" id="">
          <label>2. <?php echo $Details['2'] ?> </label>
          <input type="text" name="Answer2" id="">
          <label>3. <?php echo $Details['3'] ?> </label>
          <input type="text" name="Answer3" id="">
          <label>4. <?php echo $Details['4'] ?> </label>
          <input type="text" name="Answer4" id="">
          <label>5. <?php echo $Details['5'] ?> </label>
          <input type="text" name="Answer5" id="">
          <label>6. <?php echo $Details['6'] ?> </label>
          <input type="text" name="Answer6" id="">
          <label>7. <?php echo $Details['7'] ?> </label>
          <input type="text" name="Answer7" id="">
          <label>8. <?php echo $Details['8'] ?> </label>
          <input type="text" name="Answer8" id="">
          <label>9. <?php echo $Details['9'] ?> </label>
          <input type="text" name="Answer9" id="">
          <label>10. <?php echo $Details['10'] ?> </label>
          <input type="text" name="Answer10" id="">
          <a><span></span><span></span><span></span><span></span><button>Submit</button></a>
          </form> 
          <?php
      }
    }
    ?>
    </div>
</body>
</html>