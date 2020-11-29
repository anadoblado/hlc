<%-- 
    Document   : vistaUsuario
    Created on : 28-nov-2020, 19:57:25
    Author     : anita
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
        if (session.getAttribute("logueado") == null) {
                response.sendRedirect("index.jsp");
            }%>
        <h1>Hello Usuario</h1>
        <h4>Hola <% out.println (session.getAttribute("logueado")); %></h4>
    </body>
</html>
