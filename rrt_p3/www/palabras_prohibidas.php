<?php
    require_once "bd.php";

    $palabras = obtenerPalabrasProhibidas();
    $json = json_encode($palabras);
  
    $mysqli->close(); //Cerramos conexión cuando ya no necesitemos mas

    echo $json;
?>