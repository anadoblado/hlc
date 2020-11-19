<%-- 
    Document   : vistaUsuario
    Created on : 15-nov-2020, 13:54:48
    Author     : anita
--%>

<%@page import="Models.Mensaje"%>
<%@page import="Models.Usuario"%>
<%@page import="java.util.ArrayList"%>
<%@page import="controlador.controladorAdministrador"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Vista usuario</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </head>
    <body>
        <%
            if (session.getAttribute("logueado") == null) {
                response.sendRedirect("index.jsp");
            } else {
                ArrayList<Mensaje> mensajes = controladorAdministrador.leerFicheroMensajes("D:\\mensajes.dat");
                if (mensajes != null) {
        %>
        <table class="table">
            <thead>
                <tr class="table-info">
                    <th>Nombre</th>
                    <th>Mensaje</th>
                </tr>
            </thead>
            <tbody>
                <%
                    for (Mensaje m : mensajes) {
                        out.println("<tr>");
                        out.println("<td>" + m.getCreador().getNombre() + "</td>");
                        String contenido = m.getMensaje();
                        if (m.getCreador().getNombre().equals(((Usuario) session.getAttribute("logueado")).getNombre())) {
                            contenido = "<strong>" + m.getMensaje() + "</strong>";
                        }
                        out.println("<td>" + contenido + "</td>");
                        out.println("</tr>");
                    }
                %>
            </tbody>
        </table>
        <%
                }
            }
        %>
        <div class="btn-group">
            <form action="vistaNuevoMensaje.jsp">
                <button type="submit" name="mensaje" class="btn btn-outline-primary">Nuevo</button>
            </form>
        </div>
        <div class="btn-group">
            <form action="index.jsp">
                <button type="submit" name="cerrarSesion" class="btn btn-outline-warning">Cerrar Sesion</button>
            </form>
        </div>


    </body>
</html>
