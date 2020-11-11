/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author anita
 */
public class s1 extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet s1</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet s1 at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //Leemos los parametros delformulario
        //por default el formulario es de tipo Get 
        int numero1 = Integer.parseInt(request.getParameter("numero1"));
        int numero2 = Integer.parseInt(request.getParameter("numero2"));
        
        String calculo = request.getParameter("boton");
        
        int suma = numero1 + numero2;
        int resta = numero1 - numero2;
        int multiplicacion = numero1 * numero2;
        float division = (float)numero1 / numero2;
        float resultado = 0;
        
        if(calculo.equals("sumar"))
            resultado = suma;
        if(calculo.equals("restar"))
            resultado = resta;
        if(calculo.equals("multiplicar"))
            resultado = multiplicacion;
        if(calculo.equals("dividir"))
            resultado = division;
       
        //String usuario = request.getParameter("usuario");  
        //String password =request.getParameter("password");
        
        System.out.println("Número 1:" +numero1);
        System.out.println("Número 2:" +numero2);
        
        PrintWriter out = response.getWriter(); 
        out.println("<html>");  
        out.println("<body>");
        if(calculo.equals("sumar")){
            out.println("La suma es: " +suma);
        }
        out.println("<br>");
        if(calculo.equals("restar")){
            out.println("La diferencia: " +resta);
        }
        out.println("<br>");
        if(calculo.equals("multiplicar")){
             out.println("La multiplicación: " +multiplicacion);
        }
        out.println("<br>");
        if(calculo.equals("dividir")){
             out.println("La división: " +division);
        }
        out.println("</body>");
        out.println("</html>");  
        out.close();
        processRequest(request, response);
       // out.println("El resultado es: " + resultado);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
