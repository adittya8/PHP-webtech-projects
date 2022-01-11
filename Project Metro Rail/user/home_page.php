<?php
 session_start();
 if(!isset($_SESSION["ulog"])){
    header("Location: user_login.php");
}
 include_once 'controllers/header.php';
 include_once 'models/db_config.php';

 $email=$_SESSION["ulog"];
 $n=dis_uname($email);
 
  
?>

<html>
    <head>
        <style>
            body{
                background-color: rgb(204, 204, 204);
            }
        </style>
    </head>
    <body>
        <fieldset>
        <fieldset>
            <legend align="center"><h1>Welcome to Metro Automation <?php foreach ($n as $value) {echo "<span style='color: red;'>$value</span>";}?> </h1></legend>
           
          
    </body>
</html>

<?php
 include 'controllers/footer.php';
 
 function dis_uname($email){
    $query = "SELECT name  FROM `user_info` WHERE email='{$email}'";
    $result=get($query);
    return $result[0];
}
?>