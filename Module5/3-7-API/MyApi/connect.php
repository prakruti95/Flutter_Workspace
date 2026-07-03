<?php

    define('HOST','localhost');
    define('USER','root');
    define('PASS','');
    define('DB','test12');

    $con = mysqli_connect(HOST,USER,PASS,DB) or die('Unable to connect');

?>