<%-- 
    Document   : crearUsuario
    Created on : 07-dic-2020, 15:55:44
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

            ResultSet rs = s.executeQuery("SELECT * FROM usuarios order by id desc limit 1");
        %>
        <div class="container">
            <div class="row text-center login-page">
                <div class="col-md-12 login-form">
                    <form action="crearUsuario" method="post"> 			
                        <div class="row">
                            <div class="col-md-12 login-form-header">
                                <p class="login-form-font-header"><span>Usuario</span> Nuevo<p>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12 login-from-row">
                                <% while (rs.next()) {%>
                                <input name="id" type="text" value="<% out.println(rs.getInt(1) + 1);%>" readonly/>
                                <% }
                                    rs.close();
                                    s.close();
                                %>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12 login-from-row">
                                <input name="nombre" type="text" placeholder="Nombre" required/>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12 login-from-row">
                                <input name="apellidos" type="text" placeholder="Apellidos" required/>    
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12 login-from-row">
                                <input name="mail" type="text" placeholder="Correo eléctronico" required/>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12 login-from-row">
                                <input name="password" type="text" placeholder="Contraseña" required/>
                            </div>
                        </div>
                            <div class="row">
                            <div class="col-md-12 login-from-row">
                                <input name="avatar" type="text" placeholder="Pon el id seguido de .jpeg" required/>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-12 login-from-row">
                                <button class="btn btn-info">Enviar</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
