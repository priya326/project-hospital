<?php

include("adheader.php");
include("dbconnection.php");
if(isset($_POST[submit]))
{
  if(isset($_GET[editid]))
  {
   $sql ="UPDATE appointment SET patientid='$_SESSION[patientid]',departmentid='$_POST[select5]',appointmentdate='$_POST[appointmentdate]',appointmenttime='$_POST[time]',doctorid='$_POST[select6]',status='$_POST[select]' WHERE appointmentid='$_GET[editid]'";
   if($qsql = mysqli_query($con,$sql))
   {
    echo "<script>alert('appointment record updated successfully...');</script>";
}
else
{
    echo mysqli_error($con);
}	
}
else
{
    $sqlappointment="SELECT * FROM appointment WHERE appointmentdate='$_POST[appointmentdate]' AND appointmenttime='$_POST[time]' AND doctorid='$_POST[select6]' AND status='Active'";
	$qsqlappointment = mysqli_query($con,$sqlappointment);
	if(mysqli_num_rows($qsqlappointment) >= 1)
	{
		echo "<script>alert('Appointment already scheduled for this time..');</script>";
        
	} else{
   $sql ="UPDATE patient SET status='Active' WHERE patientid='$_SESSION[patientid]'";
   $qsql=mysqli_query($con,$sql);
   $sql2 ="INSERT INTO appointment(patientid, departmentid, appointmentdate, appointmenttime, doctorid, status, app_reason) values('$_SESSION[patientid]','$_POST[select5]','$_POST[appointmentdate]','$_POST[time]','$_POST[select6]','Active','$_POST[appreason]')";
   $qsql2 = mysqli_query($con,$sql2);
  
    $sqlappointment1 = "SELECT max(appointmentid) FROM appointment where patientid='$_SESSION[patientid]' AND status='Active'";
	$qsqlappointment1 = mysqli_query($con,$sqlappointment1);
	$rsappointment1=mysqli_fetch_row($qsqlappointment1);
    if(mysqli_num_rows($qsqlappointment1)>0){
        $sqldoc= "SELECT * FROM doctor WHERE doctorid='$_POST[select6]'";
        $qsqldoc = mysqli_query($con,$sqldoc);
        $rsdoc=mysqli_fetch_array($qsqldoc);
        	// Construct subject of the email
            $to = $rsdoc[email];
	$subject = 'New Appointment Booked' ;
    $sqlpat= "SELECT * FROM patient WHERE patientid='$_SESSION[patientid]'";
    $qsqlpat = mysqli_query($con,$sqlpat);
    $rspat=mysqli_fetch_array($qsqlpat);

    $sqlpat= "SELECT * FROM patient WHERE patientid='$_SESSION[patientid]'";
    $qsqlpat = mysqli_query($con,$sqlpat);
    $rspat=mysqli_fetch_array($qsqlpat);
	// Construct email body
	$body_message .= 'Name: ' . $rspat['patientname'] . "\r\n";
	$body_message .= 'Date: ' . $_POST['appointmentdate']. "\r\n";
    $body_message .= 'time: ' . $_POST['time']. "\r\n";
	$body_message .= 'Message: ' . $_POST['appreason']. "\r\n";

    $sender = 'From: priya031003@gmail.com';

	$mail_sent = mail($to, $subject, $body_message, $sender);
    include("insertbiilingrecord.php");
    echo "<script>alert('Appointment record inserted successfully...');</script>";
    // echo "<script>window.location='patientreport.php?patientid=$_SESSION[patientid]&appointmentid=$rsappointment1[0]';</script>";
    }
else
{
    echo mysqli_error($con);
}
    }
}
}
if(isset($_GET[editid]))
{
	$sql="SELECT * FROM appointment WHERE appointmentid='$_GET[editid]' ";
	$qsql = mysqli_query($con,$sql);
	$rsedit = mysqli_fetch_array($qsql);
	
}
?>


