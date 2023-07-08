<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Digitalization of Hospital System</title>
    <link rel="stylesheet" href="css/stylesign.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css"/>
</head>
<body>
    <div class="wrapper">
        <section class="form signup">
            <h1>register</h1>
            <hr>
            <form action="#" enctype="multipart/form-data">
                <div class="error-text"> </div>
                
                    <div class="field input">
                        <label>Name*</label>
                        <input type="text" placeholder="Enter Name "name="patientname" required>
                    </div>
              
                    <div class="field input">
                        <label>Username*</label>
                        <input type="text" placeholder="Enter Username "name="loginid" required>
                    </div>

                    <div class="field input">
                        <label>Email*</label>
                        <input type="text" placeholder="Enter Your Email "name="email" required>
                    </div>
               <div class="name-details">
                    <div class="field input">
                        <label>Password*</label>
                        <input type="password" placeholder="Enter Password " name="password" id="pass" required>
                        <i class="fas fa-eye" id="eye" onclick="toggle()"></i>
                    </div>
                    <div class="field input">
                        <label>Confirm Password*</label>
                        <input type="password" placeholder="Confirm Password " name="cpassword" required>
                        <i class="fas fa-eye" id="eye2" onclick="toggle2()"></i>
                    </div>
                </div>
                <div class="name-details">
                    <div class="field input">
                        <label>City*</label>
                        <input type="text" placeholder="Enter City " name="city"  required>
                    </div>
                    <div class="field input">
                        <label>Pincode*</label>
                        <input type="text" placeholder="Enter Pincode " name="pincode" required>
                    </div>
                </div>
                <div class="field input">
                    <label>Address</label>
                    <textarea name="address" cols="10" rows="10"></textarea>
                </div>
               
                
                <label class="lbl">Gender</label>
                <div class="per-details">
                    <div class="gen">
                            <input type="radio" name="gender" value="F"> Female
                            <input type="radio" name="gender" value="M"> Male
                            <input type="radio" name="gender" value="O"> Other
                            </div>
                    <div class="field input">
                            <label>Blood Group</label>
                        <select name="bloodgroup">
                            <option value="">--</option>
                            <option value="A+">A+</option>
                            <option value="B+">B+</option>
                            <option value="O+">O+</option>
                            <option value="AB+">AB+</option>
                            <option value="A-">A-</option>
                            <option value="B-">B-</option>
                            <option value="O-">O-</option>
                            <option value="AB-">AB-</option>
                        </select>
                    </div>
                </div>
                <div class="name-details">
                    <div class="field input">
                        <label>BirthDate</label>
                        <input type="date" name="dob">
                    </div>
                    <div class="field input">
                        <label>Contact*</label>
                        <input type="text" placeholder="Enter Contact Number " name="mobileno" required>
                    </div>
                    
                </div>
                <div class="field button">
                    <input type="submit" value="Create Account">
                </div>
            </form>
            <div class="link">Already have an account?<a href="patientlogin.php">Login</a></div>
        </section>
    </div>
    <script src="js/pass_show_hide.js"></script>
    <script src="js/signup.js"></script>
</body>
</html>