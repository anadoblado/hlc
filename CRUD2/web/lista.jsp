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
    </head>
    <body>
       <%
	if (session.getAttribute("USR") == null) {
		response.sendRedirect("index.jsp");
	}
	else {
		ArrayList<Persona> estudiantes = controladorEstudiante.leerFichero("C:\\Usuarios\\anita\\datos.dat");
		if (estudiantes != null) {
			%>
			<table border="1">
				<thead>
					<tr>
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
    </body>
</html>
