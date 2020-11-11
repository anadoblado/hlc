<%@page import="java.util.Iterator"%>
<%@page import="models.Lista"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>La mierda esta</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
    </head>
 <!-- en en action le ponemos el servlet -->
    <body>
        <div class="container">
            <h1>Operaciones básicas</h1>
            <div class="row">
                <div class="col-sm6">
                    <form 
                        name="form1" 
                        accept=""
                        action="s1"
                        method="post"> 
                        <div class="row">
                            <div class="col-sm6">
                                <div class="form-group">
                                    <label for="numero1">Intrdouce un número</label>
                                    <input type="text" class="form-control" placeholder="Intrudce un número" name="numero1">
                                </div>
                                <div class="form-group">
                                    <label for="numero2">Intrdouce un número</label>
                                    <input type="text" class="form-control" placeholder="Intrudce un número" name="numero2">
                                </div>
                                <button type="submit" class="btn btn-outline-success" name="boton" value="sumar">Suma</button>
                                <button type="submit" class="btn btn-outline-success" name="boton" value="restar">Restar</button> 
                                <button type="submit" class="btn btn-outline-success" name="boton" value="multiplicar">Multiplicar</button> 
                                <button type="submit" class="btn btn-outline-success" name="boton" value="dividir">Dividir</button> 
                            </div>
                        </div>
                    </form>
                    <%-- Para iterar la lista e imprimirla con el iterator
                    <%
                        Lista l = new Lista();
                        Iterator it = l.iterator();
                        while (it.hasNext()){
                            out.println(it.next().toString());
                        }
                    %>
                    --%>
                    <form 
                        name="form2"
                        accept=""  
                        action="s2"
                        method="post">
                        <div class="row">
                            <div class="col-sm6">
                                <div class="form-group">
                                    <label for="numero1">Intrdouce un nombre</label>
                                    <input type="text" class="form-control" placeholder="Intrudce un nombre" name="nombre">
                                </div>
                                <button type="submit" class="btn btn-outline-success" name="boton" value="buscar">Buscar</button>
                                
                            </div>
                        </div>
                            
                    </form>
                </div>
            </div>           
        </div>


    </body>
</html>
