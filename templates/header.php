<?php 
    include('includes/verify_install.php');
    include('includes/db.php');

    $ide = $_GET['id'];
    $Sesion = $_GET['sesion'];
    $pass = $_GET['pass'];
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?= $title ?> · ON_LINE</title>
    <link rel="icon" type="image/jpg" href="logo.jpg">
    <!-- Aqui van nuestros estilos -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    
</head>
<body>
    <script>

        function SoloNumeros(e) {
            var key = window.Event ? e.which : e.keyCode
            return (key >= 48 && key <= 57)
        }

        function volver(){
        window.history.go(-1);
        }
    </script>
    <div class="bg-dark">
    <div class="container bg-white">
        <div class="p-3 mb-2 bg-success border-bottom border-dark rounded-bottom ">
            <div class="d-flex justify-content-around">
                <div class="text-center font-weight-bold text-white">
                    <a href="perfil.php?id=<?= $ide?>&sesion=<?= $Sesion?>&pass=<?= $pass?>" class="text-center text-decoration-none h3"><img src="users.jpg" class="align-self-center mr-3 rounded-circle" width="50" height="50"></a>
                </div>
                <p class="h1 text-center font-weight-bold text-white">ON_LINE PRODUCTOS</p>
                <img src="logo.jpg" class="ml-3" width="50" height="50">
            </div>
            
            <div class="d-flex justify-content-around">
                <a href="index.php?id=<?= $ide?>&sesion=<?= $Sesion?>&pass=<?= $pass?>" class="btn btn-info font-weight-bold border-dark h3">INICIO</a>
                <a href="vender.php?id=<?= $ide?>&sesion=<?= $Sesion?>&pass=<?= $pass?>" class="btn btn-info font-weight-bold border-dark h3">VENDER</a>
                <?php if($Sesion == "false"){ ?>
                    <a href="registrar_usuarios.php?id=<?= $ide?>&sesion=<?= $Sesion?>&pass=<?= $pass?>" class="btn btn-info font-weight-bold border-dark h3">CREA TU CUENTA</a>
                <?php }else{ ?>
                    <a href="perfil.php?id=<?= $ide?>&sesion=<?= $Sesion?>&pass=<?= $pass?>" class="btn btn-info font-weight-bold border-dark h3">PERFIL</a>
                <?php    } ?>
            </div>
        </div>