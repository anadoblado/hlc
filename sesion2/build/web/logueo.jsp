<%-- 
    Document   : logueo
    Created on : 30-oct-2020, 11:09:13
    Author     : anita
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <form action="loguear" method="post">
            Usuario: <input type="text" name="usuario">
            Contraseña: <input type="password" name="pass">
            <input type="submit" value="Enviar" name="enviar">
        </form>
        <%
            if(session.getAttribute("mensaje") != null){
                out.println(session.getAttribute("mensaje"));
            }
        %>
    </body>
</html>
