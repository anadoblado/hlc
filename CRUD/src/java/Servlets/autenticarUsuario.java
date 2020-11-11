/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import controladores.controladorEstudiante;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import models.Administrador;
import models.Persona;

/**
 *
 * @author anita
 */
public class autenticarUsuario extends HttpServlet {

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

            Boolean logueado = false;
            Boolean logueadoEst = false;
            Boolean logueadoAdm = false;
            String fichero = "D:\\datos2.dat";
            String ficheroAdmin = "D:\\datosAdm.dat";

            ArrayList<Administrador> administradores = controladorEstudiante.leerFicheroAdmi(ficheroAdmin);
            for (Administrador adm : administradores) {
                if (adm.getUsuario().equals(request.getParameter("nombre"))
                        && adm.getPass().equals(request.getParameter("pass"))) {
                    logueadoAdm = true;
                    logueado = true;
                }
            }

            // leemos con el controlador la lista que está en el fichero fichero que previamente cargarmos
            ArrayList<Persona> estudiantes = controladorEstudiante.leerFichero(fichero);
            //recorremos la lista para verificar que el usuario está en la lista

            for (Persona est : estudiantes) {
                if (est.getNombre().equals(request.getParameter("nombre"))
                        && est.getPassword().equals(request.getParameter("pass"))) {
                    logueado = true;
                    logueadoEst = true;
                }
            }

            if (!logueado) {
                response.sendRedirect("index.jsp");
            } else if (logueadoAdm == true) {
                System.out.println("Administrador");
                    request.getSession().setAttribute("USR", request.getParameter("nombre"));
                    //request.getRequestDispatcher("vistaAdministrador.jsp").forward(request, response);
                    response.sendRedirect("vistaAdministrador.jsp");
                }
                else if (logueadoEst == true) {
                    System.out.println("Estudiante");
                    request.getSession().setAttribute("USR", request.getParameter("nombre"));
                    //request.getRequestDispatcher("lista.jsp").forward(request, response);
                    response.sendRedirect("lista.jsp");
                }
            

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
