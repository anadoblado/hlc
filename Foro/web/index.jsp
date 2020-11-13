<%-- 
    Document   : index
    Created on : 13-nov-2020, 11:16:45
    Author     : anita
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <title>Index</title>
    </head>
    <body>
          <%
            //para ver que se ha creado, porque jsp lo hace por defecto
            out.println(session.isNew());

            if (session.isNew() && session.getAttribute("logueado") == null) {
                response.sendRedirect("logueo.jsp");
            }
        %>

        <div class="container">
            <h1>Loguear</h1>
            <form action="loguear" method="post">
                <div class="form-group">
                    <label for="nombre">Nombre:</label>
                    <input type="text" name="nombre" placeholder="Introduce tu usuario" class="form-control">
                </div>
                <div class="form-group">
                    <label for="password">Contraseña:</label>
                    <input type="password" name="pass" placeholder="Introduce tu contraseña" class="form-control">
                </div>
                <button type="submit" class="btn btn-outline-info" name="enviar">Loguear</button>
            </form>
            <%
            if(session.getAttribute("mensaje") != null){
                out.println(session.getAttribute("mensaje"));
            }
        %>
        </div>
    </body>
</html>
