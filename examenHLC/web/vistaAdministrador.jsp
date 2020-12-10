<%-- 
    Document   : vistaAdministrador
    Created on : 09-dic-2020, 11:56:52
    Author     : anita
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="Controladores.conexion"%>
<%@page import="java.sql.Statement"%>
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
        <h1>Hello Admi!</h1>
        <%
            Connection conector = conexion.getConection();
            Statement s = (Statement) conector.createStatement();
            ResultSet rs = s.executeQuery("SELECT * FROM partido");
        %>
        <div class="container">
            <table class="table">
                <thead>
                    <tr class="table-info">
                        <th>#</th>
                        <th>Escudo</th>
                        <th>Equipo Local</th>
                        <th>Goles Local</th>
                        <th>Goles Visitante</th>
                        <th>Equipo Visitante</th>
                        <th>Escudo</th>
                        <th></th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        while (rs.next()) {
                            out.println("<tr class=''>");
                            out.println("<td>" + rs.getInt("id") + "</td>");
                    %>
                         <td><img src="<%out.print("images\\");
                    out.print(rs.getInt("e1"));%>.png" width="50px" height="50px"></td>
                    <%
                        out.println("<td>" + rs.getInt("e1") + "</td>");
                        out.println("<td>" + rs.getInt("g1") + "</td>");
                        out.println("<td>" + rs.getInt("g2") + "</td>");
                        out.println("<td>" + rs.getInt("e2") + "</td>");
                    %>
                         <td><img src="<%out.print("images\\");
                    out.print(rs.getInt("e2"));%>.png" width="50px" height="50px"></td>
                    <%
                            out.println("<form action='editar.jsp' method='post'>");
                            out.println("<td><button type='submit' name='editar' class='btn btn-outline-warning' value='" + rs.getInt("id") + "'>Editar</button></td>");
                            session.setAttribute("id", rs.getInt("id"));
                    %>
                         <input type="hidden" name="id" value="<%rs.getInt("id");%>">
                    <%
                            out.println("</form>");
                            out.println("<form action='borrar' method='post'>");
                            out.println("<td><button type='submit' name='borrar' class='btn btn-outline-primary' value='" + rs.getInt("id") + "'>Borrar</button></td>");
                            %>
                         <input type="hidden" name="id" value="<%rs.getInt("id");%>">
                    <%
                            out.println("</form>");

                            out.println("</tr>");
                        }
                    %>
                </tbody>
                <%
                    rs.close();
                    s.close();

                %>
            </table>
            <%   Statement s1 = (Statement) conector.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);

                ResultSet rs1 = s1.executeQuery("SELECT * FROM equipo");


            %>
            <form action="insertar" method="post">
                

                <select name="e1">
                    <%                               while (rs1.next()) {
                    %>
                    <option value=<%out.println(rs1.getInt(1));%>><%out.println(rs1.getString(2));%></option>
                    <%
                        }
                        rs1.beforeFirst();
                    %>
                </select>
                <select name="g1">
                    <%
                        for (int i = 0; i < 11; i++) {
                    %>
                    <option value="<%=i%>"><%out.println(i);%></option>
                    <%
                        }
                    %>
                </select>
                <select name="g2">
                    <%
                        for (int i = 0; i < 11; i++) {
                    %>
                    <option value="<%=i%>"><%out.println(i);%></option>
                    <%
                        }
                    %>
                </select>
                <select name="e2">
                    <%
                        while (rs1.next()) {
                    %>
                    <option value=<%out.println(rs1.getInt(1));%>><%out.println(rs1.getString(2));%></option>
                    <%
                        }
                    %>
                </select>


                <button class="btn btn-info">Insertar</button>
            </form>
        </div>
    </body>
</html>
