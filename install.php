<?php 
    
    if(isset($_POST["host"])){
        //Escribir en el archivo config las variables de conexión
        $file = fopen("includes/config.php", "w");

        fwrite($file, "<?php" . PHP_EOL);
        fwrite($file, "define('HOST', '" . $_POST['host'] ."');" . PHP_EOL);
        fwrite($file, "define('USER', '" . $_POST['user'] ."');" . PHP_EOL);
        fwrite($file, "define('PASSWORD', '" . $_POST['password'] ."');" . PHP_EOL);
        fwrite($file, "define('DB', '" . $_POST['db'] ."');" . PHP_EOL);
        fwrite($file, "?>");

        fclose($file);
        
        echo "Creando archivo de conexión";

        //Importando la base de datos
        $sql = file_get_contents('includes/db.sql');

        include('includes/db.php');

        if(DB::getConnection()->multi_query($sql)){
           //Se ejecuto la importación correctamente
           unlink('install.php');
           header('Location: index.php?id=NULL&sesion=false&pass=');
        }else{
            echo "No se ha podido importar la base de datos, verifique los errores";
        }
        
        die;
    }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>INICIO DE BASE DE DATOS</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
</head>
<body>
    <div class="border border-dark container bg-info rounded-lg">
        <Form action="install.php" method="post">
            <div class="form-group">
                <p class="h2 text-center">INGRESAR DATOS PARA CONEXION DE BASE DE DATOS</p>
            </div>
            <div class="form-group">
                <label for="Host">HOST:</label>
                <input type="text" class="form-control border border-dark" id="Host" name="host">
            </div>

            <div class="form-group">
                <label for="User">USER:</label>
                <input type="text" class="form-control border border-dark" id="User" name="user">
            </div>

            <div class="form-group">
                <label for="Password">CONTRASEÑA DB:</label>
                <input type="text" class="form-control border border-dark" id="Password" name="password">
            </div>

            <div class="form-group">
                <label for="Db">NOMBRE DE LA BASE:</label>
                <input type="text" class="form-control border border-dark" id="Db" name="db">
            </div>

            <div class="form-group">
                <button type="submit" class="btn btn-lg btn-primary btn-block border-dark">CONECTAR</button>
            </div>
        </Form>
    </div>
</body>
</html>
