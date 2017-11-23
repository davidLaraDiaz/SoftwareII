<%-- 
    Document   : index
    Created on : 10-nov-2017, 08:05:06
    Author     : DavidLenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="true" %>
<%
	HttpSession sesionOk=request.getSession();
	sesionOk.invalidate();
%>
<!DOCTYPE html>
<html>
    <head>
        <title>MoniSistem</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script src="css/bootstrap/jquery-3.2.1.min.js" ></script>
	<script src="css/bootstrap/js/bootstrap.min.js"></script>
	<link href="css/bootstrap/css/bootstrap.css" rel="stylesheet" media="screen">
        <link rel="shortcut icon" type="image/x-icon" href="images/monisistem.png">
        <script src="scripts/script.js"></script>
        <link rel="stylesheet" href="css/MyStyle.css"/>

    </head>
    <body class="panel panel-body" >
        <div class="container">
            
            <!-- Titulo Cabecera -->
            <div class="cabecera page-header ">
                <header class="titulo">
                    <h1 style="font-size: 500%;" class="text-center">MoniSistem 2.0</h1>
                </header>
            </div>
            
            <div class="row">
                
                <!-- Imagenes Carousel -->
                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-9">
                    <div id="myCarousel" class="carousel slide" data-ride="carousel">
                      <!-- Indicators -->
                      <ol class="carousel-indicators">
                        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                        <li data-target="#myCarousel" data-slide-to="1"></li>
                        <li data-target="#myCarousel" data-slide-to="2"></li>
                      </ol>

                      <!-- Wrapper for slides -->
                      <div class="carousel-inner" style="height: 38vh;">
                          
                          <div class="item active">
                              <center>
                                  <br><br>
                            <a href="#"><img src="images/blogger.png" alt="Nuentro Blog" style="width:80%;"></a>
                              </center>
                          </div>

                        <div class="item">
                            <center>
                            <a href="#"><img src="images/logo-uptc.png" alt="UPTC" style="width:55%;"></a>
                            </center>
                        </div>

                        <div class="item">
                            <center>
                            <img src="images/Logo_Ingenieria_Sistemas.png" alt="Ingenieria Sistemas" style="width:80%;">
                            </center>
                        </div>
                      </div>

                      <!-- Left and right controls -->
                      <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left"></span>
                        <span class="sr-only">Previous</span>
                      </a>
                      <a class="right carousel-control" href="#myCarousel" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right"></span>
                        <span class="sr-only">Next</span>
                      </a>
                    </div>
                  </div>
                
                <!-- Login Usuarios -->
                <div class="col-xs-3"></div>
                <div class="col-xs-6 col-sm-6 col-md-6 col-lg-3">
                    <div class="thumbnail" 
                         style="border: solid #245269 1px; background: transparent; height: 18.4vw">
                        <h2 class="text-center text-success">Iniciar Sesion</h2>    
                        
                    <!-- Modal Estudiante -->
                    <div class="icono">
                            <figure>
                                <img src="images/estudiante.png" id="estudiante" title="Estudiante" alt="Estudiante"
                                     data-toggle="modal" data-target="#myModalEstudiante">
				<figcaption>Estudiante</figcaption>
                            </figure>
                        </div>
                    
                    <div class="modal fade" id="myModalEstudiante" role="dialog">
                        <div class="modal-dialog " style="width:20vw ">
                            <center><img src="images/estudiante.png" style="height:25vh"></center>
                        <!-- Modal content-->
                        <div class="modal-content">
                          <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title text-center">Estudiante</h4>
                          </div>
                          <div class="modal-body">
                              <form class="panel-body" method="POST" action="pages/validarE.jsp">
                                <div class="text-left">
                                    <label>Codigo:</label><br>
                                    <span class="glyphicon glyphicon-user"> </span>
                                    <input type="number" id="nombre1" name="nombre1" placeholder="Codigo Estudiante">
                                    <br><br>
                                    <label>Contraseña:</label><br>
                                    <span class="glyphicon glyphicon-lock"> </span>
                                    <input type="password" id="clave1" name="clave1" placeholder="Contraseña Estudiante">
                                    <br>
                                </div>
                                <div class="text-center">
                                    <br>
                                    <button type="submit" class="btn btn-success">Iniciar Sesion</button>
                                    <br><br>
                                    ¿Ya tienes cuenta?
                                    <a href="#"><button class="btn btn-link">Registrate</button></a>
                                </div>

                            </form> 
                          </div>
                        </div>

                      </div>
                    </div>
                    
                        

                    <!-- Modal Monitor-->
                    <div class="icono">
                            <figure >
                                <img src="images/monitor.png" id="monitor" title="Monitor" alt="Monitor"
                                     data-toggle="modal" data-target="#myModalMonitor">
				<figcaption>Monitor</figcaption>
                            </figure>
                        </div>
                        <div class="modal fade" id="myModalMonitor" role="dialog">
                            <div class="modal-dialog" style="width: 20vw ">
                              <center><img src="images/monitor.png" style="height:25vh"></center>
                            <!-- Modal content-->
                            <div class="modal-content">
                              <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                <h4 class="modal-title text-center">Monitor</h4>
                              </div>
                              <div class="modal-body">
                                <form class="panel-body" method="POST" action="pages/validarM.jsp">
                                    <div class="text-left">
                                        <label>Codigo:</label><br>
                                        <span class="glyphicon glyphicon-user"> </span>
                                        <input type="number" id="nombre" name="nombre" placeholder="Codigo Monitor" required>
                                        <br><br>
                                        <label>Contraseña:</label><br>
                                        <span class="glyphicon glyphicon-lock"> </span>
                                        <input type="password" id="clave" name="clave" placeholder="Contraseña Monitor" required>
                                        <br>
                                    </div>
                                    <div class="text-center">
                                        <br>
                                        <button type="submit" class="btn btn-success">Iniciar Sesion</button>
                                    </div>

                                </form> 
                              </div>
                            </div>

                          </div>
                        </div>
                    </div>
                </div> 
            </div>
            
            <div class="row">
                <br>
                <!-- Logo MoniSistem -->
                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-3">
                    <div class="thumbnail" style="background: transparent">
                        <br>
                        <img id="ciclo" src="images/monisistem.png" alt="img" style="height:236px;">                      
                    </div>
                </div>
                
                <!-- Introduccion -->
                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-4">
                    <div class="thumbnail">
                        <h3 class="text-center text-primary">¿Quienes somos?</h3>
                        <p class="pager panel-body" style="text-align: justify">
                          Un equipo interesado en el bienestar de la comunidad universitaria 
                          para que los estudiantes tengan un apoyo educativo por parte de las monitorias 
                          en las cuales se le presenta informacion personal, los horarios de atencion  de cada uno 
                          de los monitores,y mucha mas informacion acerca de la universidad y su entorno.
                        </p>
                    </div>
                </div>
                
                <!-- Video -->
                <div class="panel-body col-xs-12 col-sm-12 col-md-12 col-lg-1">
                    <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">
                        <span class="glyphicon glyphicon-film"></span>  Ver Video</button>

                    <!-- Modal -->
                    <div class="modal fade" id="myModal" role="dialog">
                      <div class="modal-dialog">

                        <!-- Modal content-->
                        <div class="modal-content">
                          <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title text-center">MoniSistem</h4>
                          </div>
                          <div class="modal-body">
                              
                              <video style="width: 100%;" controls>
                                <source src="images/video1.webm" >
                                Tu navegador nos soprta este Video.
                              </video>
                          </div>
                        </div>

                      </div>
                    </div>
                </div>
                
                
            </div>
        </div>
    </body>
</html>
