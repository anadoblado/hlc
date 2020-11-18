<%-- 
    Document   : vistaAdministrador
    Created on : 15-nov-2020, 13:47:31
    Author     : anita
--%>

<%@page import="controladores.controladorAdministrador"%>
<%@page import="java.util.ArrayList"%>
<%@page import="models.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Vista Administrador</title><link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </head>
    <body>
         <%
            if (session.getAttribute("USR") == null) {
                response.sendRedirect("index.jsp");
            } else {
                ArrayList<Usuario> usuarios = controladorAdministrador.leerFicheroUsuario("D:\\datos3.dat");
                if (usuarios != null) {
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
                    for (Usuario usuario : usuarios) {
                        out.println("<tr>");
                        out.println("<td>" + usuario.getNombre() + "</td>");
                        out.println("<td>" + usuario.getMensaje() + "</td>");
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
            <button type="submit" name="alprincipio" class="btn btn-outline-primary">Volver</button>
        </form>

        <form action="registrarUsuario.jsp" method="post">
            <button type="submit" class="btn btn-outline-danger" name="crear">Crear</button>
        </form>
        <form action="borrarUsuario.jsp" method="post">
            <button type="submit" class="btn btn-outline-warning" name="borrar">Borrar</button>
        </form>
            <form action="logueo.jsp" method="post">
                <button type="submit" class="btn btn-outline-sucess" name="desconectar">Desconectarse</button>
            </form>
        </div>
    </body>
</html>
