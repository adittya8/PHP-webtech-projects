<?php 
$data = "k";
$output = '';
if(isset($_GET['q'])){
    $data = $_GET['q'];
}
$db = mysqli_connect("localhost", "root", "", "library");
if($db->connect_error){
    exit('DB not connected');
}
$x = "SELECT * FROM books WHERE NAME LIKE '%".$data."%'";
$y = $db->query($x);




if(mysqli_num_rows($y) > 0)
{
    $output .= '<div class="table-responsive">
                    <table class="table table bordered">
                        <tr>
                        <th>Book ID</th>
                            <th>NAME</th>
                            <th>STOCK</th>
                            <th>Librarian ID</th>
                            
                        </tr>';
    while($row = mysqli_fetch_array($y))
    {
        $output .= '
            <tr>
            <td>'.$row["id"].'</td>
                <td>'.$row["name"].'</td>
                <td>'.$row["stock"].'</td>
                <td>'.$row["v_id"].'</td>
                
            </tr>
        ';
    }
    echo $output;
}
else
{
    echo 'Data Not Found';
}
?>
