<%-- 
    Document   : vistaAdministrador
    Created on : 28-nov-2020, 19:57:44
    Author     : anita
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Vista Administrador</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
        
    </head>
    <body>
        <%
            if (session.getAttribute("logueado") == null) {
                response.sendRedirect("index.jsp");
             }%>
        <h1>Bienvenido Administrador</h1>
        <div class="container">
            <form action="listaUsuarios.jsp">
                <input type="submit" name="verUsuarios" value="Lista de usuarios">
            </form>
            <form action="listaPeliculas.jsp">
                <input type="submit" name="verPelículas" value="Lista de películas">
            </form>
            <form action="listaAlquileres.jsp">
                <input type="submit" name="verAlquileres" value="Lista de alquileres">
            </form>
            
            <form action="crearPelicula.jsp">
                <input type="submit" name="crearUsuario" value="Crear película">
            </form>
        </div>
    </body>
</html>
