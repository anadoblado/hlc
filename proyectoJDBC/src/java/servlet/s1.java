/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
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
            throws ServletException, IOException, SQLException {
         response.setContentType("text/html;charset=UTF-8");
        Connection conector = null;
        try {
              Class.forName("com.mysql.cj.jdbc.Driver");
             conector = DriverManager.getConnection(
             "jdbc:mysql://localhost:3306/videoclub?serverTimezone=UTC", "java", "1234"); 
              
          } catch (ClassNotFoundException |SQLException ex) {
              Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
          }
       
        String usuario = request.getParameter("usuario");
        String pass = request.getParameter("pass");
        // Administrador admi = null;
        try (PrintWriter out = response.getWriter()) {
            out.println(pass);
            out.println(usuario);
                   
            Statement s = (Statement) conector.createStatement();
            
            ResultSet rs = s.executeQuery("SELECT * FROM usuarios WHERE usuario='" + usuario + "' and pass='" + pass + "'");
               
            if(rs != null && rs.next()){
                //out.println(rs.getString(3));
                if (usuario.equals("admin")){
                 request.getSession().setAttribute("logueado", rs.getString(4));
                 response.sendRedirect("vistaAdministrador.jsp");
            }else{
                request.getSession().setAttribute("logueado", rs.getString(4));
                request.getSession().setAttribute("id",rs.getInt(1));
                request.getSession().setAttribute("usuario", rs.getString(2));
                request.getSession().setAttribute("pass", rs.getString(3));
                request.getSession().setAttribute("apellidos", rs.getString(5));
                request.getSession().setAttribute("mail", rs.getString(6));
                response.sendRedirect("vistaUsuario.jsp");
            }
        }
            
           
            s.close();
            rs.close();
        }
    }
    
    public static void main (String[] args) throws SQLException{
          Connection conector = null;
        try {
              Class.forName("com.mysql.cj.jdbc.Driver");
             conector = DriverManager.getConnection(
             "jdbc:mysql://localhost:3306/videoclub?serverTimezone=UTC", "java", "1234"); 
              
          } catch (ClassNotFoundException |SQLException ex) {
              Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
          }
            Statement s = (Statement) conector.createStatement();
            
            ResultSet rs = s.executeQuery("SELECT * FROM usuarios");
            while (rs.next()){
                 System.out.println(rs.getString(1));
                  System.out.println(rs.getString(2));
                 System.out.println(rs.getString(3));
            }
//            if(rs != null && rs.next()){
//                 System.out.println(rs.getString(3));
//            }
            //System.out.println(rs.getString(3));
            rs.close();
             s.close();
            
            
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
       try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(s1.class.getName()).log(Level.SEVERE, null, ex);
        }
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
       try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(s1.class.getName()).log(Level.SEVERE, null, ex);
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
