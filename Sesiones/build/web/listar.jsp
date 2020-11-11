<%-- 
    Document   : listar
    Created on : 27-oct-2020, 13:30:54
    Author     : anita
--%>

<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.ObjectInputStream"%>
<%@page import="java.io.IOException"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.ObjectOutputStream"%>
<%@page import="models.AlmacenaList"%>
<%@page import="models.Persona"%>
<%@page import="models.RecuperaLista"%>
<%@page import="models.Lista"%>
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
           Lista lista=new Lista(); // aquí creamos la lista y le damos valores
        lista.add(new Persona("pepe",29));
        lista.add(new Persona("pepa",23));
        lista.add(new Persona("juanito",33));
        lista.add(new Persona("fran",29));
        lista.add(new Persona("arturo",20));
// ESTÁ COMENTADO PORQUE UNA VEZ QUE LO CREAS, SE GUARDA Y NO HAY QUE EJECUTARLO MÁS
        try{
        ObjectOutputStream oos=new ObjectOutputStream(
        new FileOutputStream("C:\\Usuarios\\anita\\datos.dat"));        
        oos.writeObject(lista);
        oos.close();
        }catch(IOException e){ }
        
// AQUÍ LEE EL ARCHIVO DONDE SE CARGA LA LISTA DE ANTES
try{ ObjectInputStream ois= new ObjectInputStream(
      new FileInputStream("C:\\Usuarios\\anita\\datos.dat"));
      
      lista =(Lista) ois.readObject();
      
      for(Persona p:lista){
          out.println("-" + p);
      }
      ois.close();
      }
      catch(IOException e){}
        %>
        <table>
            <tr>
                <th>Índice</th><th>Nombre</th><th>Edad</th>
            </tr>
            <% 
                int i = 0;
                for(Persona p:lista){
                     out.println("<tr><td>" + (i++) +"</td>" + "<td>" + p.getNombre()+"</td>" +"<td>" + p.getEdad()+"</td></tr>" );
                }
                out.println("</table>");
            %>
        </table>
    </body>
</html>
