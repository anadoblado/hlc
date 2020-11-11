<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome to Spring Web MVC project</title>
    </head>

    <body>
        <form action="s1" method="post">
            <div>
                <h3>Ejercicio 15</h3>
                Introduce la nota (de 0 a 10)
                <input type="text" name="nota">
                <input type="submit" value="Enviar">
            </div>
        </form>
        <form action="s2" method="post">
            <div>
                <h3>Ejercicio 16</h3>
                <p>Intruduce un día</p>
                <input type="text" name="dia">
                <p>Intruduce un mes</p>
                <input type="text" name="mes">
                <p>Intruduce un año</p>
                <input type="text" name="year">
                <input type="submit" value="Enviar">
            </div>
        </form>
        <!--
        <%
            if (session.getAttribute("numeroLeido") != null) {
                if ((Boolean) session.getAttribute("numeroLeido") == false) {
                    out.println("El número que has introducido es 0");
                }
            } else {
                if (session.getAttribute("signo") != null) {
                    if ((Boolean) session.getAttribute("signo").equals("+")) {
                        out.println("El número que has introducido es positivo");
                    }
                    if ((Boolean) session.getAttribute("signo").equals("-")) {
                        out.println("El número que has introducido es negativo");
                    }
                }
            }
        %>
        -->
        <form action="s3" method="post">
            <h3>Ejercicio 17</h3>
            <p>Introduce un número</p>
            <input type="text" name="numero">
            <input type="submit" value="Enviar">
        </form>
 
        <form action="s4" method="post">
            <h3>Ejercicio 18</h3>
            <p>Introduce números</p>
            <input type="text" name="num">
            <input type="submit" value="Enviar">
        </form>
                       <%
		if (session.getAttribute("numCorrecto") != null) {
			if ((Boolean) session.getAttribute("numCorrecto") == false) {
				out.println("Has introducido un 0 y hay un total de: " + session.getAttribute("cont") + " números");
			}
		} else if (session.getAttribute("cont") == null) {
			session.setAttribute("cont", 0);

		}
	%>

                
        <form action="s5" method="post">
             <h3>Ejercicio 19</h3>
             <p>Imprimir los 100 primeros números de 7 en 7</p>
             <input type="submit" value="Comenzar">
        </form>
        <%
//            session.getAttribute("numeros");
//             ArrayList<Number> numeros = new ArrayList<Number>();
//             Iterator<Number> it = numeros.iterator();
//             while(it.hasNext()){
//                 Number elemento = it.next();
//                out.print(elemento+" / ");
//             }
            
            
           // numeros = request.getAttribute("numeros");
           
           if (session.getAttribute("num") == null){
               session.setAttribute("num", 1);
           }else{
               if((int) session.getAttribute("num") <= 100){
                   for (int i = (int) session.getAttribute("num")-7; i < (int) session.getAttribute("num"); i++){
                       out.println(i);
                   }
               }
           }
           
        %>

        
        <form action="s6" method="post">
             <h3>Ejercicio 20</h3>
             <p>Imprimir por pantalla todos los múltiplos de 5 desde el 100 hasta el 1</p>
             <input type="submit" value="Empezar">
        </form>
        <%
            if (session.getAttribute("num1") == null){
               session.setAttribute("num1", 5);
           }else{
               if((int) session.getAttribute("num1")  >  1){
                   for (int i = 100; i >= (int) session.getAttribute("num1") - 5; i-=5){
                       
                           out.println(i + ", ");
                      
                       
                   }
               }
           }
        %>
        <form action="s7" method="post">
             <h3>Ejercicio 21</h3>
             <p>Leer la estatura de 15 estatuas y determine el promedio de estaturas por
debajo de 1,60 mts. y el promedio de estaturas en general</p>
             <input type="tex" name="estatura">
             <input type="submit" value="Enviar">
        </form>
        
        <%
            if (session.getAttribute("arrayEstaturas") != null){
                ArrayList<Float> arrayEstaturas = (ArrayList<Float>) session.getAttribute("arrayEstaturas");
                
                if (arrayEstaturas.size() <= 15){
                    int suma = 0;
                    int sumaBajos = 0;
                    int contadorBajos = 1;
                    for (Float est : arrayEstaturas){
                        suma += est;
                        if(est < 1.60 && est > 0){
                            sumaBajos += est;
                            contadorBajos ++;
                        }
                        out.println(est);
                    }
                   // float media = suma / arrayEstaturas.size();
                   // float mediaBajos = sumaBajos / contadorBajos;
                    out.println("<p>La media es: " + suma / arrayEstaturas.size() + "</p>");
                    out.println("<p>La media por debajo de 1.60 es " + sumaBajos / (contadorBajos) + "</p>");
                }
            }
        %>
        <form action="s8" method="post">
             <h3>Ejercicio 22</h3>
             <p>Introduce 25 números entre el 1 y el 5</p>
             <input type="text" name="numero">
             <input type="submit" value="Enviar">
        </form>
        <%
            if (session.getAttribute("arrayNumeros") != null){
                ArrayList<Integer> arrayNumeros = (ArrayList<Integer>) session.getAttribute("arrayNumeros");
                if(arrayNumeros.size() == 25){
                    int numero1 = 0;
                    int numero2 = 0;
                    int numero3 = 0;
                    int numero4 = 0;
                    int numero5 = 0;
                    for(Integer num : arrayNumeros){
                        if(num == 1){
                            numero1++;
                        }
                        if(num == 2){
                            numero2++;
                        }
                        if(num == 3){
                            numero3++;
                        }
                        if(num == 4){
                            numero4++;
                        }
                        if(num == 5){
                            numero5++;
                        }
                    }
                    
                    out.println("<p>El número 1 aparece " + numero1 + "veces</p>");
                    out.println("<p>El número 2 aparece " + numero2 + "veces</p>");
                    out.println("<p>El número 3 aparece " + numero3 + "veces</p>");
                    out.println("<p>El número 4 aparece " + numero4 + "veces</p>");
                    out.println("<p>El número 5 aparece " + numero5 + "veces</p>");
                }
                
            }
        %>
        <form action="s9" method="post">
             <h3>Ejercicio 23</h3>
             <p>Adivina el número</p>
             <input type="text" name="numero">
             <input type="submit" value="Enviar">
        </form>
        <%
            if (session.getAttribute("mensaje") != null) {
                    out.println(session.getAttribute("mensaje"));
                }
            //int numAleatorio = (int) Math.round(Math.random()*1000);
            //request.getAttribute("contador");
            //int numUsuario = (Integer)request.getAttribute("numeroUsuario") ;
            //if (numAleatorio == numUsuario ){
              //  out.println("El número elegido al azar era: " + numAleatorio + " y has necesitado " + request.getSession().getAttribute("contador") + " intentos.");
           // }
        %>
       
    </body>
</html>
