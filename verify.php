<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
    <script src="../sweetalert/sweetalert/dist/sweetalert.min.js"></script>

</head>
<body>
</body>
</html>
<?php
include 'Includes/dbcon.php';


if(isset($_GET['token'])){
    $token = $_GET['token'];

    $sql = "SELECT * FROM tblclassteacher WHERE token=? AND verified=false";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param('s', $token);
    $stmt->execute();
    $result = $stmt->get_result();
    $rowCount = $result->num_rows;
    
    if($rowCount>0){
    $data = $result->fetch_assoc();

    $id = $data['id'];

    $query = "UPDATE customers SET verified=true WHERE id=?";
    $stmts = $conn->prepare($query);
    $stmts->bind_param('i', $id);
    if($stmts->execute()){
        echo "<script>swal('Congrats', 'Email Verified Successfully..', 'success')
        .then(function(result){window.location='dashboardDemo.php'})</script>";
    }
    
}else{
        echo "<script>swal('Error', 'Invalid OTP entered', 'error')
        .then((result){window.location = 'email_verify.php'});</script>";
    }

}



?>