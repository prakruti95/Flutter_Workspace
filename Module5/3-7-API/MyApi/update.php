<?php
    include('connect.php');

    $id = $_POST["id"];
    $name = $_POST["name"];
    $surname = $_POST["surname"];
    $salary = $_POST["salary"];

    if($id==""&& $name==""&& $surname==""&& $salary=="")
    {
        echo '0';
    }
    else
    {
        $sql = "update students set name='$name',surname='$surname',salary='$salary' where id='$id'";
        mysqli_query($con,$sql);
    }
    
?>