<?php
    include('connect.php');

    $name = $_POST["name"];
    $surname = $_POST["surname"];
    $salary = $_POST["salary"];

    if($name==""&&$surname==""&& $salary=="")
    {
        echo '0';
    }
    else
    {
        $sql = "insert into students (name,surname,salary) values ('$name','$surname','$salary')";
        mysqli_query($con,$sql);
    }
    
?>