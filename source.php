<?php 
// include database connection 
include('includes/config.php');
 
// select the image 
$connection = mysqli_connect("localhost","root","");
$db = mysqli_select_db($connection,'tblblooddonars');

$query = "SELECT * from 'tblblooddonars' WHERE id = ?"; 
$query_run = mysqli_query($connection,$query);

while($row = mysqli_fetch_array($query_run))
{
    ?>
        <?php echo '<img src="data:Image;base64,'.base64_encode($row['Image']).'" alt="Image" style="width: 100px; height: 100px;">'; ?>
    
}
/*$query = $con->prepare( $query );
 
// bind the id of the image you want to select
$query->bindParam(1, $_GET['id']);
$query->execute();
 
// to verify if a record is found
$num = $query->rowCount();
 
if( $num ){
    // if found
    $row = $query->fetch(PDO::FETCH_ASSOC);
    
    // specify header with content type,
    // you can do header("Content-type: image/jpg"); for jpg,
    // header("Content-type: image/gif"); for gif, etc.
    header("Content-type: image/png");
    
    //display the image data
    print $row['Image'];
    exit;
}else{
    //if no image found with the given id,
    //load/query your default image here
}
?>