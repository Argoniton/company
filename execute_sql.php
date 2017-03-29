<?php
session_start();
require 'connect.php';
$query = $_POST['sqlcode'];
echo "<h3>$query</h3><br>";

require 'table.php';
display_table($db, $query);

file_put_contents("history.sql", $query."\n", FILE_APPEND | LOCK_EX);
?>