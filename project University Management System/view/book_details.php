<?php
session_start();

if(isset($_SESSION['username']))
{
	include("../view/head_dashboard.php");

  ?>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Book Details</title>
    <link rel="stylesheet" href="../css/dashboard.css">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">


  </head>
  <body>
  	<fieldset align = "center">
<h1>Book Details</h1>
</fieldset>

  <?php
require_once '../controller/Info.php';

$nursery = fetchAllBook();

?>

<table border="1" style="width:100%;padding:10px;">
	<thead>
		<tr>
			<th>BOOK ID</th>
			<th>BOOK name</th>
			<th>Total stock</th>
			
			<th>Librarian ID</th>
			
		</tr>
	</thead>
	<tbody>
		<?php foreach ($nursery as $i => $nursery): ?>
			<tr>
				<td><?php echo $nursery['id'] ?></a></td>
				<td><?php echo $nursery['name'] ?></a></td>
				<td><?php echo $nursery['stock'] ?></td>

				<td><?php echo $nursery['v_id'] ?></a></td>
				
			</tr>
		<?php endforeach; ?>


	</tbody>


</table>


</div>



</div>



  </body>
</html>





<?php
include("../model/foot.php");

}
else {
header("location:../view/login_view.php");
}
 ?>
