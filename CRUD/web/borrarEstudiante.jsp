<%-- 
    Document   : newjsp
    Created on : 01-nov-2020, 12:19:08
    Author     : anita
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Crear</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </head>
    <body>
        <div class="container">
            <h2>Borrar usuario</h2>
            <form action="borrarUsuario" method="post">
                <div class="form-group">
                    <label>Id:</label>
                    <input type="text" name="id" class="form-control">
                </div>
                <p></p>
                <button type="submit" name="crear2" class="btn btn-outline-warning">Borrar</button>
              
        </form>
        </div>
        
    </body>
</html>
