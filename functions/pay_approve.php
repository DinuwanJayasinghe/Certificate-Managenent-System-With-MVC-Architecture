<?php
include_once "C:/xampp/htdocs/certify-main/controller/mainController.php";

    $pay = approvePay($_GET['id']);
    if($pay){
            echo "<script language='javascript'>;
            alert('Application Approved!');
            window.location.href='../view/payment.php';
            </script>";
    }else{
        echo "<script language='javascript'>;
        alert('Unsuccessful Approval!');
        window.location.href='../view/payment.php';
        </script>";
    }

?>