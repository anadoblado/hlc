<%-- 
    Document   : modificarUsuario
    Created on : 28-nov-2020, 23:45:18
    Author     : anita
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modificar Usuario</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
        <style>
            body {
                margin: 0;
                padding: 0;
                background-color: #17a2b8;
                height: 100vh;
            }
            #login .container #login-row #login-column #login-box {
                margin-top: 120px;
                max-width: 600px;
                height: 320px;
                border: 1px solid #9C9C9C;
                background-color: #EAEAEA;
            }
            #login .container #login-row #login-column #login-box #login-form {
                padding: 20px;
            }
            #login .container #login-row #login-column #login-box #login-form #register-link {
                margin-top: -85px;
            }
        </style>
    </head>
    <body>
        <div id="login"></div>
        <h3 class="text-center text-white pt-5">Modificar Usuario</h3>
        <div class="container">
            <div id="login-row" class="row justify-content-center align-items-center">
                <div id="login-column" class="col-md-6">
                    <div id="login-box" class="col-md-12">
                        <form id="login-form" class="form" action="modificar" method="post">
                            <div class="form-group">
                                <label>Id: </label>
                                <input class="form-control" type="text" name="id">
                            </div>
                            <div class="form-group">
                                <label>Usuario: </label>
                                <input class="form-control" type="text" name="usuario">

                            </div>
                            <div class="form-group">
                                <label>Password </label>
                                <input class="form-control" type="password" name="pass">

                            </div>
                            <div class="form-group">
                                <label>Nombre </label>
                                <input class="form-control" type="text" name="nombre">
                            </div>
                            <div class="form-group">
                                <label>Apellido </label>
                                <input class="form-control" type="text" name="apellidos">
                            </div>
                            <div class="form-group">
                                <label>Email </label>
                                <input class="form-control" type="text" name="email">
                            </div>
                            <input type="submit" name="modificar" value="Modificar"> 
                        </form>  
                        <form action="listaUsuarios.jsp">
                            <button type="submit" name="alprincipio">Volver</button>
                        </form>
                        </body>
                        </html>
