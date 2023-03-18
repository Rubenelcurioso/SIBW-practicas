const botonComentario = document.getElementById("bComm");

function mostrarComentarios(){
    var seccionComments = document.getElementById("comentarios"); //Obtener div
    if(seccionComments.style.display=="none"){ //Modificar visibilidad si no se ve
        seccionComments.style.display = "block";
    }else{
        seccionComments.style.display = "none";
    }
}

botonComentario.addEventListener("click",mostrarComentarios);

const formulario = document.getElementById("formulario");

formulario.addEventListener("submit",(evento) => {
    evento.preventDefault(); //Evita que al enviar el comentario se refresque la página
    //Obtener valores del comentario
    const campoNombre = document.getElementById("iName");
    const campoMail   = document.getElementById("iMail");
    const campoComentario = document.getElementById("iTArea");

    if(campoComentario.value == "" || campoMail.value == "" || campoNombre == ""){//Algún campo vacío
        alert("No puede dejar los campos en blanco");
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
