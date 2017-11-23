<%-- 
    Document   : validarE
    Created on : 19-nov-2017, 0:44:55
    Author     : DavidLenovo
--%>

<%@page import="Logic.ConexionO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="text-align: center">
        <h1>Validando</h1>
        <img src="../images/verifica.gif">
        <%
            String codigo=request.getParameter("nombre1");
            String pass=request.getParameter("clave1");
            
            ConexionO conexion=new ConexionO();
            String nombre=conexion.validarEstudiante(codigo, pass);
            conexion.cerrarConexion();
            if(nombre != null){
                HttpSession sesion=request.getSession();
                sesion.setAttribute("usuario", nombre);
                response.sendRedirect("moduloEstudiante.jsp");
            }else{
                
                response.sendRedirect("../index.jsp");
            }
            


        %>
    </body>
</html>
