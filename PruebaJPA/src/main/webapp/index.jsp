<%-- 
    Document   : index
    Created on : 19-ene-2021, 13:54:31
    Author     : anita
--%>

<%@page import="DAO.PaisesDAO"%>
<%@page import="com.mycompany.pruebajpa.Paises"%>
<%@page import="javax.persistence.TypedQuery"%>
<%@page import="com.mycompany.pruebajpa.Libros"%>
<%@page import="java.util.List"%>
<%@page import="com.mycompany.pruebajpa.Autores"%>
<%@page import="javax.persistence.Query"%>
<%@page import="javax.persistence.EntityManager"%>
<%@page import="javax.persistence.EntityManagerFactory"%>
<%@page import="javax.persistence.Persistence"%>
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
//            EntityManagerFactory emf = Persistence.createEntityManagerFactory("com.mycompany_PruebaJPA_war_1.0-SNAPSHOTPU"); // poner el name de la unidad de persistencia
//            EntityManager em = emf.createEntityManager();
//
//            Query myQuery = em.createQuery("SELECT a FROM Autores a"); // se refiera a la clase Autores.java
//            List<Autores> autoresLista = myQuery.getResultList();
//            for (Autores a : autoresLista) {
//                out.println(a.getId() + ", " + a.getName() + ", " + a.getPais().getName() + "<br>");
//            }

//            out.println("<hr>");

//            Query mQ = em.createNamedQuery("Libros.findAll", Libros.class);
//            List<Libros> listaLibros = mQ.getResultList();
//            for (Libros l : listaLibros) {
//                out.println("Id: " + l.getId() + " título " + l.getName() + "<br>");
//            }
//            out.println("<hr>");

//            TypedQuery typeQ = em.createNamedQuery("Libros.findByName", Libros.class);
//            typeQ.setParameter("name", "El quijote");
//            List<Libros> lista2 = typeQ.getResultList();
//            for (Libros l : lista2) {
//                out.println("Resultado de la búsqueda: " + l.getName() + " del autor " + l.getAut().getName());
//            }

//            out.println("<hr>");

//            Query mQ2 = em.createNamedQuery("Paises.findAll", Paises.class);
//            List<Paises> listaPaises = mQ2.getResultList();
//            for (Paises l : listaPaises) {
//                out.println("Id: " + l.getId() + " país " + l.getName() + "<br>");
//            }
//            out.println("<hr>");

//             TypedQuery typeQ2 = em.createNamedQuery("Paises.deleteById", Paises.class);
//             typeQ2.setParameter("id", 8);
//             typeQ2.executeUpdate();
             

            out.println("<hr>");
            
            List<Paises> miListaPaises=null;
            miListaPaises = new PaisesDAO().listarPaises();
            
            for (Paises mi : miListaPaises) {
                    out.println(mi.getId() + ", " + mi.getName());
                }
            
//           emf.close();
        %>
    </body>
</html>
