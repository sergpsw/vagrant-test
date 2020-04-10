<?php
$host = 'localhost'; 
$database = 'db_test';
$user = 'root';
$password = 'test';

$link = mysqli_connect($host, $user, $password, $database) 
        or die("Error! " . mysqli_error($link));

$query ="SELECT * FROM users";
$result = mysqli_query($link, $query) or die("Error! " . mysqli_error($link)); 
if($result)
{
        while ($table = mysqli_fetch_assoc($result)) 
        {
                print_r($table);
                echo "<br>";
        }
}

mysqli_close($link);
?>

