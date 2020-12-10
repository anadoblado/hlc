<%-- 
    Document   : newjsindex
    Created on : 06-dic-2020, 19:57:00
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
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css">
        <style>
            .containerOwnApp {
                box-shadow: 0 0 27px 0 rgba(84, 84, 84, 0.62);
                padding-top: 15px;
            }

            .login-page {
                padding: 18% 0 0;
                margin: 0 auto 100px;
                max-width: 360px;
                position: relative;
            }

            .login-form {
                box-shadow: 0 0 27px 0 rgba(84, 84, 84, 0.62);
            }

            .login-form-header {
                padding-top: 16px;
            }

            .login-from-row {
                padding-top: 16px;
                padding-bottom: 16px;
            }

            .login-form-font-header {
                font-size:30px; 
                font-weight: bold;
            }

            .login-form-font-header span {
                color: #007C9B;
            }
        </style>
    </head>
    <body>
        <%
            Connection conector = conexion.getConection();
            Statement s = (Statement) conector.createStatement();
            ResultSet rs = s.executeQuery("SELECT * FROM equipo order by puntos desc");
        %>
        <div class="container">
            <table class="table">
                <thead>
                    <tr class="table-info">
                        <th>#</th>
                        <th>Escudo</th>
                        <th>Equipo</th>
                        <th>Puntos</th>
                        <th>Victorias</th>
                        <th>Empates</th>
                        <th>Derrotas</th>
                        <th>GolesF</th>
                        <th>GolesC</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        while (rs.next()) {
                            out.println("<tr class=''>");
                            out.println("<td>" + rs.getInt("id") + "</td>");
                    %>
                <td><img src="<%out.print("images\\");
                            out.print(rs.getInt("id"));%>.png" width="50px" height="50px"></td>
                    <%
                            out.println("<td>" + rs.getString("nombre") + "</td>");
                            out.println("<td>" + rs.getInt("puntos") + "</td>");
                            out.println("<td>" + rs.getInt("v") + "</td>");
                            out.println("<td>" + rs.getInt("e") + "</td>");
                            out.println("<td>" + rs.getInt("d") + "</td>");
                            out.println("<td>" + rs.getInt("gf") + "</td>");
                            out.println("<td>" + rs.getInt("gc") + "</td>");
                            
                            out.println("</tr>");
                        }
                    %>
                </tbody>
                <%
               rs.close();
               s.close();
            
        %>
            </table>
                <form action="s1" method="post">
                    <input name="password" type="text" placeholder="Password" required/>
                    <button class="btn btn-info">Administrador</button>
                </form>
        </div>
    </body>
</html>
