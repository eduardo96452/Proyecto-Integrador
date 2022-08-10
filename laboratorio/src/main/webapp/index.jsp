<%-- 
    Document   : index
    Created on : 10 ago. 2022, 14:11:59
    Author     : kevin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
        <!-- CSS only -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous"><!-- comment -->        
        <style>

            body {
                display: flex;
                align-items: flex-start;
                padding-top: 40px;
                padding-bottom: 40px;
                background-color: #f5f5f5;
            }

            .form-signin {
                max-width: 500px;
                padding: 15px;
                position: absolute;
                left: 14%;
                top: 26.5%;
            }

            .form-signin input[type="email"] {
                margin-bottom: -1px;
                border-bottom-right-radius: 0;
                border-bottom-left-radius: 0;
            }

            .form-signin input[type="password"] {
                margin-bottom: 10px;
                border-top-left-radius: 0;
                border-top-right-radius: 0;
            }

            .contenedor{
                background: url('Imagenes/close-up-researcher-looking-through-ocular-lens.jpg') no-repeat center center fixed;
                -webkit-background-size: cover;
                -moz-background-size: cover;
                -o-background-size: cover;
                background-size: cover;                
            }

            .blanquito{
                background-color: whitesmoke;
                border-radius: 10px;

            }

        </style>    
    </head>
    <body>
        <form  action="verificarUsuario.jsp" method="POST">
            <h1>Inicio de sesión</h1>
            <label>Usuario:</label>
            <input id="uno" type="text" name="usuario" placeholder="Ingrese su usuario">
            <label>Contraseña:</label>
            <input id="dos" type="text" name="contrasenia" placeholder="Ingrese su contraseña">
            <input type="submit" value="Ingresar" name="send">
        </form>
    </body>
</html>
