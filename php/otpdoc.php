<?php

session_start();
error_reporting(0);
include("dbconnection.php");
error_reporting(E_ALL ^ E_WARNING); 
$con=mysqli_connect("localhost","root","","oh");

    $OTPverify = mysqli_real_escape_string($con, $_POST['OTPverify']);
    $verifyQuery = "SELECT * FROM doctor WHERE code = $OTPverify";
    $runVerifyQuery = mysqli_query($con, $verifyQuery);
    if($runVerifyQuery){
        
        if(mysqli_num_rows($runVerifyQuery) > 0){
            $newQuery = "UPDATE doctor SET code = 0";
            $run = mysqli_query($con,$newQuery);
            echo"success";
        }else{
            echo "Invalid Verification Code";
        }
    }else{
        echo "Failed while checking Verification Code from database!";
    }

?>
