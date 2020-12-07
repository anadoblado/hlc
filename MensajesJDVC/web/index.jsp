<%-- 
    Document   : newjsindex
    Created on : 06-dic-2020, 19:57:00
    Author     : anita
--%>

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
   
    <div class="container">
        <div class="row text-center login-page">
	   <div class="col-md-12 login-form">
	      <form action="s1" method="post"> 			
	         <div class="row">
		    <div class="col-md-12 login-form-header">
		       <p class="login-form-font-header"><span>Logueate</span><p>
		    </div>
		</div>
		<div class="row">
		   <div class="col-md-12 login-from-row">
		      <input name="usuario" type="text" placeholder="Usuario" required/>
		   </div>
		</div>
		<div class="row">
		   <div class="col-md-12 login-from-row">
		      <input name="password" type="password" placeholder="Contraseña" required/>
		   </div>
		</div>
		<div class="row">
		   <div class="col-md-12 login-from-row">
		      <button class="btn btn-info">Entrar</button>
		   </div>
		</div>
	    </form>
               <div class="row">
                   <div class="col-md-12 login-from-row">
                       <form action="crearUsuario.jsp" method="post">
                            <button class="btn btn-succes">Registrar</button>
                       </form>
		   </div>         
                </div>
	</div>
     </div>
  </div>
</body>
</html>
