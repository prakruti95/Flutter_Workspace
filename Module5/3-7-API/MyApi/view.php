<?php
  include('connect.php');
  $sql = "select * from students";
  
  $row = mysqli_query($con,$sql);
  $response=array();
  while($data = mysqli_fetch_array($row))
  {
    $value["id"]= $data["id"];
    $value["name"]= $data["name"];
    $value["surname"]= $data["surname"];
    $value["salary"]= $data["salary"];
    
     array_push($response,$value);
  }
 
  echo json_encode($response);

?>