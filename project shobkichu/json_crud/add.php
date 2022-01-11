

<?php
 session_start();
 include('../head_dashboard.php');
	if(isset($_POST['save'])){
		//open the json file
		$data = file_get_contents('products.json');
		$data = json_decode($data);

		//data in out POST
		$input = array(
			'id' => $_POST['id'],
			'name' => $_POST['name'],
			'price' => $_POST['price'],
			'address' => $_POST['address'],
			'type' => $_POST['type']
		);

		//append the input to our array
		$data[] = $input;
		//encode back to json
		$data = json_encode($data, JSON_PRETTY_PRINT);
		file_put_contents('products.json', $data);

		header('location: index.php');
	}
?>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title></title>
</head>
<body>
<form method="POST">
	<a href="index.php">Back</a>
	<p>
		<label for="id">ID</label>
		<input type="text" id="id" name="id">
	</p>
	<p>
		<label for="name">Name</label>
		<input type="text" id="name" name="name">
	</p>
	<p>
		<label for="price">Price</label>
		<input type="text" id="price" name="price">
	</p>
	<p>
		<label for="address">Origin</label>
		<input type="text" id="address" name="address">
	</p>
	<p>
		<label for="type">Product type</label>
		<input type="text" id="type" name="type">
	</p>
	<input type="submit" name="save" value="Save">
</form>
</body>
</html>

<?php
    include('../foot.php');
     ?>