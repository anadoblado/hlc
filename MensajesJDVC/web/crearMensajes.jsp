<%-- 
    Document   : crearMensajes
    Created on : 06-dic-2020, 22:08:20
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
            }
            Connection conector = conexion.getConection();
                Statement s = (Statement) conector.createStatement();

                ResultSet rs = s.executeQuery("SELECT * FROM mensajes order by idmensajes desc limit 1");
        %>
        <div class="container">
        <div class="row text-center login-page">
	   <div class="col-md-12 login-form">
	      <form action="crearMensajeAdministrador" method="post"> 			
	         <div class="row">
		    <div class="col-md-12 login-form-header">
		       <p class="login-form-font-header"><span>Mensaje</span> Nuevo<p>
		    </div>
		</div>
		<div class="row">
		   <div class="col-md-12 login-from-row">
                       <% while (rs.next()){%>
                       <input name="idmensajes" type="text" value="<% out.println(rs.getInt(1) + 1);%>" readonly/>
                      <% }
                        rs.close();
                        s.close();
                      %>
		   </div>
		</div>
                  <div class="row">
		   <div class="col-md-12 login-from-row">
                       <input name="idemisor" type="text"  value="<% out.println(session.getAttribute("id"));%>" readonly/>
		   </div>
		</div>
                  <div class="row">
		   <div class="col-md-12 login-from-row">
                       <%
                            Statement s1 = (Statement) conector.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);

                            ResultSet rs1 = s1.executeQuery("SELECT * FROM usuarios");
                           
                            
                       %>
                       Destinatario: <select name="idreceptor">
                           <%
                                while(rs1.next()){
                               %>
                           <option value=<%out.println(rs1.getInt(1));%>><%out.println(rs1.getString(2));%></option>
                           <%
                          }
                      %>
                       </select>
                      
		   </div>
		</div>
                  <div class="row">
		   <div class="col-md-12 login-from-row">
		      <input name="contenido" type="text" placeholder="Escribe tu mensaje" required/>
		   </div>
		</div>

		<div class="row">
		   <div class="col-md-12 login-from-row">
		      <button class="btn btn-info">Enviar</button>
		   </div>
		</div>
	    </form>
	</div>
     </div>
  </div>
    </body>
</html>
