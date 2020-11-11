<%-- 
    Document   : index
    Created on : 30-oct-2020, 18:34:26
    Author     : anita
--%>

<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.ObjectInputStream"%>
<%@page import="java.io.IOException"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.ObjectOutputStream"%>
<%@page import="model.Persona"%>
<%@page import="model.Lista"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>INICIO</h1>
        <%
            //para ver que se ha creado, porque jsp lo hace por defecto
            out.println(session.isNew());

            if (session.isNew() && session.getAttribute("logueado") == null) {
                response.sendRedirect("logueo.jsp");
            }
        %>
        <%
            Lista lista = new Lista(); // aquí creamos la lista y le damos valores
            lista.add(new Persona("pepe", 29));
            lista.add(new Persona("pepa", 23));
            lista.add(new Persona("juanito", 33));
// ESTÁ COMENTADO PORQUE UNA VEZ QUE LO CREAS, SE GUARDA Y NO HAY QUE EJECUTARLO MÁS
//            try {
//                ObjectOutputStream oos = new ObjectOutputStream(
//                new FileOutputStream("C:\\Usuarios\\anita\\datos.dat"));
//                oos.writeObject(lista);
//                oos.close();
//            } catch (IOException e) {
//            }

//// AQUÍ LEE EL ARCHIVO DONDE SE CARGA LA LISTA DE ANTES
//            if(!session.isNew() && session.getAttribute("logueado") == null){
//                    try {
//                    ObjectInputStream ois = new ObjectInputStream(
//                            new FileInputStream("C:\\Usuarios\\anita\\datos.dat"));
//
//                    lista = (Lista) ois.readObject();
//
//                    for (Persona p : lista) {
//                        out.println("-" + p);
//                    }
//                    ois.close();
//                } catch (IOException e) {
//                }
//            }

               
            
        %>
        
<!--        <table>
            <tr>
                <th>Índice</th><th>Nombre</th><th>Edad</th>
            </tr>
            <% 
//                int i = 0;
//                for(Persona p:lista){
//                     out.println("<tr><td>" + (i++) +"</td>" + "<td>" + p.getNombre()+"</td>" +"<td>" + p.getEdad()+"</td></tr>" );
//                }
//                out.println("</table>");
            %>
        </table>-->
    </body>
</html>
