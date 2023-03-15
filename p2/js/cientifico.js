const botonComentario = document.getElementById("bComm");

function mostrarComentarios(){
    var seccionComments = document.getElementById("comentarios");
    if(seccionComments.style.display=="none"){
        seccionComments.style.display = "block";
        return false;
    }
    seccionComments.style.display = "none";
    return true;
}

botonComentario.addEventListener("click",mostrarComentarios);
