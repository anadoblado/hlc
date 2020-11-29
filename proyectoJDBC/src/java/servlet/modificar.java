/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
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
public class modificar extends HttpServlet {

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
        Connection conector = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conector = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/videoclub?serverTimezone=UTC", "java", "1234");

        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        int id = Integer.parseInt(request.getParameter("id"));
        String usuario = request.getParameter("usuario");
        String pass = request.getParameter("pass");
        String nombre = request.getParameter("nombre");
        String apellidos = request.getParameter("apellidos");
        String email = request.getParameter("email");
        try (PrintWriter out = response.getWriter()) {
            String sentencia = "UPDATE usuarios SET usuario='" + usuario + "', pass='" + pass + "',nombre='" + nombre + "',apellidos='" + apellidos + "',mail='" + email + "' WHERE id='" + id + "'";
            PreparedStatement instruccion = conector.prepareStatement(sentencia);
//            instruccion.setInt(1, id);
//            instruccion.setString(2, usuario);
//            instruccion.setString(3, pass);
//            instruccion.setString(4, nombre);
//            instruccion.setString(5, apellidos);
//            instruccion.setString(6, email);
            instruccion.executeUpdate();
            instruccion.close();
            conector.close();
            response.sendRedirect("modificarUsuario.jsp");
        } catch (SQLException ex) {
            Logger.getLogger(modificar.class.getName()).log(Level.SEVERE, null, ex);
            out.println("no se pudo realizar la operación");
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
//            Statement s = (Statement) conector.createStatement();
//            
//            ResultSet rs = s.executeQuery("SELECT * FROM usuarios");
//            while (rs.next()){
//                 System.out.println(rs.getString(1));
//                  System.out.println(rs.getString(2));
//                 System.out.println(rs.getString(3));
//            }
////            if(rs != null && rs.next()){
////                 System.out.println(rs.getString(3));
////            }
//            //System.out.println(rs.getString(3));
//            rs.close();
//             s.close();
            
            String sentencia = "UPDATE usuarios SET  pass=?, nombre=?, apellidos=?, mail=? WHERE id=? &&  usuario=? ";
            PreparedStatement instruccion = conector.prepareStatement(sentencia);
            instruccion.setInt(1, 7);
            instruccion.setString(2, "juanito");
            instruccion.setString(3, "1234");
            instruccion.setString(4, "juan");
            instruccion.setString(5, "kk");
            instruccion.setString(6, "ooooo");
            instruccion.executeUpdate();
            instruccion.close();
            conector.close();
            
            
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

