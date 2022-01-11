<?php

session_start();

if(isset($_SESSION['username']))
{
include("../view/head_dashboard.php");
  ?>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>


    <link rel="stylesheet" href="../css/dashboard.css">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <meta charset="utf-8">
    <title></title>

    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">


  </head>
  <body>


<div class="w3-container w3-dark-white" style="margin-top:50px">
  <form class="loginbox" method="post" action="../controller/books.php">

   
<p>Book name: </p> <input type="text" name="name" id="name" placeholder="Enter book name " >
    <span class="error" id="nameErr">* <?php if(!empty($_GET['nameErr'])){echo $_GET['nameErr'];} ?></span>
    <br>
        <p>No. of stocks: </p> <input type="number"  name="stock" id="stock" placeholder="Enter no. of stocks " >

    <span class="error" id="stockErr">* <?php if(!empty($_GET['stockErr'])){echo $_GET['stockErr'];} ?></span>
    <br>
  

    <p>Your librarian ID: </p> <input type="number" name="vid" id="vid" placeholder="Enter librarian ID ">
  
    <span class="error" id="vidErr">* <?php if(!empty($_GET['vidErr'])){echo $_GET['vidErr'];} ?></span>
    <br>

   <br>


    <input type="submit" name="submit" value="Add">
  </form>
</div>



</div>



  </body>
</html>





<?php
include("../model/foot.php");

}
else {
header("location:../view/login_volunteer_view.php");
}
 ?>
