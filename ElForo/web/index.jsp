<%-- 
    Document   : index
    Created on : 18-nov-2020, 22:38:41
    Author     : anita
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0 shrink-to-fit=no">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
        <title>Logueo</title>
        <%
            if (session.getAttribute("logueado") == null || request.getParameter("cerrarSesion") != null) {

                session.setAttribute("logueado", null);
        %>
    </head>
    <body>
        <h1>Inicia sesión</h1>
        <form action="loguear">
            <div class="form-group">
                <label for="usuario">Email address:</label>
                <input type="text" class="form-control" placeholder="Enter email"  name="usuario">
                <input type="hidden" name="usuario">
            </div>
            <div class="form-group">
                <label for="pwd">Password:</label>
                <input type="password" class="form-control" placeholder="Enter password"  name="pass">
            </div>
              <button type="submit" class="btn btn-outline-primary">Submit</button>
        </form>
        <%
		} else {
			response.sendRedirect("vistaUsuario.jsp");
		}
	%>
    </body>
</html>
