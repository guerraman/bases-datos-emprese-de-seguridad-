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
     $cod_jefe = $_REQUEST["Cod_jefe_"];
     $id_jefe = $_REQUEST["id_jefe_"];  
     $nombre_jefe = $_REQUEST["nombre_jefe_"]; 
     $telefono_jefe = $_REQUEST["telefono_jefe_"]; 
     $direccion_jefe = $_REQUEST["direccion_jefe_"]; 
     $correo_jefe = $_REQUEST["correo_jefe_"];

     
    

     $conexion = mysqli_connect("localhost","root","","empresa-seguridad");

     $sql = "INSERT INTO jefe(cod_jefe,id_jefe,nombre_jefe,telefono_jefe,direccion_jefe,correo_jefe) VALUES ('$cod_jefe','$id_jefe','$nombre_jefe','$telefono_jefe','$direccion_jefe','$correo_jefe')";
     
   

     $consulta = mysqli_query($conexion,$sql) or die (" no se pudo ingresar el registro");

     if ($consulta = 1)
     {
        print " Registro Ingresado Con Exito ";
     }
    ?>
</body>
</html>