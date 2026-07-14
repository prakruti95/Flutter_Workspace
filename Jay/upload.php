<?php

include('connect.php');

$upload_path = "images/";
$upload_url = "http://".$_SERVER['SERVER_NAME']."/riddhita/".$upload_path;

$id = $_POST["id"];
$pname = $_POST["pname"];
$pprice = $_POST["pprice"];
$pdes = $_POST["pdes"];
$pfeatures = $_POST["pfeatures"];

if($id=="" || $pname=="" || $pprice=="" || $pdes=="" || $pfeatures=="")
{
    echo "0";
}
else
{
    if(isset($_FILES["pimage"]) && $_FILES["pimage"]["name"] != "")
    {
        $fileinfo = pathinfo($_FILES["pimage"]["name"]);
        $extension = $fileinfo["extension"];

        $filename = "product_".rand(1000,9999).".".$extension;

        $file_path = $upload_path.$filename;
        $file_url = $upload_url.$filename;

        move_uploaded_file($_FILES["pimage"]["tmp_name"], $file_path);

        $sql = "UPDATE riddhita_data_info SET
                pname='$pname',
                pprice='$pprice',
                pdes='$pdes',
                pfeatures='$pfeatures',
                pimage='$file_url'
                WHERE id='$id'";
    }
    else
    {
        $sql = "UPDATE riddhita_data_info SET
                pname='$pname',
                pprice='$pprice',
                pdes='$pdes',
                pfeatures='$pfeatures'
                WHERE id='$id'";
    }

    if(mysqli_query($con, $sql))
    {
        echo "1";
    }
    else
    {
        echo "0";
    }
}

mysqli_close($con);

?>
