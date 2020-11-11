<%-- 
    Document   : index
    Created on : 30-oct-2020, 11:00:37
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
        <h1>Hello World!</h1>
        <%
            //para ver que se ha creado, porque jsp lo hace por defecto
         out.println(session.isNew());
         
            if(session.isNew() && session.getAttribute("logueado") == null){
             response.sendRedirect("logueo.jsp");
            }
        %>
    </body>
</html>
