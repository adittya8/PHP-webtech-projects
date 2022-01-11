<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>CRUD Operation on JSON File using PHP</title>
</head>
<body>
<table border="1">
	<thead>
		<th>ID</th>
		<th>Name</th>
		<th>Price</th>
		<th>Origin</th>
		<th>Product type</th>
		<th>Action</th>
	</thead>
	<tbody>
		<?php
		session_start();
 include('../head_dashboard.php');?>
<a href="add.php">Add</a>

 <?php
			//fetch data from json
			$data = file_get_contents('products.json');
			//decode into php array
			$data = json_decode($data);

			$index = 0;
			foreach($data as $row){
				echo "
					<tr>
						<td>".$row->id."</td>
						<td>".$row->name."</td>
						<td>".$row->price."</td>
						<td>".$row->address."</td>
						<td>".$row->type."</td>
						<td>
							<a href='edit.php?index=".$index."'>Edit</a>
							<a href='delete.php?index=".$index."'>Delete</a>
						</td>
					</tr>
				";

				$index++;
			}



		?>
	</tbody>
</table>
</body>
</html>

<?php

 include('../foot.php');
 ?>