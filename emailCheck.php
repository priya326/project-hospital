<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Forgot Your Password In Php</title>
    <link rel="stylesheet" href="css/stylesign.css">
</head>

<body>
<div class="wrapper">
    <section class="form login">
            <h1>Enter Email</h1>
            
            <hr>
            <p class="lbl2">Enter Registered email to recieve otp</p>
            <form action="#" enctype="multipart/form-data">
                <div class="error-text"> </div>
                <div class="field input">
                        <label>Enter Your Unique Username</label>
                        <input type="text" name="loginid" placeholder="Username" required><br>
                    </div>
                <div class="field input">
                        <label>Email</label>
                        <input type="email" name="email" placeholder="Email" required><br>
                    </div>
                    <div class="field button">
                    <input type="submit" name="forgot_password" value="Check">
                </div>
            
        </form>
</section>
    </div>
    <script src="js/forgot.js"></script>
</body>

</html>