<?php

require_once '../model/model.php';

//session_start();



if (isset($_POST['submit'])) {

$amountErr  = $vidErr =$error= "";
$amount  = $vid = "";
 $flag=1;
 function test_input($data) {
   $data = trim($data);
   $data = stripslashes($data);
   $data = htmlspecialchars($data);
   return $data;
 }

  if (empty($_POST["vid"])) {
    echo "ID is required";
     $flag=0;
   }
   else {
    $vid = test_input($_POST["vid"]);

    if (strlen($_POST["vid"]) > '3') 
    {
        $vidErr = "Your id can contain maximun 3 Characters!";
    }
    elseif(!preg_match("#[0-9]+#",$vid)) 
    {
        $vidErr = "Your id Must Contain Number!";

   }
  }





    if(empty($_POST["amount"]))
    {
      $amountErr= "Amounr is required";
      $flag=0;
    }
    else {
      $amount=test_input($_POST["amount"]);
   $amountErr= "";
    }



if($flag==1)
{
  $data['amount']=$amount;
  $data['vid']=$vid;
  

  if (addFundInfo($data)) {
    header('location:../view/fund.php');
  }

  else {
    echo 'Could not add!!';
  }
}
else {
  $args = array(
   'amountErr' => $amountErr,
   'vidErr' => $vidErr

);
     header("location:../view/fund.php" . http_build_query($args));
  }

}//else {
  //echo "You can not access this page!!";
//}

?>
