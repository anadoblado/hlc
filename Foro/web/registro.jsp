<%-- 
    Document   : registro
    Created on : 15-nov-2020, 22:30:04
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
         <h1>Loguear</h1>
            <form action="registrarUsuario" method="post">
                <div class="form-group">
                    <label for="nombre">Nombre:</label>
                    <input type="text" name="nombre" placeholder="Introduce tu usuario" class="form-control">
                </div>
                <div class="form-group">
                    <label for="password">Contraseña:</label>
                    <input type="password" name="pass" placeholder="Introduce tu contraseña" class="form-control">
                </div>
                <button type="submit" class="btn btn-outline-info" name="enviar">Registrar</button>
            </form>
    </body>
</html>
