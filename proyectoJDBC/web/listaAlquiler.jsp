<%-- 
    Document   : listaUsuarios
    Created on : 29-nov-2020, 14:25:41
    Author     : anita
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="servlet.Conexion"%>
<%@page import="java.util.logging.Logger"%>
<%@page import="java.util.logging.Level"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista Alquiler</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>

    </head>
    <body>
        <h1>Lista Alquileres</h1>
        <%
            if (session.getAttribute("logueado") == null) {
                response.sendRedirect("index.jsp");
            } else {

                Connection conector = null;
                try {
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    conector = DriverManager.getConnection(
                            "jdbc:mysql://localhost:3306/videoclub?serverTimezone=UTC", "java", "1234");

                } catch (ClassNotFoundException | SQLException ex) {
                    Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
                }
                Statement s = (Statement) conector.createStatement();

                ResultSet rs = s.executeQuery("SELECT * FROM alquila, peliculas, usuarios WHERE id=idusuario and idpeliculas=idpelicula");
                 //while(rs.next()) {
        %>
        <table class="table">
            <thead>
                <tr class="table-info">
                    <th>Id del usuario</th>
                    <th>Usuario</th>
                    <th>Id de la película</th>
                    <th>Nombre de la película</th>
                    <th>Fecha del alquiler</th>
                    <th>Fecha de la devolución</th>
                </tr>
            </thead>
            <% //while(rs.next()) { %>
            <tbody>
                <%
                   while(rs.next()) {
                        out.println("<tr class=''>");
                        out.println("<td>" + rs.getInt("idusuario")+ "</td>");
                        out.println("<td>" + rs.getString("usuario") + "</td>");
                        out.println("<td>" + rs.getString("idpelicula") + "</td>");
                        out.println("<td>" + rs.getString("titulo") + "</td>");
                        out.println("<td>" + rs.getString("falquila") + "</td>");
                        out.println("<td>" + rs.getString("fdevuelve") + "</td>");
                        //out.println("<td>" + rs.getString("director") + "</td>");
                        out.println("</tr>");
                     }
                %>
            </tbody>
        </table>
        <%
               
            }
        %>
        <div class="btn-group">
            <form action="vistaAdministrador.jsp">
                <button type="submit" name="alprincipio" class="btn btn-outline-primary" >Volver</button>
            </form>
            <form action="crearAlquiler.jsp">
                <input type="submit" name="crearAlquiler" value="Crear alquiler" class="btn btn-outline-primary">
            </form>
            <form action="modificarAlquiler.jsp">
                <input type="submit" name="modificarAlquiler" value="Modificar alquiler" class="btn btn-outline-primary">
            </form>
            <form action="borrarAlquiler.jsp">
                <input type="submit" name="borrarAlquiler" value="Borrar alquiler"  class="btn btn-outline-primary">
            </form>
        </div>
    </body>
</html>
