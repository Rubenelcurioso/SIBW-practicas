<?php
    //Conexión por cada petición HTTP
    $mysqli = new mysqli("database","probador",".KCbizX-M7tvdtU.","SIBW");#Nombre del host = database servicio de la imagen
    /*Si estuviese dentro de una función sería por consulta*/

    if($mysqli->connect_errno){//Comprobación de la conexión
        echo("Fallo en la conexión " . $mysqli->connect_errno);
    }

    function obtenerCientifico($cId)
    {
        global $mysqli;
       
        $cientifico = array("nombre" => "xxx", "nacimiento"  => "yyy", "muerte" => "zzz", "lugar" => "lll", "texto" => "ttt", "imagenes" => "iii");
        //Sentencia preparadas para separar la consulta de los datos
        $sentencia = $mysqli->prepare("SELECT * FROM cientificos WHERE id= ?");#Coger un científico dentro de la tabla
        $sentencia->bind_param("i", $cId);//Asigna a ? el valor, la i es de integer
        $sentencia->execute(); //Ejecuta la sentencia preparada
        $resultado = $sentencia->get_result();

       if($resultado->num_rows > 0){
        $fila = $resultado->fetch_assoc(); #Fila del resultado
        
        $cientifico = ['nombre' => $fila['nombre'],'nacimiento' => $fila['f_nac'], 'muerte' => $fila['f_mue'], 'lugar' => $fila['lugar'], 'texto' => $fila['texto'], 'imagenes' => $fila['url']];
       }

       return $cientifico;
    }

    function obtenerCientificos()
    {
        $cientificos = array();
        
        for($i=1; $i<7; $i++){
            $cientificos[] = obtenerCientifico($i);
        }

        return $cientificos;
    }

    function obtenerPalabrasProhibidas(){
        global $mysqli;

        $palabras_prohibidas = array();
        //Aquí no hace falta uso de sentencias preparadas pues no pedimos nada
        $resultado = $mysqli->prepare("SELECT * FROM palabras_prohibidas");#Coger todas las palabras
       
       if($resultado->num_rows > 0){
        while($fila = $resultado->fetch_assoc()){
            $palabras_prohibidas[] = $fila['palabra'];
        }
       }

       return $palabras_prohibidas;
    }

    function obtenerArrayImagenes($cientifico){ 
        /*Divide la cadena en subcadenas a partir de una expresión regular
        el salto de línea en este caso*/
        return preg_split("/;/",$cientifico['imagenes']);
    }

?>
