<?php
    require_once "/usr/local/lib/php/vendor/autoload.php"; //Carga twig
    require_once "bd.php";

    $loader = new \Twig\Loader\FilesystemLoader('templates'); // Las \ <- espacio de nombres
    $twig = new \Twig\Environment($loader);

    $cientificos = obtenerCientificos();
    $imagenes = array();

    foreach($cientificos as $cientifico){
        $imagenes[] = obtenerArrayImagenes($cientifico)[0]; //Obtener 1º imagen de cada cientifico
    }
    
    $mysqli->close(); //Cerramos conexión cuando ya no necesitemos mas

    echo $twig->render('portada.html.twig',['cientificos' => $cientificos,'imagenes' => $imagenes]);
?>
