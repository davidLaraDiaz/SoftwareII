

function executes(num){
		var por="";
                switch(num){
                    case 1:
                        var por = "includes/abstraccion.html";
                    break;
                    case 2:
                        var por = "includes/encapsulamiento.html";
                    break;
                    case 3:
                        var por = "includes/herencia.html";
                    break;
                    case 4:
                        var por = "includes/polimorfismo.html";
                    break;
                }
                document.getElementById("pagina").setAttribute("src",por);
}

function cambio(){
    alert("holaaaaaaaaa");
    var boton=document.getElementById("boton").value;
    alert(boton);
    if(boton == "Monitores"){
        boton.setAttribute("value", "Estudiantes");
        
    }else{
        boton.setAttribute("value", "Monitores");
    }
    
}


function ciclo(){
    var arreglo = ["Logouptc.png","bases.png","redes.png","software.png",
		"monisistem.png","noticias.png","registro.png"];
    var n=Math.floor((Math.random() * 6) );
    document.getElementById("ciclo").setAttribute("src", "images/"+arreglo[n]);
}

