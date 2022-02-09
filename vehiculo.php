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
     $cod_vehiculo = $_REQUEST["Cod_vehiculo_"];
     $placa_vehiculo = $_REQUEST["placa_vehiculo_"];  
     $tipo_vehiculo = $_REQUEST["tipo_vehiculo_"]; 
     $marca_vehiculo = $_REQUEST["marca_vehiculo_"]; 
     $cod_vigilante = $_REQUEST["cod_vigilante_"]; 
    

     
    

     $conexion = mysqli_connect("localhost","root","","empresa-seguridad");

     $sql = "INSERT INTO vehiculo(cod_vehiculo,placa_vehiculo,tipo_vehiculo,marca_vehiculo,cod_vigilante) VALUES ('$cod_vehiculo','$placa_vehiculo','$tipo_vehiculo','$marca_vehiculo','$cod_vigilante')";
     
   

     $consulta = mysqli_query($conexion,$sql) or die (" no se pudo ingresar el registro");

     if ($consulta = 1)
     {
        print " Registro Ingresado Con Exito ";
     }
    ?>  

</body>
</html>