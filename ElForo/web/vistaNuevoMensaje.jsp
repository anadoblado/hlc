<%-- 
    Document   : vistaNuevoMensaje
    Created on : 18-nov-2020, 23:03:46
    Author     : anita
--%>

<%@page import="controlador.controladorAdministrador"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Models.Mensaje"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Nuevo Mensaje</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </head>
    <body>
        <div class="container">
            <h2>Crear mensaje nuevo</h2>
            <br>
            <form action="nuevoMensaje" method="post">
            <div class="form-group">
                <label>Introduce tu mensaje</label>
                <textarea class="form-control" rows="5" name="mensajeNuevo"></textarea>
                <%
                            String ficheroMensaje = "D:\\mensajes.dat";
                            ArrayList<Mensaje> mensajes = controladorAdministrador.leerFicheroMensajes(ficheroMensaje);
                            for (Mensaje m : mensajes) {


                        %>
                        <input type="hidden" name="idNuevo" value="<%= mensajes.get(mensajes.size() - 1).getId() + 1%>">
                        <%
                            }
                        %>
                        <br>
                        <button type="submit" name="crearMensaje" class="btn btn-outline-success">Guardar</button>
            </div>
        </form>
        </div>
        
        
        

    </body>
</html>
