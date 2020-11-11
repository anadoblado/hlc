<%-- 
    Document   : index
    Created on : 01-nov-2020, 12:12:30
    Author     : anita
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Index</title>
    </head>
    <body>
        <h1>Registro</h1>
        <form action="autenticar" method="post">
            <input type="text" name="nombre" placeholder="Introduce tu usuario">
            <input type="password" name="pass" placeholder="Introduce tu contraseña">
            <input type="submit" value="Loguear" name="enviar">
        </form> 
    </body>
</html>
