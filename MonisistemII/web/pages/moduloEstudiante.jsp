<%@page import="java.sql.*"%>
<%@page import="Logic.ConexionO"%>
<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%>
<%
	String usuario="";
        String tipo="";
	HttpSession sesionOk = request.getSession();
	if (sesionOk.getAttribute("usuario") == null){
		%>
			<jsp:forward page="../index.jsp">
				<jsp:param value="Es obligatorio Identificarse" name="error"/>
			</jsp:forward>
		<%
	}else{
		usuario=""+sesionOk.getAttribute("usuario");
              
	}
%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Modulo Estudiante</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script src="../css/bootstrap/jquery-3.2.1.min.js" ></script>
	<script src="../css/bootstrap/js/bootstrap.min.js"></script>
	<link href="../css/bootstrap/css/bootstrap.css" rel="stylesheet" media="screen">
        <link rel="shortcut icon" type="image/x-icon" href="../images/estudiante.png">
        <script src="../scripts/script.js"></script>
        <link rel="stylesheet" href="../css/MyStyleModulo.css"/>
    </head>
    <body class="panel panel-body " >
        <div class="container">
            <!-- Titulo Cabecera -->
            <div class="cabecera page-header ">
                <header class="titulo">
                    <h1 style="font-size: 500%;" class="text-center"> MoniSistem te da la Bienvenida </h1>
                </header>
            </div>
            
            <div class="row">
                <!-- Logo Sistemas -->
                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-2">
                    <div class="volver" style="background: transparent">
                        <a href="../index.jsp"><img src="../images/cerrar.png"  title="Cerrar Sesion" alt="salir"></a>
                    </div> 
                    <div class="thumbnail text-center" style="background: transparent">
                        <h4>Estudiante</h4>
                        <img src="../images/estudiante.png" style="height: 5vw">
                        <figcaption><%out.println(usuario);%></figcaption>
                    </div>
                    <div class="thumbnail text-center" style="background: transparent">
                        
                        <img id="ciclo" src="../images/logo.png" alt="img" style="height:10vw;">
                        <figcaption>Logo SIC Sogamoso</figcaption>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-10">
                    <h2 class="text-center">Ingenieria de Sistemas y Computacion</h2>
                    
                    <ul class="nav nav-tabs">
                      <li class="active"> </li>
                      <li><a data-toggle="tab" href="#noticias">Noticias</a></li>
                      <li><a data-toggle="tab" href="#basica">Programacion Basica</a></li>
                      <li><a data-toggle="tab" href="#avanzada">Programacion Avanzada</a></li>
                      <li><a data-toggle="tab" href="#redes">Redes</a></li>
                      <li><a data-toggle="tab" href="#bases">Bases Datos</a></li>
                    </ul>

                    <div class="tab-content">
                      <div id="noticias" class="tab-pane fade in active text-center">
                          <h3 class="text-primary">
                              <img src="../images/noticias.png" style="height: 5vw;">
                              Mi Area <%out.println(tipo);%></h3>
                        <div class="thumbnail" style="background: transparent">
                            <h3>Publicaciones</h3>
                            <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModalNuevo">
                        <span class="glyphicon glyphicon-new-window"></span>  Nueva </button>

                    <!-- Modal -->
                    <div class="modal fade" id="myModalNuevo" role="dialog">
                      <div class="modal-dialog">

                        <!-- Modal content-->
                        <div class="modal-content">
                          <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title text-center">  Publicacion </h4>
                          </div>
                          <div class="modal-body">
                              
                              <form>
                                  <label>Titulo</label>
                                  <br>
                                  <input type="text">
                                  <br><br>
                                  <label>Contenido</label>
                                  <br>
                                  <textarea rows="10" cols="50">
                                        
                                  </textarea>
                              </form>
                              
                          </div>
                        </div>

                      </div>
                    </div>
                            <div class="panel thumbnail">
                                <%
                                    ConexionO conexion= new ConexionO();
                                    out.print(conexion.getMyArea(tipo));
                                    conexion.cerrarConexion();
                                %>
                             </div>
                            
                            
                        </div>
                      </div>
                      <div id="noticias" class="tab-pane fade">
                        <h3>Noticias</h3>
                        <div class="thumbnail" style="background: transparent">
                            <img src="../images/noticias.png" style="height: 10vw;">
                        </div>
                      </div>
                      <div id="basica" class="tab-pane fade">
                        <h3>Programacion Basica</h3>
                        <div class="thumbnail" style="background: transparent">
                            <img src="../images/pr" style="height: 10vw;">
                        </div>
                      </div>
                      <div id="avanzada" class="tab-pane fade">
                        <h3>Programacion Avanzada</h3>
                        
                        
                        
                      </div>
                      <div id="redes" class="tab-pane fade">
                        <h3>Redes</h3>
                      </div>
                        <div id="bases" class="tab-pane fade">
                        <h3>Bases de Datos</h3>
                      </div>
                    </div>
                </div>
            </div>

        </div>
        
    </body>
</html>