<div class="container-fluid">
    <div class="block-header">
        <h2 class="text-center">Book Appointment</h2>
    </div>
    <div class="row clearfix">
        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
            <div class="card">
                <div class="header">
                    <h2>Appointment Information </h2>

                </div>
                <form method="post" action="" name="frmappnt" onSubmit="return validateform()">
                    <input type="hidden" name="select2" value="Offline">
                    <div class="body">
                        <div class="row clearfix">
                            <div class="col-sm-6 col-xs-12">
                                <div class="form-group">
                                    <div class="form-line">
                                        <?php
                                        if(isset($_GET[patid]))
                                        {
                                          $sqlpatient= "SELECT * FROM patient WHERE patientid='$_SESSION[patientid]'";
                                          $qsqlpatient = mysqli_query($con,$sqlpatient);
                                          $rspatient=mysqli_fetch_array($qsqlpatient);
                                          echo $rspatient[patientname] . " (Patient ID - $rspatient[patientid])";
                                          
                                      }
                                      else
                                      {
                                        
                                            $sqlpatient= "SELECT * FROM patient WHERE patientid='$_SESSION[patientid]'";
                                            $qsqlpatient = mysqli_query($con,$sqlpatient);
                                            $rspatient=mysqli_fetch_array($qsqlpatient);
                                            echo "$rspatient[patientname]";
                                             
                                    
                                        
                                     }
                                 ?>

                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 col-xs-12">
                                <div class="form-group">
                                    <div class="form-line">
                                        <select name="select5" id="select5" class=" form-control show-tick" required >
                                            <option value="">Select Department *</option>
                                            <?php
                                    $sqldepartment= "SELECT * FROM department WHERE status='Active'";
                                    $qsqldepartment = mysqli_query($con,$sqldepartment);
                                    while($rsdepartment=mysqli_fetch_array($qsqldepartment))
                                    {
                                       if($rsdepartment[departmentid] == $rsedit[departmentid])
                                       {
                                        echo "<option value='$rsdepartment[departmentid]' selected>$rsdepartment[departmentname]</option>";
                                    }
                                    else
                                    {
                                        echo "<option value='$rsdepartment[departmentid]'>$rsdepartment[departmentname]</option>";
                                    }

                                }
                                ?>
                                        </select>

                                    </div>
                                </div>
                            </div>

                        </div>
                        <div class="row clearfix">
                            <div class="col-sm-4 col-xs-12">
                                <div class="form-group">
                                    <div class="form-line">
                                        <input class="form-control" type="date" name="appointmentdate" min="<?php echo date("Y-m-d"); ?>"
                                            id="appointmentdate" value="<?php echo $rsedit[appointmentdate]; ?>">
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-4 col-xs-12">
                                <div class="form-group">
                                    <div class="form-line">
                                    <select name="time" id="time" class="form-control show-tick" required>
                                                <option value=""> Select Time Slot* </option>
                                                <option value="11:00">11:00</option>
                                                <option value="11:30">11:30</option>
                                                <option value="12:00">12:00</option>
                                                <option value="12:30">12:30</option>
                                                <option value="1:00">1:00</option>
                                                <option value="4:00">4:00</option>
                                                <option value="4:30">4:30</option>
                                                <option value="5:00">5:00</option>
                            </select>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-4 col-xs-12">
                                <div class="form-group">
                                    <div class="form-line">
                                        <select name="select6" id="select6" class=" form-control show-tick" required>
                                            <option value="">Select Doctor *</option>
                                            <?php
                                $sqldoctor= "SELECT * FROM doctor INNER JOIN department ON department.departmentid=doctor.departmentid WHERE doctor.status='Active'";
                                $qsqldoctor = mysqli_query($con,$sqldoctor);
                                while($rsdoctor = mysqli_fetch_array($qsqldoctor))
                                {
                                   if($rsdoctor[doctorid] == $rsedit[doctorid])
                                   {
                                    echo "<option value='$rsdoctor[doctorid]' selected>$rsdoctor[doctorname] ( $rsdoctor[departmentname] ) </option>";
                                }
                                else
                                {
                                    echo "<option value='$rsdoctor[doctorid]'>$rsdoctor[doctorname] ( $rsdoctor[departmentname] )</option>";				
                                }
                            }
                            ?>
                                        </select>
                                    </div>
                                </div>
                            </div>




                        </div>
                        <div class="row clearfix">
                            <div class="col-sm-12">
                                <div class="form-group">
                                    <div class="form-line">
                                        <input type="text" class="form-control no-resize" name="appreason" placeholder="Appointment Reason* " required
                                            id="appreason" s><?php echo $rsedit[app_reason]; ?> 


                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-12">

                                <input type="submit" class="btn btn-raised g-bg-cyan" name="submit" id="submit"
                                    value="Submit" />

                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
















<?php include 'adfooter.php'; ?>
<script type="application/javascript">
function validateform() {
   
   if (document.frmappnt.select5.value == "") {
        alert("Department name should not be empty..");
        document.frmappnt.select5.focus();
        return false;
    } if (document.frmappnt.appointmentdate.value == "") {
        alert("Appointment date should not be empty..");
        document.frmappnt.appointmentdate.focus();
        return false;
    }  if(document.frmappnt.appointmentdate.value < today ){
        alert("Appointment date should be appropriate..");
        document.frmappnt.appointmentdate.focus();
        return false;
        } 
    if (document.frmappnt.time.value == "") {
        alert("Appointment time should not be empty..");
        document.frmappnt.time.focus();
        return false;
    }  if (document.frmappnt.select6.value == "") {
        alert("Doctor name should not be empty..");
        document.frmappnt.select6.focus();
        return false;
    } if (document.frmappnt.select.value == "") {
        alert("Kindly select the status..");
        document.frmappnt.select.focus();
        return false;
    }
}
</script>