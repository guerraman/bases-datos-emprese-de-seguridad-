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
     $cod_vigilante = $_REQUEST["Cod_vigilante_"];
     $id_vigilante = $_REQUEST["id_vigilante_"];  
     $nombre_vigilante = $_REQUEST["nombre_vigilante_"]; 
     $telefono_vigilante = $_REQUEST["telefono_vigilante_"]; 
     $direccion_vigilante = $_REQUEST["direccion_vigilante_"]; 
     $correo_vigilante = $_REQUEST["correo_vigilante_"];
     $cod_supervisor = $_REQUEST["cod_supervisor_"];
     $cod_empresa = $_REQUEST["cod_empresa_"];

     
    

     $conexion = mysqli_connect("localhost","root","","empresa-seguridad");

     $sql = "INSERT INTO vigilante(cod_vigilante,id_vigilante,nombre_vigilante,telefono_vigilante,direccion_vigilante,correo_vigilante,cod_supervisor,cod_empresa) VALUES ('$cod_vigilante','$id_vigilante','$nombre_vigilante','$telefono_vigilante','$direccion_vigilante','$correo_vigilante','$cod_supervisor','$cod_empresa')";
     
   

     $consulta = mysqli_query($conexion,$sql) or die (" no se pudo ingresar el registro");

     if ($consulta = 1)
     {
        print " Registro Ingresado Con Exito ";
     }
    ?>   

</body>
</html>