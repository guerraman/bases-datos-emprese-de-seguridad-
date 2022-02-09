<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>


<form method="POST" action="supervisor.php">
  
        
        <fieldset>
         <legend>Ingrese al supervisor</legend>
         
         <p>
         <label>Escriba el codigo del supervisor:
         <input type="text" name="Cod_supervisor_">
         </label>    
         </p>
        
         <p>
         <label>Escriba el id del supervisor:
         <input type="text" name="id_supervisor_">
         </label>    
         </p>
         
         <p>
         <label>Escriba el nombre del supervisor:
         <input type="text" name="nombre_supervisor_">
         </label>    
         </p>
         
         <p>
         <label>Escriba el telefono del supervisor:
         <input type="text" name="telefono_supervisor_">
         </label>    
         </p>
 
         <p>
         <label>Escriba la direccion del supervisor:
         <input type="text" name="direccion_supervisor_">
         </label>    
          </p>
 
          <p>
         <label>Escriba el correo del supervisor:
         <input type="text" name="correo_supervisor_">
         </label>    
         </p>
         
         <p>
         <label>Escriba el codigo del jefe , codigo disponible=1:
         <input type="text" name="cod_jefe_">
         </label>    
         </p>
   

         <p>
         <input type="submit" value="Enviar" name="Sub" />   
         </p>
         </fieldset>
         </form>

</body>
</html>