<%-- 
    Document   : crearLista
    Created on : 30-oct-2020, 12:49:46
    Author     : anita
--%>

<%@page import="java.io.IOException"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.ObjectOutputStream"%>
<%@page import="models.Persona"%>
<%@page import="models.Lista"%>
<%
    // if(session.isNew())
           // out.println("La sesion es nueva");
            //else
            // out.println("Sesion inicida anteriormente");
            //application.setAttribute("nombre", "Maria");
        //   request.getRequestDispatcher("S1").forward(request, response);
        
        Lista lista=new Lista();
        lista.add(new Persona("pepe",29));
        lista.add(new Persona("pepa",23));
        lista.add(new Persona("juanito",33));
        try{
        ObjectOutputStream oos=new ObjectOutputStream(
        new FileOutputStream("C:\\Usuarios\\anita\\datos.dat"));        
        oos.writeObject(lista);
        oos.close();
        }catch(IOException e){ }
     /* try{ ObjectInputStream ois= new ObjectInputStream(
      new FileInputStream("/home/alex/datos.dat"));
      
      lista =(Lista) ois.readObject();
      
      for(Persona p:lista){
          out.println("-" + p);
      }
      ois.close();
      }
      catch(IOException e){}*/
%>

