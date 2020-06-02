<?php 
    $ide = $_GET['id'];
    $Sesion = $_GET['sesion'];
    if($Sesion == "false" && $ide == "NULL" || $Sesion == "false" && $ide != "NULL" || $Sesion == "true" && $ide == "NULL"){
        header('Location: registrar_usuarios.php?id='.$ide.'&sesion='.$Sesion.'&pass=');
    }else{
        
        $title = "Mi perfil";
        include('templates/header.php');
        $ssql = "SELECT * FROM usuarios WHERE id = '$ide'";
        $result = DB::query($ssql);
        $mostrar = mysqli_fetch_array($result);

        //comprobar inicio de sesion
        if($pass != $mostrar['password'])
        {
            header('Location: iniciar_sesion.php?id=NULL&sesion=false&pass=');
        }
    }
?>
<div class="border border-dark container bg-info rounded-lg">
    <br>
    <div class="border border-dark container bg-white rounded-lg">
        <div class="form-group d-flex w-100 justify-content-between">
            <p class="h2 text-center"><img src="USUARIOS.jpg" class="align-self-center mr-3 rounded-circle" width="120" height="120">MI PERFIL</p>
            <small>
            <br>
                <a href="sesion.php?id=<?= $ide?>&sesion=cerrar&pass=" class="btn btn-secondary font-weight-bold border-dark h3">
                    CERRAR SESION
                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 12 16" width="12" height="16"><path fill-rule="evenodd" d="M11 10h1v3c0 .55-.45 1-1 1H1c-.55 0-1-.45-1-1V3c0-.55.45-1 1-1h3v1H1v10h10v-3zM6 2l2.25 2.25L5 7.5 6.5 9l3.25-3.25L12 8V2H6z"></path></svg>
                </a>
            </small>
        </div>
        <div class="media">
            <div class="media-body container">
                <br>
                <div class="form-group">
                    <p class="font-weight-bold h4">USUARIO: <?= $mostrar['nombre']?>&nbsp;<?= $mostrar['apellido']?></p>
                </div>
                <div class="form-group">
                    <p class="font-weight-bold h4">E-MAIL: <?= $mostrar['email'] ?></p>
                </div>
                <div class="form-group">
                    <p class="font-weight-bold h4">CELULAR: <?= $mostrar['celular'] ?></p>
                </div>
                <div class="form-group">
                    <p class="font-weight-bold h4">WHATSAPP: <?= $mostrar['whatsapp'] ?></p>
                </div>
                <div class="form-group">
                    <p class="font-weight-bold h4">DIRECCION: <?= $mostrar['direccion'] ?></p>
                </div>
                <div class="form-group">
                    <p class="font-weight-bold h4">CIUDAD: <?= $mostrar['ciudad'] ?></p>
                </div>
                <div class="form-group">
                    <a href="editar_usuario.php?id=<?= $ide?>&sesion=<?= $Sesion?>&pass=<?= $pass?>" class="btn btn-primary font-weight-bold border-dark h3">
                        EDITAR
                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 14 16" width="14" height="16"><path fill-rule="evenodd" d="M0 12v3h3l8-8-3-3-8 8zm3 2H1v-2h1v1h1v1zm10.3-9.3L12 6 9 3l1.3-1.3a.996.996 0 011.41 0l1.59 1.59c.39.39.39 1.02 0 1.41z"></path></svg>
                    </a>
                </div>
            </div>
            <img src="logo.jpg" class="ml-3 border border-info rounded" width="500" height="500">
        </div>
        <br>
    </div>
    <br>
</div>

<br>

<div class="border border-dark container bg-info rounded-lg">
    <br>
    <div class="card mb-3 border border-dark container bg-white rounded-lg" >
        <br>
        <div class="text-center">
            <p class="h3">MIS VENTAS</p>
        </div>
    </div>
    <?php
        $sql = "SELECT * FROM productos";
        $result = DB::query($sql);
        $cant_productos = mysqli_num_rows($result);

        $ventas = "SELECT * FROM productos WHERE persona_id = ".$ide;
        $result = DB::query($ventas);
        $cant_publicaciones = mysqli_num_rows($result);

        if($cant_publicaciones > 0)
        {
            for($i=1; $i<=$cant_productos; $i++)
            {
                $sql = "SELECT * FROM productos WHERE id = ".$i;
                $result = DB::query($sql);
                $mostrar = mysqli_fetch_array($result);
                if($mostrar['persona_id'] == $ide)
                {
    ?>
        <div class="card mb-3 border border-dark container bg-white rounded-lg" >
            <br>
            <div class="row no-gutters">
                <div class="col-md-4">
                    <img src=<?= $mostrar['img_producto']?> class="card-img" >
                </div>
                <div class="col-md-8">
                    <div class="card-body">
                        <h5 class="card-title font-weight-bold"><?= $mostrar['nombre']?></h5>
                        <p class="card-text text-info font-weight-bold">Precio: $<?= $mostrar['precio']?></p>
                        <br>
                        <p class="card-text text-justify"><?= $mostrar['descripcion']?></p>
                    </div>
                    <div class="card-body text-right">
                        <a href="detalle_producto.php?id=<?= $ide?>&sesion=<?= $Sesion?>&producto=<?= $mostrar['id']?>&pass=<?= $pass?>" class="text-right">Detalles</a>
                    </div>
                </div>
            </div>
            <br>
        </div>
    <?php } } }else{ ?>
        <br>
        <div class="card mb-3 border border-dark container bg-white rounded-lg" >
            <br>
            <div class="text-center">
                <p class="h3">NO HAY VENTAS REGISTRADAS</p>
            </div>
            <br>
        </div>
    <?php    } ?>
</div>