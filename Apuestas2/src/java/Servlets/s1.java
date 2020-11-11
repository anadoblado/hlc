/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

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

//        String nombre = request.getParameter("nombre");
//        String[] apuesta = request.getParameterValues("optradio");
//        double cantidad = (double) Double.parseDouble(request.getParameter("cantidad"));
//        String[] cuota = request.getParameterValues("optradioCuota");
//        double valorCuota = Double.parseDouble(cuota[0]);
//        double ganancia = cantidad * valorCuota;
//
//        request.setAttribute("nombre", nombre);
//        request.setAttribute("apuesta", apuesta);
//        request.setAttribute("cantidad", cantidad);
//        request.setAttribute("cuota", cuota);
//        request.setAttribute("valorCuota", valorCuota);
//        request.setAttribute("ganancia", ganancia);
//        //response.sendRedirect("resumen.jsp");
//        String[] acierto = request.getParameterValues("optradioAcertar");
          request.getRequestDispatcher("resumen.jsp").forward(request, response);
        
        try (PrintWriter out = response.getWriter()) {
            
           if(request.getParameter("enviar") != null){
               String nombre = request.getParameter("nombre");
               double cantidad =  Double.parseDouble(request.getParameter("cantidad"));
               String apuesta = request.getParameter("optradio");
               
               if(apuesta.equals("option1")){
                  cantidad *= 1.25;
               }
               if(apuesta.equals("optionx")){
                   cantidad *= 2;
               }
               if(apuesta.equals("option2")){
                    cantidad *= 3;
               }
                request.setAttribute("nombre", nombre);
                request.setAttribute("cantidad", cantidad);
                
                
           }else{
               String ganar = request.getParameter("optradioAcertar");
               String boton = request.getParameter("confirmar");
               String nombre = request.getParameter("nombre");
                
                if(ganar.equals("optionSi")){
                    request.setAttribute("acierto", true);
                }
                if(ganar.equals("optionNo")){
                    request.setAttribute("acierto", false);
                }
                 request.setAttribute("nombre", nombre);
                 request.setAttribute("boton", boton);
                 request.setAttribute("cantidad", Double.parseDouble(request.getParameter("cantidad")));
    
           }
          // request.getRequestDispatcher("resumen.jsp").forward(request, response);
//            out.println("<!DOCTYPE html>");
//            out.println("<html>");
//            out.println("<head>");
//            out.println("<title>Resultado de la apuesta</title>");
//            out.println("</head>");
//            out.println("<body>");
//
//            request.setAttribute("nombre", nombre);
//            request.setAttribute("apuesta", apuesta);
//            request.setAttribute("cantidad", cantidad);
//            request.setAttribute("cuota", cuota);
//            request.setAttribute("valorCuota", valorCuota);
//            request.setAttribute("ganancia", ganancia);
//
//            // out.println("<h1>Servlet s1 at " + request.getContextPath() + "</h1>");
//            if (acierto.equals("optionSi")) {
//                request.setAttribute("nombre", nombre);
//                request.setAttribute("apuesta", apuesta);
//                request.setAttribute("ganancia", ganancia);
//                request.setAttribute("cantidad", cantidad);
//                out.println("<p>" + nombre + " apostó " + cantidad);
//                out.println("</p>");
//                out.println("<p> Obtiene: " + ganancia);
//            } else {
//                out.println("Has perdido la apuesta de: " + cantidad);
//            }
//            //out.println("<p>" + nombre + " apostó " + cantidad);
//            out.println("</p>");
//            out.println("<p> Obtiene: " + ganancia);
//            out.println("</p>");
//            out.println("<p>");
//            out.println("</p>");
//            out.println("<p>");
//            out.println("</p>");
//            out.println("<p>");
//            out.println("</p>");
//            out.println("</body>");
//            out.println("</html>");

        }
        //request.getRequestDispatcher("resumen.jsp").forward(request, response);
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
