<?php

include('connect.php');

$n1 = $_POST['name'];
$s1 = $_POST['surname'];
$m1 = $_POST['mobile'];
$e1 = $_POST['email'];
$p1 = $_POST['pass'];

if($n1=="" || $s1=="" || $m1=="" || $e1=="" || $p1==""){
    echo "Please fill all fields.";
}
else{
    $query = "insert into hetvi_users(name,surname,mobile,email,pass) 
              values('$n1','$s1','$m1','$e1','$p1')";
    mysqli_query($con,$query);
    echo "Data inserted successfully";
}

?>