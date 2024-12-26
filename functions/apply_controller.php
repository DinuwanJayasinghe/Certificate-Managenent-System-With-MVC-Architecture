<?php
include_once "C:/xampp/htdocs/certify-main/controller/mainController.php";

    // Grab form data
    $staffID = $_POST['staffID'];
    $amount = $_POST['amount'];


    $checks = certPay($staffID,$amount);
    
    if($checks){
            echo "<script language='javascript'>;
             alert('Application Successful!');
             window.location.href='../view/apply.php';
            </script>";
      } else{
            echo "<script>;
            alert('Application Unsuccessful');
            window.location.href='../view/apply.php';
            </script>";
      }


?>

