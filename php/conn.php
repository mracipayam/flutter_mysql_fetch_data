<?php

    $connection = new mysqli("localhost", "root", "", "login_flutter");

    if (!$connection) {
        echo "connection failed!";
        exit();
    }else{
        //echo "connection succesful";
    }
?>