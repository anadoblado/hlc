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
public class s9 extends HttpServlet {

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
            
            //int numAleatorio = (int) Math.round(Math.random()*1000);
//            int numAleatorio = (Integer) request.getSession().getAttribute("numAleatorio");
//            int numUsuario = Integer.parseInt(request.getParameter("numero"));
//            int contador = 0;
//            
//            do {                
//                contador++;
//            } while (numAleatorio != numUsuario);
//            
//            request.getSession().setAttribute("contador", contador);
//            request.getSession().setAttribute("numeroUsuario", numUsuario);

            if(request.getSession().getAttribute("numeroAleatorio") == null){
                request.getSession().setAttribute("numeroAleatorio", (int) Math.round(Math.random()*1000));
                request.getSession().setAttribute("contador", 0);
            }
            request.getSession().setAttribute("contador", (int) request.getSession().getAttribute("contador") + 1);
            
            if(Integer.parseInt(request.getParameter("numero")) == (int) request.getSession().getAttribute("numeroAleatorio")){
              request.getSession().setAttribute("mensaje", "Has encontrado el número " + request.getSession().getAttribute("numeroAleatorio") + " en " + (Integer) request.getSession().getAttribute("contador") + " intentos");  
            }else{
                if(Integer.parseInt(request.getParameter("numero")) < (int) request.getSession().getAttribute("numeroAleatorio")){
                    request.getSession().setAttribute("mensaje", "El número que buscas es mayor");
                }else{
                    request.getSession().setAttribute("mensaje", "El número que buscas es menor");
                }
            }
   
            request.getRequestDispatcher("index.jsp").forward(request, response);
            
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet s9</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet s9 at " + request.getContextPath() + "</h1>");
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
