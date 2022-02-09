<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
<?php
     $cod_arma = $_REQUEST["Cod_arma_"];
     $nombre_arma = $_REQUEST["nombre_arma_"];  
     $tipo_arma = $_REQUEST["tipo_arma_"]; 
     $cod_vigilante = $_REQUEST["cod_vigilante_"]; 
    

     
    

     $conexion = mysqli_connect("localhost","root","","empresa-seguridad");

     $sql = "INSERT INTO arma(cod_arma,nombre_arma,tipo_arma,cod_vigilante) VALUES ('$cod_arma','$nombre_arma','$tipo_arma','$cod_vigilante')";
     
   

     $consulta = mysqli_query($conexion,$sql) or die (" no se pudo ingresar el registro");

     if ($consulta = 1)
     {
        print " Registro Ingresado Con Exito ";
     }
    ?>  

</body>
</html>