function llamar(num){
				var por="";
				var sub="";
				var img="";
                var fun="";
                switch(num){
                    case 1:
                        por = "includes/perfecto.html";
                        sub = "Numeros Perfectos";
                        img = "imagen/estrella.png";
                        fun = "perfectos()";
                    break;
                    case 2:
                        por = "includes/amigo.html";
                        sub = "Numeros Amigos";
                        img = "imagen/mario.png";
                        fun = "amigos()";
                    break;
                    case 3:
                        por = "includes/magico.html";
                        sub = "Numeros Magicos";
                        img = "imagen/hongo.png";
                        fun = "magicos()";
                    break;
                    case 4:
                        por = "includes/egolatra.html";
                        sub = "Numeros Egolatras";
                        img = "imagen/gomba.png";
                        fun = "egolatras()";
                    break;
                }
                document.getElementById("pagina").setAttribute("src",por);
                document.getElementById('subtitulo').innerHTML=sub;
                document.getElementById("imagen").setAttribute("src",img);
                document.getElementById("boton").setAttribute("onclick",fun);
			}

function perfectos() {
            var num=parseInt(document.getElementById("numero").value);
            var salida="<tr><th>Numero</th><td>"+num+"</td></tr>";
            var divisores="";
            var suma=0;
            var perfecto=false;
            for (var i = 1; i < num; i++) {
                if(num%i == 0){
                    if(divisores == ""){
                        divisores+=""+i;                    
                    }else{
                        divisores+=","+i;
                    }
                    suma+=i;

                }
            }
            if(suma == num){
                perfecto=true;
            }
            salida+="<tr><th>Divisores</th><td>"+divisores+"</td></tr>";
            salida+="<tr><th>Suma</th><td>"+suma+"</td></tr>";
            salida+="<tr><th>Perfecto</th><td>"+perfecto+"</td></tr>";
            

            document.getElementById('resultado').innerHTML=salida;
        }

function amigos() {
            var n1=parseInt(document.getElementById("num1").value);
            var n2=parseInt(document.getElementById("num2").value);
            var salida="<tr><th>Numeros</th><td>"+n1+"</td><td>"+n2+"</td></tr>";
            var divisores="";
            var divisores2="";
            var suma=0;
            var suma2=0;
            var amigos=false;

            for (var i = 1; i < n1; i++) {
                if(n1%i == 0){
                    if(divisores == ""){
                        divisores+=""+i;                    
                    }else{
                        divisores+=","+i;
                    }
                    suma+=i;

                }
            }
            for (var i = 1; i < n2; i++) {
                if(n2%i == 0){
                    if(divisores2 == ""){
                        divisores2+=""+i;                   
                    }else{
                        divisores2+=","+i;
                    }
                    suma2+=i;

                }
            }
            if(suma == n2 & suma2 == n1){
                amigos=true;
            }
            salida+="<tr><th>Divisores</th><td>"+divisores+"</td><td>"+divisores2+"</td></tr>";
            salida+="<tr><th>Suma</th><td>"+suma+"</td><td>"+suma2+"</td></tr>";
            salida+="<tr><th>Perfecto</th><td>"+amigos+"</td></tr>";
            

            document.getElementById('resultado').innerHTML=salida;
        }