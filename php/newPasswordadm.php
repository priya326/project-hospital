<?php
  session_start();
  error_reporting(0);
  include("dbconnection.php");
  error_reporting(E_ALL ^ E_WARNING); 
  $con=mysqli_connect("localhost","root","","oh");
$password = ($_POST['password']);
$confirmPassword = ($_POST['confirmPassword']);

if (strlen($_POST['password']) < 8) {
    echo 'Use 8 or more characters with a mix of letters, numbers & symbols';
} else {
    // if password not matched so
    if ($_POST['password'] != $_POST['confirmPassword']) {
        echo "Password Not Matched";
    } else {
        $email = $_SESSION['email'];
        $updatePassword = "UPDATE admin SET password = '$password' WHERE email = '$email'";
        $updatePass = mysqli_query($con, $updatePassword) or die("Query Failed");
        
        session_unset();
        session_destroy();
        if($updatePass){
            echo "success";
        }
    }
}
?>