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
     $cod_supervisor = $_REQUEST["Cod_supervisor_"];
     $id_supervisor = $_REQUEST["id_supervisor_"];  
     $nombre_supervisor = $_REQUEST["nombre_supervisor_"]; 
     $telefono_supervisor = $_REQUEST["telefono_supervisor_"]; 
     $direccion_supervisor = $_REQUEST["direccion_supervisor_"]; 
     $correo_supervisor = $_REQUEST["correo_supervisor_"];
     $cod_jefe = $_REQUEST["cod_jefe_"];

     
    

     $conexion = mysqli_connect("localhost","root","","empresa-seguridad");

     $sql = "INSERT INTO supervisor(cod_supervisor,id_supervisor,nombre_supervisor,telefono_supervisor,direccion_supervisor,correo_supervisor,cod_jefe) VALUES ('$cod_supervisor','$id_supervisor','$nombre_supervisor','$telefono_supervisor','$direccion_supervisor','$correo_supervisor','$cod_jefe')";
     
   

     $consulta = mysqli_query($conexion,$sql) or die (" no se pudo ingresar el registro");

     if ($consulta = 1)
     {
        print " Registro Ingresado Con Exito ";
     }
    ?>  
</body>
</html>