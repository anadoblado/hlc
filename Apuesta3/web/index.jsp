<%-- 
    Document   : index
    Created on : 21-oct-2020, 22:17:45
    Author     : anita
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Apuesta</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    </head>
    <body>
        <form action="resumen.jsp">
             <div class="container justify-content-center">
                <div class="col-md">
                    <div class="form-group">
                        <label for="nombre">Intrdouce el nombre</label>
                        <input type="text" class="form-control" name="nombre">
                    </div>
                     <div class="form-group">
                        <label for="cantidad">Cantidad a apostar</label>
                        <input type="number" class="form-control" name="cantidad">
                    </div>
                    <label for="evento">Evento deportivo: R.Madrid - Barcelona</label>
                    <div class="form-check-inline">
                        <label class="form-check-label" for="button1">
                            <button name="submit" value="1" type="submit" id="button1" class="btn btn-outline-primary">Resultado 1. Cuota 1.5</button>             
                        </label>
                    </div>
                    <div class="form-check-inline">
                        <label class="form-check-label" for="button2">
                            <button name="submit" value="x" type="submit" id="button2" class="btn btn-outline-warning">Resultado X. Cuota 2.00</button>                 
                        </label>
                    </div>
                    <div class="form-check-inline">
                        <label class="form-check-label" for="button3">
                            <button name="submit" value="2" type="submit" id="button3" class="btn btn-outline-danger">Resultado 2. Cuota 3</button>          
                        </label>
                    </div>
                   
       
                    </div>

                    <button type="submit" class="btn btn-outline-success" name="boton" value="enviar">Enviar</button>

                </div>
            </div>
        </form>
    </body>
</html>
