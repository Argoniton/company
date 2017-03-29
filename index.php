<?php
session_start();
?>

<form method=post action="execute_sql.php" target="_blank">
    Your SQL command:<br>
    <input type="text" name="sqlcode" value="SELECT * FROM product" style="width:500px;"><br><br>
    <input type="submit" value="Submit">
</form>
