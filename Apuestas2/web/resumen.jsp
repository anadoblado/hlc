<%-- 
    Document   : resumen
    Created on : 20-oct-2020, 23:07:08
    Author     : anita
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
    
    </head>
    <body>
        <h1>Hello World!</h1>   
        <form action="s1" method="post">
            <div class="container justify-content-center">
                <label for="evento">¿Has acertado la apuesta?</label>
                    <div class="form-check-inline">
                        <label class="form-check-label" for="radio1">
                            <input type="radio" class="form-check-input" id="radio1" name="optradioAcertar" value="optionSi">Si                
                        </label>
                    </div>
                    <div class="form-check-inline">
                        <label class="form-check-label" for="radio2">
                            <input type="radio" class="form-check-input" id="radio1" name="optradioAcertar" value="optionNo" checked>No                
                        </label>
                    </div>
                <input type="hidden" name="nombre" value="<%request.getAttribute("nombre");%>">
                <input type="hidden" name="cantidad" value="<%request.getAttribute("cantidad");%>">
                <button type="submit" class="btn btn-outline-success" name="confirmar" value="enviar">Ver resultado</button>
            </div>
        </form>
                 <%
                     if(request.getAttribute("boton") != null){
                         if ((Boolean) request.getAttribute("acierto") == true){
                            
                             String nombre = (String) request.getAttribute("nombre");
                             double cantidad = (double) request.getAttribute("cantidad");
                             out.println("El jugador " + nombre + " gana " + cantidad);
                         }else{
                             out.println("El jugador " + request.getAttribute("nombre") + " ha perdido la apuesta");
                         }
                     }
                 %>
    </body>
</html>
