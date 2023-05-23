<?php
// Initialize the session
session_start();
 
// Check if the user is logged in, if not then redirect him to login page
if(!isset($_SESSION["loggedin"]) || $_SESSION["loggedin"] !== true){
    header("location: ../login.php");
    exit;
}
?>
<?php
$mysqli = new mysqli('localhost','root', '','jmk') or die($mysqli->connect_error);
    if(isset($_POST["WhichToDelete"]))
    {
        $carsales = $mysqli->query("SELECT * FROM classiccarsphotos") or die($mysqli->error);

        while($data = $carsales -> fetch_assoc())
        {
            $ID_CarSalesImage = $data['ID_ClassicCarImage'];
            $img_name = $data['img_name'];
            $img_dir = $data['img_dir'];
            $img_dir_folder = $data['img_dir_folder'];
            $ID_CarSalesImageTo = $data['ID_ClassicCarImageTo'];

            if($_POST["WhichToDelete"] == $ID_CarSalesImageTo)
            {
                @unlink($img_dir);
                @rmdir($img_dir_folder);
            }
        }

        $query = $mysqli -> query("DELETE FROM classiccars WHERE ID_ClassicCar = '$_POST[WhichToDelete]'");
        $query = $mysqli -> query("DELETE FROM classiccarsphotos WHERE ID_ClassicCarImageTo = '$_POST[WhichToDelete]'");
    }
    header("Location: ClassicCarsR.php");
$mysqli->close();
?>