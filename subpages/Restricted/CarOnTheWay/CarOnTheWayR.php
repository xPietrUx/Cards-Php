<?php
// Initialize the session
session_start();
 
// Check if the user is logged in, if not then redirect him to login page
if(!isset($_SESSION["loggedin"]) || $_SESSION["loggedin"] !== true){
    header("location: ../login.php");
    exit;
}
?>
<!DOCTYPE html>
<html lang="pl">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>CarShop</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
  <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
  <script src="../../../js/jquery.min.js"></script>
  <script src="../../../js/app.js"></script>
  <link rel="stylesheet" href="../../../css/style.css">
</head>

<body>
  <div class="menuH">
    <div class="menuinH">
      <div class="LogoMenuH">
      </div>
      <div class="ContentMenuH">
        <a href="../logout.php" style="color:red;font-weight:bold;">Wyloguj</a>
      </div>
    </div>
    <div class="CarsChooseH">
      <ul>
        <li><a href="../CarSales/CarSalesR.php">Sprzedaż samochodów</a>
          <div class="under"></div>
        </li>
        <li><a href="../ClassicCars/ClassicCarsR.php">Klasyczne samochody</a>
        <div class="under"></div>
        </li>
        <li><a href="../CarRental/CarRentalR.php">Wynajem samochodów</a>
          <div class="under"></div>
        </li>
        <li><a href="../CarOnTheWay/CarOnTheWayR.php">Samochody w drodze</a>
        <div id="thispage" class="active"></div>
        </li>
      </ul>
    </div>
  </div>

  <div class="ContainerMainH">
        <div class="CarCard" style="display: flex; align-items: center; justify-content: center;">
        <button class="AddCard">+</button>
        <form action="CarOnTheWayDownload.php" method="POST" enctype="multipart/form-data">
          <div class="Slajder">
            <h2>Zdjęcia które się pojawią w slajderze: (Ważne! Pliki które można przesłać to pliki z rozszerzenieami: 'jpg','png','gif','jpeg'!)</h2>
            <input type="file" name="userfile[]" value="" multiple="">
          </div>
          <div class="Tittle">
            <h2>Nazwa auta (tytuł karty)</h2>
            <input type="text" id="tittleVechicle" name="tittleVechicle" value="">
          </div>
          <div class="DescriptionSmaller">
          <h2 style="text-align: center">Opis (na mniejszej karcie)</h2>
            <textarea id="tittleDescriptionSmaller" name="tittleDescriptionSmaller" value=""></textarea>
          </div>
          <div class="DescriptionBigger">
            <h2>Opis (na większej karcie)</h2>
            <textarea id="tittleDescriptionBigger" name="tittleDescriptionBigger" value=""></textarea>
          </div>
          <div class="SaveCancel">
            <input type="submit" class="SaveCard" value="Zapisz kartę">
            <input type="reset" class="CancelCard" value="Anuluj">
          </form>
          </div>
        </div>
        <?php
             $mysqli = new mysqli('localhost','root', '','jmk') or die($mysqli->connect_error);
     
             $carsales = $mysqli->query("SELECT * FROM carontheway ORDER BY ID_CarOnTheWay DESC;") or die($mysqli->error);
     
             $carsalesphotos = $mysqli->query("SELECT *
             FROM caronthewayphotos 
             WHERE caronthewayphotos.ID_CarOnTheWayImage NOT IN (SELECT MIN(caronthewayphotos.ID_CarOnTheWayImage) FROM caronthewayphotos GROUP BY caronthewayphotos.ID_CarOnTheWayImageTo)
             ORDER BY caronthewayphotos.ID_CarOnTheWayImageTo;") or die($mysqli->error);

             $carsalesphotosFirst = $mysqli->query("SELECT caronthewayphotos.ID_CarOnTheWayImage, caronthewayphotos.img_dir, caronthewayphotos.ID_CarOnTheWayImageTo FROM caronthewayphotos GROUP BY caronthewayphotos.ID_CarOnTheWayImageTo;") or die($mysqli->error);

             while($data = $carsales->fetch_assoc())
             {
                 $ID_CarSales = $data['ID_CarOnTheWay'];
                 $CarTittle = $data['CarTitle'];
                 $DescriptionSmaller = $data['DescriptionSmaller'];
                 $DescriptionBigger = $data['DescriptionBigger'];
                
                 echo '<div class="CarCard">
                 <div class="CarCardImage">';
                 
                 foreach($carsalesphotosFirst as $data1)
                 {
                      $ID_CarSalesImageMIN = $data1['ID_CarOnTheWayImage'];
                      $img_dir = $data1['img_dir'];
                      $ID_CarSalesImageToMIN = $data1['ID_CarOnTheWayImageTo'];

                      if($ID_CarSalesImageToMIN == $ID_CarSales)
                      {
                        echo '<img src="'.$img_dir.'" width="100%" alt="">';
                      }
                 }
                
                echo '</div>
                 <div class="CarCardBigger">
                   <div id="carouselExampleControlsNoTouching'.$ID_CarSales.'" class="carousel slide" data-bs-touch="false"
                     data-bs-interval="false">
                     <div class="carousel-inner">';
                    foreach($carsalesphotosFirst as $data1)
                    {
                      $ID_CarSalesImageMIN = $data1['ID_CarOnTheWayImage'];
                      $img_dir = $data1['img_dir'];
                      $ID_CarSalesImageToMIN = $data1['ID_CarOnTheWayImageTo'];

                      if($ID_CarSalesImageToMIN == $ID_CarSales)
                      {
                        echo '<div class="carousel-item active">';
                        echo '<img src="'.$img_dir.'" width="100%" alt="">';
                        echo '</div>';
                      }
                    }
                     foreach($carsalesphotos as $data2)
                     {
                      $ID_CarSalesImage = $data2['ID_CarOnTheWayImage'];
                      $img_dir = $data2['img_dir'];
                      $ID_CarSalesImageTo = $data2['ID_CarOnTheWayImageTo'];

                        if($ID_CarSalesImageTo == $ID_CarSales)
                        {
                        echo '<div class="carousel-item">
                                <img src="'.$img_dir.'" class="d-block w-100" alt="...">
                                </div>';
                        }
                     }
                     echo '</div>
                     <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControlsNoTouching'.$ID_CarSales.'"
                       data-bs-slide="prev">
                       <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                       <span class="visually-hidden">Previous</span>
                     </button>
                     <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControlsNoTouching'.$ID_CarSales.'"
                       data-bs-slide="next">
                       <span class="carousel-control-next-icon" aria-hidden="true"></span>
                       <span class="visually-hidden">Next</span>
                     </button>
                   </div>
                 </div>
                 <div class="CardCarContent">
                   <h1>'.$CarTittle.'</h1>
                   <div class="CardCarContentLess">
                   <p>'.$DescriptionSmaller.'</p>
                   </div>
                   <div class="CardCarContentMore">
                     <p style="white-space: pre-line; text-align: justify;">'.$DescriptionBigger.'</p>
                   </div>
                 </div>
                 <div class="ButtonsOnCarCard">
                 <button class="ShowMore" style="width: 50%">Dowiedz się więcej</button>
                 <button class="ShowLess" style="width: 50%">Pokaż mniej</button>
                 <form action="CarOnTheWayDelete.php" method="POST" style="width: 50%">
                     <input type="text" name="WhichToDelete" value="'.$ID_CarSales.'" style="display: none">         
                     <input type="submit" name="Delete" class="Delete" value="Usuń">
                 </form>
                 </div>
               </div>';
             }
             $mysqli->close();
        ?>
  </div>
  <div class="footer">Copyright © Piotr Dusiński</div>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>

</html>