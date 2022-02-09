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
     $cod_perro = $_REQUEST["Cod_perro_"];
     $nombre_perro = $_REQUEST["nombre_perro_"];  
     $raza_perro = $_REQUEST["raza_perro_"]; 
     $cod_vigilante = $_REQUEST["cod_vigilante_"]; 
    

     
    

     $conexion = mysqli_connect("localhost","root","","empresa-seguridad");

     $sql = "INSERT INTO perro(cod_perro,nombre_perro,raza_perro,cod_vigilante) VALUES ('$cod_perro','$nombre_perro','$raza_perro','$cod_vigilante')";
     
   

     $consulta = mysqli_query($conexion,$sql) or die (" no se pudo ingresar el registro");

     if ($consulta = 1)
     {
        print " Registro Ingresado Con Exito ";
     }
    ?>  



</body>
</html>