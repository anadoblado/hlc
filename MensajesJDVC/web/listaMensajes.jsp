<%-- 
    Document   : listaMensajes
    Created on : 06-dic-2020, 21:21:42
    Author     : anita
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="Controladores.conexion"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" type="text/css">
    </head>
    <body>
        <h1>Lista de mensajes</h1>
        <%
             if (session.getAttribute("logueado") == null) {
                response.sendRedirect("index.jsp");
            } else {

               // request.getSession().setAttribute("id", rs.getInt(1));
                Connection conector = conexion.getConection();
                Statement s = (Statement) conector.createStatement();

                ResultSet rs = s.executeQuery("SELECT * FROM mensajes");
        %>
         <table class="table">
            <thead>
                <tr class="table-info">
                    <th>Id</th>
                    <th>Emisor</th>
                    <th>Receptor</th>
                    <th>Contenido</th>
                    <th>Borrar</th>
                </tr>
            </thead>
            <tbody>
                <%
                   while(rs.next()) {
                        out.println("<tr class=''>");
                        out.println("<td>" + rs.getInt("idmensajes")+ "</td>");
                        out.println("<td>" + rs.getInt("idusuemisor") + "</td>");
                        out.println("<td>" + rs.getInt("idusurecptor") + "</td>");
                        out.println("<td>" + rs.getString("contenido") + "</td>");
                        out.println("<form action='borrarMensaje' method='post'>");
                        out.println("<td><button type='submit' name='borrar' class='btn-outline-warning fa fa-trash-alt' value='"+rs.getInt("idmensajes")+"'></button></td>");
                        out.println("</form>");
                        out.println("</tr>");
                     }
                %>
            </tbody>
        </table>
        <%
               rs.close();
               s.close();
            }
        %>
        <div class="btn-group">
            <form action="vistaAdministrador.jsp">
                <button type="submit" name="alprincipio" class="btn btn-outline-info">Volver</button>
            </form>
            <form action="crearMensajes.jsp">
                <input type="submit" name="crearMensaje" value="Crear mensaje" class="btn btn-outline-info">
                
            </form>
        </div>
    </body>
</html>
