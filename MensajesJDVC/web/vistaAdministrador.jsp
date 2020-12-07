<%-- 
    Document   : vistaAdministrador
    Created on : 06-dic-2020, 20:59:20
    Author     : anita
--%>

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
        <div class="container">
            <div class="row text-center login-page">
                <div class="col-md-12 login-form">
                    <div class="row">
                        <div class="col-md-12 login-form-header">
                            <p class="login-form-font-header">Hola <span>Administrador</span><p>
                        </div>
                    </div>
                    <div class="btn-group">
                        <form action="listaMensajes.jsp" method="post"> 			
                            <div class="row">
                                <div class="col-md-12 login-from-row">
                                    <button  class="btn btn-outline-info">Ver mensajes</button>
                                </div>
                            </div>
                        </form>
                        <form action="listaUsuarios.jsp" method="post"> 			
                            <div class="row">
                                <div class="col-md-12 login-from-row">
                                    <button class="btn btn-outline-info">Ver usuarios</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
