<!DOCTYPE html>
<html lang="pl">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="description" content="">
  <meta name="keywords" content="">
  <title>Samochody w drodze - CarShop</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  <script src="../../js/jquery.min.js"></script>
  <script src="../../js/app.js"></script>
  <link rel="stylesheet" href="../../css/style.css">
</head>

<body>
<div class="containermenumobile">
    <div class="BoxShadow">
      <div class="banner">
        <div class="logo">
          <h1>Wynajem samochodów</h1>
        </div>
        <div class="menuphone">
          <button class="menulines">
            <img src="img/Menu/meunlines.png" alt="" width="100%">
          </button>
        </div>
      </div>
      <div class="menuphonecontent">
        <a href="../../index.html">Salony</a>
        <a href="ContactCS.php">Kontakt</a>
        <a href="CarSales.php">Sprzedaż samochodów</a>
        <a href="ClassicCars.php">Klasyczne samochody </a>
        <a href="CarRental.php">Wynajem samochodów</a>
        <a href="CarsOnTheWay.php">Samochody w drodze</a>
      </div>
    </div>
  </div>
  <div class="menuH">
    <div class="menuinH">
      <div class="LogoMenuH">
      </div>
      <div class="ContentMenu">
        <a href="../../index.html">Salony</a>
        <a href="ContactCS.php">Kontakt</a>
      </div>
    </div>
    <div class="CarsChooseH">
    <ul>
        <li><a href="CarSales.php">Sprzedaż samochodów</a><div class="under"></div></li>
        <li><a href="ClassicCars.php">Klasyczne samochody</a><div id="thispage" class="active"></div></li>
        <li><a href="CarRental.php">Wynajem samochodów</a><div class="under"></div></li>
        <li><a href="CarsOnTheWay.php">Samochody w drodze</a><div id="thispage" class="active"></div></li>
    </ul>
    </div>
  </div>


  <div class="ContainerMainH">
  <?php
             $mysqli = new mysqli('localhost','root', '','jmk') or die($mysqli->connect_error);
     
             $carsales = $mysqli->query("SELECT * FROM classiccars ORDER BY ID_ClassicCar DESC;") or die($mysqli->error);
     
             $carsalesphotos = $mysqli->query("SELECT *
             FROM classiccarsphotos 
             WHERE classiccarsphotos.ID_ClassicCarImage NOT IN (SELECT MIN(classiccarsphotos.ID_ClassicCarImage) FROM classiccarsphotos GROUP BY classiccarsphotos.ID_ClassicCarImageTo)
             ORDER BY classiccarsphotos.ID_ClassicCarImageTo;") or die($mysqli->error);

             $carsalesphotosFirst = $mysqli->query("SELECT classiccarsphotos.ID_ClassicCarImage, classiccarsphotos.img_dir, classiccarsphotos.ID_ClassicCarImageTo FROM classiccarsphotos GROUP BY classiccarsphotos.ID_ClassicCarImageTo;") or die($mysqli->error);

             while($data = $carsales->fetch_assoc())
             {
                 $ID_CarSales = $data['ID_ClassicCar'];
                 $CarTittle = $data['CarTitle'];
                 $DescriptionSmaller = $data['DescriptionSmaller'];
                 $DescriptionBigger = $data['DescriptionBigger'];
                
                 echo '<div class="CarCard">
                 <div class="CarCardImage">';
                 
                 foreach($carsalesphotosFirst as $data1)
                 {
                      $ID_CarSalesImageMIN = $data1['ID_ClassicCarImage'];
                      $img_dir = $data1['img_dir'];
                      $ID_CarSalesImageToMIN = $data1['ID_ClassicCarImageTo'];

                      if($ID_CarSalesImageToMIN == $ID_CarSales)
                      {
                        echo '<img src="../Restricted/ClassicCars/'.$img_dir.'" width="100%" alt="">';
                      }
                 }
                
                echo '</div>
                 <div class="CarCardBigger">
                   <div id="carouselExampleControlsNoTouching'.$ID_CarSales.'" class="carousel slide" data-bs-touch="false"
                     data-bs-interval="false">
                     <div class="carousel-inner">';
                    foreach($carsalesphotosFirst as $data1)
                    {
                      $ID_CarSalesImageMIN = $data1['ID_ClassicCarImage'];
                      $img_dir = $data1['img_dir'];
                      $ID_CarSalesImageToMIN = $data1['ID_ClassicCarImageTo'];

                      if($ID_CarSalesImageToMIN == $ID_CarSales)
                      {
                        echo '<div class="carousel-item active">';
                        echo '<img src="../Restricted/ClassicCars/'.$img_dir.'" width="100%" alt="">';
                        echo '</div>';
                      }
                    }
                     foreach($carsalesphotos as $data2)
                     {
                      $ID_CarSalesImage = $data2['ID_ClassicCarImage'];
                      $img_dir = $data2['img_dir'];
                      $ID_CarSalesImageTo = $data2['ID_ClassicCarImageTo'];

                        if($ID_CarSalesImageTo == $ID_CarSales)
                        {
                        echo '<div class="carousel-item">
                                <img src="../Restricted/ClassicCars/'.$img_dir.'" class="d-block w-100" alt="...">
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
                 <button class="ShowMore">Dowiedz się więcej</button>
                 <button class="ShowLess">Pokaż mniej</button>
                 </div>
               </div>';
             }
             $mysqli->close();
        ?>
  </div>
  <div class="footer">Copyright © Piotr Dusiński</div>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
    crossorigin="anonymous"></script>
</body>

</html>