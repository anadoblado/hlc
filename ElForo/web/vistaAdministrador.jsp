<%-- 
    Document   : vistaAdministrador
    Created on : 15-nov-2020, 13:47:31
    Author     : anita
--%>

<%@page import="Models.Mensaje"%>
<%@page import="controlador.controladorAdministrador"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Models.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Vista Administrador</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" type="text/css">

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
                    <th>Borrar</th>
                </tr>
            </thead>
            <tbody>
                <%
                    for (Mensaje m : mensajes) {
					out.println("<tr>");
					out.println("<td>" + m.getCreador().getNombre() + "</td>");
					out.println("<td>" + m.getMensaje() + "</td>");
					out.println("<td>" + "<form action='borrar' method='post'><button type='submit' name='eliminarMensaje' class='btn-outline-info fa fa-trash-alt' value='"+m.getId()+"'></button></form>"+ "</td>");
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
            <form action="index.jsp">
            <button type="submit" name="cerrarSesion" class="btn btn-outline-primary">Cerrar Sesion</button>
        </form>

        </div>
    </body>
</html>
