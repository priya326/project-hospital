<!-- check otp for forgot password -->
<?php


session_start();

error_reporting(E_ALL ^ E_WARNING); 
$d = "We've sent a verification code to your Email $_SESSION[email]";
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>OTP Verification Form</title>
    <link rel="stylesheet" href="css/stylesign.css">
</head>
<body>

<div class="wrapper">
    <section class="form login">
        
            <h1>Verify OTP</h1>
            <hr>
            <div class="lbl2"><?php
            echo $d;
        ?>
        </div>
            <form action="#" enctype="multipart/form-data">
                <div class="error-text"> </div>
                <div class="field input">
                        <label>OTP</label>
                        <input type="number" name="OTPverify" placeholder="Verification Code" required><br>
                    </div>
                    <div class="field button">
                    <input type="submit" name="verifyEmail" value="Verify">
                </div>
                
            
        </form>
        </section>
    </div>
    <script src="js/otpadm.js"></script>
</body>
</html>