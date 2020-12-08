<%-- 
    Document   : modificarUsuario
    Created on : 08-dic-2020, 12:02:22
    Author     : anita
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="Controladores.conexion"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css">
        <style>
            .containerOwnApp {
             box-shadow: 0 0 27px 0 rgba(84, 84, 84, 0.62);
            padding-top: 15px;
            }

        .login-page {
        padding: 18% 0 0;
        margin: 0 auto 100px;
        max-width: 360px;
        position: relative;
        }

        .login-form {
        box-shadow: 0 0 27px 0 rgba(84, 84, 84, 0.62);
        }

        .login-form-header {
        padding-top: 16px;
        }

        .login-from-row {
        padding-top: 16px;
        padding-bottom: 16px;
        }

        .login-form-font-header {
        font-size:30px; 
        font-weight: bold;
        }

        .login-form-font-header span {
        color: #007C9B;
        }
    </style>
    </head>
    <body>
        
         <%
             if (session.getAttribute("logueado") == null) {
                response.sendRedirect("index.jsp");
            } else {
                 
               // request.getSession().setAttribute("id", rs.getInt(1));
                Connection conector = conexion.getConection();
                Statement s = (Statement) conector.createStatement();
                int id = (int)session.getAttribute("id");

                ResultSet rs = s.executeQuery("SELECT * FROM usuarios where id='" + id + "'");
        %>
        <div class="container">
        <div class="row text-center login-page">
	   <div class="col-md-12 login-form">
	      <form action="modificarUsuario" method="post"> 			
	         <div class="row">
		    <div class="col-md-12 login-form-header">
		       <p class="login-form-font-header">Tus <span>Datos</span><p>
		    </div>
		</div>
		<div class="row">
		   <div class="col-md-12 login-from-row">
                       <% while (rs.next()){%>
                      Id: <input name="id" type="text" value="<% out.println(rs.getInt(1));%>" readonly/>
                      
		   </div>
		</div>
                      <div class="row">
		   <div class="col-md-12 login-from-row">
                      Avatar: <img src="<%out.print("images\\");out.print(rs.getString("avatar"));%>" width="50px" height="50px"> 
                      <input name="avatar" type="hidden"  value="<% out.println(rs.getString("avatar"));%>" required/>
		   </div>
		</div>
                  <div class="row">
		   <div class="col-md-12 login-from-row">
                      Nombre: <input name="nombre" type="text"  value="<% out.println(rs.getString("nombre"));%>" required/>
		   </div>
		</div>
                  <div class="row">
		   <div class="col-md-12 login-from-row">
                       <div class="col-md-12 login-from-row">
                         Apellidos:   <input name="apellidos" type="text"  value="<% out.println(rs.getString("apellidos"));%>" required/>
                        </div>          
		   </div>
		</div>
                  <div class="row">
		   <div class="col-md-12 login-from-row">
		     Email: <input name="mail" type="text"  value="<% out.println(rs.getString("mail"));%>" />
		   </div>
		</div>
                      <div class="row">
		   <div class="col-md-12 login-from-row">
		    Contraseña:  <input name="password" type="text"  value="<% out.println(rs.getString("password"));%>" />
		   </div>
		</div>
<% }
                        rs.close();
                        s.close();
                      %>
		<div class="row">
		   <div class="col-md-12 login-from-row">
		      <button class="btn btn-info">Enviar</button>
		   </div>
		</div>
	    </form>
                <form action="vistaUsuario.jsp">
                   <div class="row">
		   <div class="col-md-12 login-from-row">
		      <button class="btn btn-info">Volver</button>
		   </div>
		</div> 
                </form>
	</div>
     </div>
  </div>
    </body>
    <%}%>
</html>
