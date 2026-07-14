<?php
include('connect.php');

$pname = $_POST["pname"];
$pprice = $_POST["pprice"];
$pdes = $_POST["pdes"];
$pfeatures = $_POST["pfeatures"];

$upload_path = "images/";
$upload_url = "http://" . $_SERVER['SERVER_NAME'] . "/riddhita/" . $upload_path;

$fileinfo = pathinfo($_FILES["pimage"]["name"]);
$extension = $fileinfo["extension"];

$random = "image_" . rand(1000,9999);

$file_url = $upload_url . $random . "." . $extension;
$file_path = $upload_path . $random . "." . $extension;

move_uploaded_file($_FILES["pimage"]["tmp_name"], $file_path);

$pimage = $file_url;

if($pname=="" || $pprice=="" || $pdes=="" || $pfeatures=="")
{
    echo "0";
}
else
{
    $sql = "INSERT INTO riddhita_data_info
            (pname,pprice,pdes,pfeatures,pimage)
            VALUES
            ('$pname','$pprice','$pdes','$pfeatures','$pimage')";

    if(mysqli_query($con,$sql))
    {
        echo "Data Inserted Successfully";
    }
    else
    {
        echo mysqli_error($con);
    }
}

mysqli_close($con);
?>
