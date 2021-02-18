<?php
session_start();
session_destroy();
unset($_SESSION["ID"]);
unset($_SESSION["Name"]);
unset($_SESSION["Role"]);
header("Location:../index.php");
?>