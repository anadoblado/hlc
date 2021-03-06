<%-- 
    Document   : listaUsuarios
    Created on : 06-dic-2020, 21:21:53
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

                ResultSet rs = s.executeQuery("SELECT * FROM usuarios");
        %>
         <table class="table">
            <thead>
                <tr class="table-info">
                    <th>Avatar</th>
                    <th>Id</th>
                    <th>Nombre</th>
                    <th>Apellidos</th>
                    <th>Mail</th>
                   
                </tr>
            </thead>
            <tbody>
                <%
                   while(rs.next()) {
                        out.println("<tr class=''>");
                        %>
                        <td><img src="<%out.print("images\\");out.print(rs.getInt("id"));%>.jpeg" width="50px" height="50px"></td>
                        <%
                        out.println("<td>" + rs.getInt("id")+ "</td>");
                        out.println("<td>" + rs.getString("nombre") + "</td>");
                        out.println("<td>" + rs.getString("apellidos") + "</td>");
                        out.println("<td>" + rs.getString("mail") + "</td>");
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
        </div>
    </body>
</html>
