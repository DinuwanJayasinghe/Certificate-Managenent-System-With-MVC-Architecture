<?php
include_once "C:/xampp/htdocs/certify-main/controller/mainController.php";

    // Grab form data
    $staffID = $_POST['staffID'];
    $certID = $_POST['certId'];
    $certName = $_POST['certName'];


    $checks = certChecker($certID,$staffID,$certName);
    
    if($checks){
            echo "<script language='javascript'>;
             alert('Certificate Valid!');
             window.location.href='../view/checker.php';
            </script>";
      } else{
            echo "<script>;
            alert('Invalid Certificate');
            window.location.href='../view/checker.php';
            </script>";
      }


?>

