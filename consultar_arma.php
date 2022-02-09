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
    
    $conexion = mysqli_connect("localhost","root","","empresa-seguridad") or die ("No se pudo conectar");
    $result = mysqli_query($conexion,"SELECT * FROM arma");
    
    echo "<h3>LISTA DE ARMAS </h3>";
    echo "<table border='2' \n";
    echo "<tr><td>cod_arma</td><td>nombre_arma</td><td>tipo_arma</td><td>cod_vigilante</td></tr>\n";

   while($row = mysqli_fetch_row($result))
    {
     echo "<tr><td>$row[0]</td><td>$row[1]</td><td>$row[2]</td><td>$row[3]</td></tr>\n";

    }
      echo "</table \n";
    ?>
</body>
</html>