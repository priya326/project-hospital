<?php
  session_start();
  error_reporting(0);
  include("dbconnection.php");
  error_reporting(E_ALL ^ E_WARNING); 
  $con=mysqli_connect("localhost","root","","oh");
  $email = mysqli_real_escape_string($con, $_POST['email']);
    $_SESSION['email'] = $email;
    
   
    $emailCheckQuery = "SELECT * FROM admin WHERE email = '$email' ";
    $emailCheckResult = mysqli_query($con, $emailCheckQuery);

    // if query run
    if ($emailCheckResult) {
        // if email matched
        if (mysqli_num_rows($emailCheckResult) > 0) {
            $code = rand(999999, 111111);
            $updateQuery = "UPDATE admin SET code = $code WHERE email = '$email'";
            $updateResult = mysqli_query($con, $updateQuery);
            if ($updateResult) {
                $subject = 'Email Verification Code';
                $message = "our verification code is $code";
                $sender = 'From: vasundharabarana@gmail.com';

                if (mail($email, $subject, $message, $sender)) {
                    echo "success";
                } else {
                    echo'Failed while sending code!';
                }
            } else {
                echo "Failed while inserting data into database!";
            }
        }else{
            echo "Invalid Email Address";
        }
    }else {
        echo "Failed while checking email from database!";
    }
    ?>