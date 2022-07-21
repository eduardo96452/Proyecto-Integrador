<%-- 
    Document   : iniciarsesion
    Created on : 20 jul. 2022, 16:46:40
    Author     : Eduardo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
    <body class="align-items-center contenedor">
        <main class="form-signin w-100 m-auto blanquito">
            <h1 class="text-center">Iniciar Sesión</h1>
            <form name="login" action="index.xhtml" method="POST" >
                
                <div class="form-floating">
                    <input type="text" class="form-control" id="user" name="user" value="" size="50"/>
                    <label for="user">Usuario: </label>
                </div>
                <br/>
                <div  class="form-floating">
                    <input type="password" class="form-control" id="password" name="password" value="" size="50" />
                    <label for="password">Clave: </label>
                </div>
                <div>
                    <input class=" w-100 btn btn-success" type="submit" value="Inicio de sesión" name="send" />
                </div>                
            </form>
        </main>        
    </body>
</html>