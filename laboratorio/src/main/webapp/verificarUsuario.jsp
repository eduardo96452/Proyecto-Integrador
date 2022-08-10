<%-- 
    Document   : verificar
    Created on : 10 ago. 2022, 14:45:25
    Author     : kevin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:useBean id="usuario" scope="page" class="modelo.Persona"/>
        <%
        String mensaje = usuario.login(request.getParameter("usuario"), request.getParameter("contrasenia"));
        if(mensaje.equals("Usuario correcto")){
            response.sendRedirect("prueba.html");
        }
        else{
        response.sendRedirect("index.jsp");
            }%>
    </body>
</html>
