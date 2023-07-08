<?php
   session_start();
   error_reporting(0);
   include("dbconnection.php"); 
    $con=mysqli_connect("localhost","root","","oh");
    error_reporting(E_ALL ^ E_WARNING); 
    $name = mysqli_real_escape_string($con, $_POST['patientname']);
    $email = mysqli_real_escape_string($con, $_POST['email']);
    $add = mysqli_real_escape_string($con, $_POST['address']);
    $cont = mysqli_real_escape_string($con, $_POST['mobileno']);
    $city = mysqli_real_escape_string($con, $_POST['city']);
    $pcode = mysqli_real_escape_string($con, $_POST['pincode']);
    $username = mysqli_real_escape_string($con, $_POST['loginid']);
    $password = mysqli_real_escape_string($con, $_POST['password']);
    $password2 = mysqli_real_escape_string($con, $_POST['cpassword']);
    $bldgrp = mysqli_real_escape_string($con, $_POST['bloodgroup']);
    $gen = mysqli_real_escape_string($con, $_POST['gender']);
    date_default_timezone_set("Asia/Calcutta");   //India time (GMT+5:30)

    $date=date("Y-m-d",strtotime($_POST['dob']));
   
    if($date == "1970-01-01"){
        $date = NULL;
    }
    $dt = date("Y-m-d");
    $tim = date("H-i-s");
    if(!empty($name)&&!empty($username)&&!empty($email)&&!empty($password)&&!empty($add)&&!empty($cont)){
        if(filter_var($email, FILTER_VALIDATE_EMAIL)){
            if(strlen(trim($password)) >= 8){
                if($password == $password2){
                    $sql = mysqli_query($con, "SELECT loginid FROM patient where loginid = '{$username}'");
                    if(mysqli_num_rows($sql) > 0){
                        echo "$username - Already Exists";
                    } else{
                        $status = 'Active';
                        $code = rand(999999, 111111);
                        $random_id = rand(time(),100000);
                        $query= "INSERT INTO patient (patientname, email, admissiondate, admissiontime, address, mobileno, city, pincode, loginid, password, bloodgroup, gender, dob, status, code) VALUES ('$_POST[patientname]','$_POST[email]', '$dt', '$tim', '$_POST[address]', '$_POST[mobileno]', '$_POST[city]', '$_POST[pincode]', '$_POST[loginid]', '$_POST[password]', '$_POST[bloodgroup]', '$_POST[gender]', '$_POST[dob]', 'Active', $code )";
                        $sql2 = mysqli_query($con,$query);
                        if($sql2){
                            
                                echo "success";
                            }else{
                                echo mysqli_error($con);
                            }
                        
                        
                    
                    }
                }else{
                    echo "Password does not match";
                }
            }else{
                echo "Password must be 8 characters long";
            }
        }else{
            echo "Email not Valid";
        }
    }else{
        echo "Enter Essential Information";
    }
?>