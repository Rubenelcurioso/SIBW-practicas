<?php
    require_once "/usr/local/lib/php/vendor/autoload.php"; //Carga twig
    require_once "bd.php";

    $loader = new \Twig\Loader\FilesystemLoader('templates/'); // Las \ <- espacio de nombres
    $twig = new \Twig\Environment($loader);

    $cID = (isset($_GET['id'])) ? $_GET['id'] : -1; //Asigna -1 si no encuentra la id
    $cientifico = obtenerCientifico($cID);

    $imagenesCientifico = obtenerArrayImagenes($cientifico); # Obtener la url's de imagenes

    $mysqli->close(); //Cerramos conexión cuando ya no necesitemos mas
    
    echo $twig->render('cientifico.html.twig',['id' => $cID,'cientifico' => $cientifico,'imagenes' => $imagenesCientifico]);
?>