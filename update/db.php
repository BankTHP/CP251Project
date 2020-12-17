<?php
// เชื่อมต่อดาต้าเบส
$conn = @mysqli_connect("localhost","root","","CP251project") ;
if (!$conn) {
    die('Not connected : ' . mysqli_connect_error());
}
