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
  <meta name="description" content="JMK - Ruda Śląska">
  <meta name="keywords" content="JMK, Salon samochodowy, Salon piękności">
  <title>JMK</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
  <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
  <script src="../../../js/jquery.min.js"></script>
  <script src="../../../js/app.js"></script>
  <link rel="stylesheet" href="../../../css/style.css">
</head>

<body>
<?php

    $mysqli = new mysqli('localhost','root', '','jmk') or die($mysqli->connect_error);

    if(isset($_POST["tittleVechicle"]) && isset($_POST["tittleDescriptionSmaller"]) && isset($_POST["tittleDescriptionBigger"]))
    {
        $tittleVechicle = $mysqli -> real_escape_string($_POST["tittleVechicle"]);
        $tittleDescriptionSmaller = $mysqli -> real_escape_string($_POST["tittleDescriptionSmaller"]);
        $tittleDescriptionBigger = $mysqli -> real_escape_string($_POST["tittleDescriptionBigger"]);

        $query = $mysqli -> query("INSERT INTO carrental VALUES (NULL,'$tittleVechicle','$tittleDescriptionSmaller','$tittleDescriptionBigger')");
    }

    $phpFileUploadErrors = array(
        0 => "Nie ma błędu, plik przesłany pomyślnie.",
        1 => "Przesłany plik przekracza dyrektywę upload_max_filesize w php.ini .",
        2 => " Przesłany plik przekracza dyrektywę MAX_FILE_SIZE określoną w formularzu HTML.",
        3 => "Przesłany plik został przesłany tylko częściowo.",
        4 => "Żaden plik nie został przesłany.",
        6 => "Brak folderu tymczasowego.",
        7 => "Nie udało się zapisać pliku na dysku.",
        8 => "Rozszerzenie PHP zatrzymało przesyłanie pliku. PHP nie zapewnia sposobu sprawdzenia, które rozszerzenie spowodowało zatrzymanie przesyłania pliku; Pomocne może być sprawdzenie listy załadowanych rozszerzeń za pomocą phpinfo() .");
        
    if(isset($_FILES['userfile']))
    {
        $file_array = reArrayFiles($_FILES['userfile']);

        $foldername = "web/".$tittleVechicle.md5(date('Y-m-d H:i:s:u'));

        mkdir($foldername, 0777, true);
        
        for($i=0;$i<count($file_array);$i++)
        {
            if($file_array[$i]['error'])
            {
                ?>
                <div class="alert alert-danger">
                <?php echo $file_array[$i]['name'].' - '.$phpFileUploadErrors[$file_array[$i]['error']];?>
                </div>
                <?php
            }
            else
            {
                $extensions = array('jpg','png','gif','jpeg');
                $file_ext = explode('.',$file_array[$i]['name']);

                $name = $file_ext[0];
                $name = preg_replace("!-!"," ",$name);
                $name = ucwords($name);

                $file_ext = end($file_ext);
                
                if(!in_array($file_ext, $extensions))
                {
                    ?>
                    <div class="alert alert-danger">
                    <?php echo $file_array[$i]['name']." - złe rozszerzenie, dostępne tylko: jpg, png, gif, jpeg" ?>
                    </div>
                    <?php
                }
                else
                {
                    $img_dir = $foldername."/".$file_array[$i]['name'];

                    move_uploaded_file($file_array[$i]['tmp_name'], $img_dir);

                    $sql = "INSERT IGNORE INTO carrentalphotos (img_name,img_dir,img_dir_folder,ID_CarRentalImageTo) VALUES('$name','$img_dir', '$foldername',(SELECT MAX(carrental.ID_CarRental) FROM carrental))";

                    $mysqli->query($sql) or die($mysqli->error);

                    ?>
                    <div class="alert alert-success">
                        <?php echo $file_array[$i]['name']." - ".$phpFileUploadErrors[$file_array[$i]['error']]; ?>
                    </div>
                    <?php
                    header("Location: CarRentalR.php");
                }
                
            }
        }
    }

    function reArrayFiles(&$file_post)
     {
         $file_ary = array();
         $file_count = count($file_post['name']);
         $file_keys = array_keys($file_post);
         for ($i = 0; $i < $file_count; $i++) 
         {
             foreach ($file_keys as $key) 
             {
                 $file_ary[$i][$key] = $file_post[$key][$i];
             }
         }
         return $file_ary;
     }

    function  pre_r($array)
    {
        echo '<pre>';
        print_r($array);
        echo '</pre>';
    }
    $mysqli->close();
?>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>