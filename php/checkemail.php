<?php
  session_start();
  error_reporting(0);
  include("dbconnection.php");
  error_reporting(E_ALL ^ E_WARNING); 
  
  $con=mysqli_connect("localhost","root","","oh");
     $username = mysqli_real_escape_string($con, $_POST['loginid']);
     $email = mysqli_real_escape_string($con, $_POST['email']);
    $_SESSION['email'] = $email;
    $_SESSION['loginid'] = $username;

    $emailCheckQuery = "SELECT * FROM patient WHERE email = '$email' and loginid = '$username'";
    $emailCheckResult = mysqli_query($con, $emailCheckQuery);

    // if query run
    if ($emailCheckResult) {
        // if email matched
        if (mysqli_num_rows($emailCheckResult) > 0) {
            $code = rand(999999, 111111);
            $updateQuery = "UPDATE patient SET code = $code WHERE email = '$email' and loginid = '$username'";
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