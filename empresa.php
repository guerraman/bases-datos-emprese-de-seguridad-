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

     $cod_empresa = $_REQUEST["Cod_empresa_"];
     $nombre_empresa = $_REQUEST["nombre_empresa_"];  
     $direccion_empresa = $_REQUEST["direccion_empresa_"]; 
     $correo_empresa = $_REQUEST["correo_empresa_"]; 
    

     
    

     $conexion = mysqli_connect("localhost","root","","empresa-seguridad");

     $sql = "INSERT INTO empresa(cod_empresa,nombre_empresa,direccion_empresa,correo_empresa) VALUES ('$cod_empresa','$nombre_empresa','$direccion_empresa','$correo_empresa')";
     
   

     $consulta = mysqli_query($conexion,$sql) or die (" no se pudo ingresar el registro");

     if ($consulta = 1)
     {
        print " Registro Ingresado Con Exito ";
     }
    ?>  

</body>
</html>