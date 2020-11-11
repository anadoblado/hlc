<%-- 
    Document   : lista
    Created on : 01-nov-2020, 12:49:35
    Author     : anita
--%>

<%@page import="controladores.controladorEstudiante"%>
<%@page import="java.util.ArrayList"%>
<%@page import="models.Persona"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mostrar lista</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </head>
    <body>
       <%
	if (session.getAttribute("USR") == null) {
		response.sendRedirect("index.jsp");
	}
	else {
		ArrayList<Persona> estudiantes = controladorEstudiante.leerFichero("D:\\datos2.dat");
		if (estudiantes != null) {
			%>
                        <table class="table">
				<thead>
					<tr class="table-info">
                                                <th>Id</th>
						<th>Nombre</th>
						<th>Apellidos</th>
						<th>Fecha de nac</th>
						<th>Carrera</th>
						<th>Email</th>
					</tr>
				</thead>
				<tbody>
				<%
					for (Persona estudiante : estudiantes) {
						out.println("<tr>");
                                                out.println("<td>" + estudiante.getId() + "</td>");
						out.println("<td>" + estudiante.getNombre() + "</td>");
						out.println("<td>" + estudiante.getApellidos() + "</td>");
						out.println("<td>" + estudiante.getFecha_nac() + "</td>");
						out.println("<td>" + estudiante.getCarrera() + "</td>");
						out.println("<td>" + estudiante.getEmail() + "</td>");
						out.println("</tr>");
					}
				%>
				</tbody>
			</table>
			<%
		}
	}
	%>
        <form action="index.jsp">
            <button type="submit" name="alprincipio" class="btn btn-outline-primary">Volver</button>
        </form>
    </body>
</html>
