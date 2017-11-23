<%-- 
    Document   : validarM
    Created on : 18-nov-2017, 21:27:48
    Author     : DavidLenovo
--%>

<%@page import="java.sql.*"%>
<%@page import="Logic.ConexionO"%>
<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Validando</title>
    </head>
    <body style="text-align: center">
        <h1>Validando</h1>
        <img src="../images/verifica.gif">
        <%
            String codigo=request.getParameter("nombre");
            String pass=request.getParameter("clave");
            
            ConexionO conexion=new ConexionO();
            String[] consulta=conexion.validarMonitor(codigo, pass);
            conexion.cerrarConexion();
            
            if(consulta != null){
                HttpSession sesion=request.getSession();
                sesion.setAttribute("usuario", consulta[0]);
                sesion.setAttribute("tipo", consulta[1]);
                response.sendRedirect("moduloMonitor.jsp");
                
            }else{
                response.sendRedirect("../index.jsp");
            }
            


        %>
    </body>
</html>
