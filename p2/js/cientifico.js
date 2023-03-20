const botonComentario = document.getElementById("bComm");

function mostrarComentarios(){
    var seccionComments = document.getElementById("comentarios"); //Obtener div
    if(seccionComments.style.display=="none" || seccionComments.style.display==""){ //Modificar visibilidad si no se ve
        seccionComments.style.display = "block";
    }else{
        seccionComments.style.display = "none";
    }
}

botonComentario.addEventListener("click",mostrarComentarios);

const formulario = document.getElementById("formulario");

formulario.addEventListener("submit",(evento) => { //Función inline para añadir el comentario
    evento.preventDefault(); //Evita que al enviar el comentario se refresque la página
    //Obtener valores del comentario
    const campoNombre = document.getElementById("iName");
    const campoMail   = document.getElementById("iMail");
    const campoComentario = document.getElementById("iTArea");

    if(campoComentario.value == "" || campoMail.value == "" || campoNombre == ""){//Algún campo vacío
        alert("No puede dejar los campos en blanco");
        return;
    }

    if(!validarEmail(campoMail.value)){
        alert("Email inválido");
        return;
    }

    const caja_comentario = document.createElement("div",{
        class: "Comentario" //Agrega directamente el div a la clase
    });

    const fecha_actual = new Date();

    var parrafo_comentario = document.createElement("p") //Añade parrafo
    parrafo_comentario.textContent = campoNombre.value +" "+ fecha_actual.toString() +": "+ campoComentario.value; 

    var barra_separadora = document.createElement("hr");

    //Agrega los elementos creados a los respectivos elementos padres
    const caja_Comentarios = document.getElementById("comentarios"); //Elemento padre
    caja_Comentarios.insertBefore(caja_comentario,formulario); //Insertarlo y ponerlo por encima del elemento form
    caja_comentario.appendChild(parrafo_comentario);//Div -> p
    caja_comentario.appendChild(barra_separadora); //Div -> hr


    campoNombre.value=campoMail.value=campoComentario.value=""; //Vacio el formulario
});


var cajaComentario = document.getElementById("iTArea");

function censuraPalabra(){
    var texto = cajaComentario.value;
    var palabrasProhibidas = ["puta","puto","tonto","tonta","gilipollas","inutil","desgraciado","desgraciada","vago","vaga"];
    var filtroPalabras = {}; //Filtro ira relleno de * según caracteres de las palabras
    for(let i=0; i<palabrasProhibidas.length; i++) {//Rellena el array
        filtroPalabras[palabrasProhibidas[i]] = "*".repeat(palabrasProhibidas[i].length);
    }
    for (let i = 0; i < palabrasProhibidas.length; i++){
        var expresion_regular = new RegExp(palabrasProhibidas[i],"ig"); //Expresión regular global "i"= quita el case sensitive, "g"= global
        texto = texto.replaceAll(expresion_regular, filtroPalabras[palabrasProhibidas[i]]);
    }
    cajaComentario.value = texto; //Actualiza el contenido
}

cajaComentario.addEventListener("input", censuraPalabra);


function validarEmail(email) {
    // Expresión regular para validar el email -> http://w3.unpocodetodo.info/utiles/regex-ejemplos.php?type=email RFC 5322
    const expresion_regular = /^[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?$/;
    
    // Retorna true si el email es válido, de lo contrario false
    return expresion_regular.test(String(email).toLowerCase());
}