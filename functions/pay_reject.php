<?php
include_once "C:/xampp/htdocs/certify-main/controller/mainController.php";

    $pay = rejectPay($_GET['id']);
    if($pay){
            echo "<script language='javascript'>;
            alert('Application Rejected!');
            window.location.href='../view/payment.php';
            </script>";
    }else{
        echo "<script language='javascript'>;
        alert('Unsuccessful Rejection!');
        window.location.href='../view/payment.php';
        </script>";    }

?>