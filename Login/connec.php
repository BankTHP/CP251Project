<?php 

$conn = mysqli_connect("localhost","root","","cp251project"); 

    if(!$conn) {
        die("Failed to connect: ".mysqli_connect_error());
    }

?>