<%-- 
    Document   : index
    Created on : 20-oct-2020, 23:01:18
    Author     : anita
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pagina 1</title>
         <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    
    </head>
    <body>
        
            <form name="form1"
                accept=""  
                action="s1"
                method="post">
            <div class="container justify-content-center">
                <div class="col-md">
                    <div class="form-group">
                        <label for="nombre">Intrdouce el nombre</label>
                        <input type="text" class="form-control" name="nombre">
                    </div>
                    <label for="evento">Evento deportivo: R.Madrid - Barcelona</label>
                    <div class="form-check-inline">
                        <label class="form-check-label" for="radio1">
                            <input type="radio" class="form-check-input" id="radio1" name="optradio" value="option1">1                
                        </label>
                    </div>
                    <div class="form-check-inline">
                        <label class="form-check-label" for="radio2">
                            <input type="radio" class="form-check-input" id="radio1" name="optradio" value="optionx" checked>X                
                        </label>
                    </div>
                    <div class="form-check-inline">
                        <label class="form-check-label" for="radio3">
                            <input type="radio" class="form-check-input" id="radio1" name="optradio" value="option2">2                
                        </label>
                    </div>
                    <div class="form-group">
                        <label for="cantidad">Cantidad a apostar</label>
                        <input type="number" class="form-control" name="cantidad">
                    </div>
                    <label for="evento">Cuota: 1.25 - 2 - 3</label>
                    </div>

                    <button type="submit" class="btn btn-outline-success" name="boton" value="enviar">Enviar</button>

                </div>
            </div>
        </form>
        
    </body>
</html>
