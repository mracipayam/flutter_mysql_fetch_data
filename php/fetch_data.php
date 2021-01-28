<?php 

  include("conn.php");

  $queryResult = $connection->
      query("SELECT * FROM login_flutter");//change your_table with your database table that you want to fetch values

  $result = array();

  while ($fetchdata=$queryResult->fetch_assoc()) {
      $result[] = $fetchdata;
  }

  echo json_encode($result);
 ?>