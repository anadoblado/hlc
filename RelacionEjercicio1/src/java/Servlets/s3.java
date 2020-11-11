/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author anita
 */
public class s3 extends HttpServlet {

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
        processRequest(request, response);
      //  PrintWriter out = response.getWriter();
        
        float numero = Float.parseFloat(request.getParameter("numero"));
       // ArrayList<Float> numeros = new ArrayList<Float>();
        //numeros.add(numero);
        
//        if (Float.parseFloat(request.getParameter("numero")) == 0) {
//            request.getSession("numeroLeido", false);
//        }else{
//            if (numero > 0){
//                request.getSession("signo", "+");
//            }else{
//                request.getSession("signo", "-");
//            }
//           request.getRequestDispatcher("index.jsp").forward(request, response);
//        }
        
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
           out.println("<!DOCTYPE html>");
            out.println("<html>");
           out.println("<head>");
            out.println("<title>Servlet s3</title>");            
            out.println("</head>");
            out.println("<body>");
            if (numero != 0){
                //numeros.add(numero);
               if(numero % 2 == 0){
                    out.println("<p>El número" + numero + " es par</p>");
                }else{
                    out.println("<p>El número" + numero + " es impar</p>");
                }
            }
//            else{
//                 out.println("<p>No hay más números que añadir</p>");
//                 for (Float num : numeros) {
//                    if(num % 2 == 0){
//                        out.println("<p>El número" + num + " es par</p>");
//                    }else{
//                        out.println("<p>El número" + num + " es impar</p>");
//                   }
//                } 
//            }
            out.println("<p>");
            out.println("</body>");
            out.println("</html>");
        }
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
