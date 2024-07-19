<?php
if(isset($_GET['btn_verify'])){
    $OTPcode = $_GET['code'];
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <title>Email Verification Page</title>
    <style>
        .container{
            margin-top: 120px;
            width: 350px;
            font-size: 20px;
        }

        .form-group{
            margin-top: 10px;
        }
    </style>
</head>
<body>
<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
<marquee behavior="" direction="left" style="color: whitesmoke;">We need to verify some informnation in order to make sure that it is you. Thank you for your patient</marquee>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="collapsibleNavbar">
  </div>  
</nav>
    <div class="container">
        <h4 class="text-center text-danger">We just sent an OTP to your <em><a href="https://www.gmail.com" target="_blank">gmail account,</a></em> please verify your email</h4>
            <form action="verify.php" method="get">
                <div class="form-group">
                    <label for="otp">Enter OTP Code Below:</label>
                    <input type="text" class="form-control mt-3 mb-3" placeholder="OTP Code: Example 234528" name="token">

                </div>
                <div class="form-group">
                    <button name="btn_verify" type="submit" class="btn btn-danger form-control">Verify Email</button>
                </div>
            </form>
    </d iv>
  
</body>
</html>
