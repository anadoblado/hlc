<%-- 
    Document   : resumen
    Created on : 21-oct-2020, 22:53:35
    Author     : anita
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Resumen</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    </head>
    <body>
        <form action="s1" method="post">
            <% 
                String nombre = request.getParameter("nombre");
                String cantidadT = request.getParameter("cantidad");
                String eleccion =  request.getParameter("submit");
                if(eleccion.equals("1")){
                %>
            <input type ="hidden" name="nombre" value="<%request.getAttribute("nombre");%>">
            <input type ="hidden" name="eleccion" value="1">
            <input type="hidden" name="cuota" value="1.al d5">
            <h3><% out.println("El usuario: " + nombre + "jugó a ==> "); %>Resultado 1. Cuota 1.5. Su apuesta <% out.println("Cantidad: " + cantidadT + "€"); %></h3>
            
            <%
                }
                if(eleccion.equals("x")){
                %>
                
                <input type ="hidden" name="nombre" value="<%request.getAttribute("nombre");%>">
                <input type ="hidden" name="eleccion" value="x">
                <input type="hidden" name="cuota" value="2">
                <h3><% out.println("El usuario: " + nombre + "jugó a ==> "); %>Resultado x. Cuota 2. Su apuesta <% out.println("Cantidad: " + cantidadT + "€"); %></h3>
                
                <%
                }
                if(eleccion.equals("2")){
                %>
                
                 <input type ="hidden" name="nombre" value="<%request.getAttribute("nombre");%>">
                <input type ="hidden" name="eleccion" value="2">
                <input type="hidden" name="cuota" value="3">
                <h3><% out.println("El usuario: " + nombre + " jugó a ==> "); %>Resultado 2. Cuota 3. Su apuesta <% out.println("Cantidad: " + cantidadT + "€"); %></h3>
                
                <%
                }
                %>
            <input type="hidden" name="cantidad" value="<% out.println(cantidadT);%>">

            <button name="resultado" value="1" type="submit" class="btn btn-outline-dark">Resultado 1</button>
            <button name="resultado" value="x" type="submit" class="btn btn-outline-dark">Resultado X</button>
            <button name="resultado" value="2" type="submit" class="btn btn-outline-dark">Resultado 2</button>
        </form>
    </body>
</html>
