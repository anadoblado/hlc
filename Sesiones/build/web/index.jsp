<%-- 
    Document   : index.jsp
    Created on : 23-oct-2020, 10:57:51
    Author     : anita
--%>

<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.ObjectInputStream"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.ObjectOutputStream"%>
<%@page import="models.Persona"%>
<%@page import="models.Lista"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>

    </head>
    <body>
        <h1>Hello World!</h1>
        int[][] array = {{2,1}, {2,3}};
        <%
//            if(session.isNew()){
//                out.println("La sesión es nueva");
//            } else{
//                out.println("La sesión ya está iniciada");
//            }
//            application.setAttribute("nombre", "Maria");
            //session.setAttribute("nombre", "Pepe");
            //request.setAttribute("nombre", "Pepe");
            //request.setAttribute("numero", new Integer(7));
            //request.getRequestDispatcher("s1").forward(request, response);

            Lista lista = new Lista();
            lista.add(new Persona("Pepe", 45));
            lista.add(new Persona("Maria", 48));

//            try {
//                ObjectOutputStream oos = new ObjectOutputStream(
//                new FileOutputStream("C:\\Users\\anita\\Documents\\datos.dat")); 
//                oos.writeObject(lista);
//                  oos.close();
//                
//            } catch (Exception e) {
//
//            }
            try {
                    ObjectInputStream ois = new ObjectInputStream(
                            new FileInputStream("C:\\Users\\anita\\Documents\\datos.dat"));
                    
                    lista = (Lista)ois.readObject();
                    
                    for (Persona p : lista){
                        out.println(", " + p);
                    }
                } catch (Exception e) {
                }
        %>

        <form action="s1" method="post">
            <div class="form-group">
                <label for="exampleInputEmail1">Email address</label>
                <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="nombre">
                <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
            </div>
            <div class="form-group">
                <label for="exampleInputPassword1">Password</label>
                <input type="password" class="form-control" id="exampleInputPassword1">
            </div>
            <div class="form-group form-check">
                <input type="checkbox" class="form-check-input" id="exampleCheck1">
                <label class="form-check-label" for="exampleCheck1">Check me out</label>
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </body>
</html>
