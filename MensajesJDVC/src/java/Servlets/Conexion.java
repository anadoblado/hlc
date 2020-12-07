/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author anita
 */
class Conexion {
     private Connection conector;

    public Conexion() {
        try {
              Class.forName("com.mysql.cj.jdbc.Driver");
             conector = DriverManager.getConnection(
             "jdbc:mysql://localhost:3306/forob?serverTimezone=UTC", "java", "1234"); 
              
          } catch (ClassNotFoundException |SQLException ex) {
              Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
          }
    }
    
    public Connection getConector(){
    return this.conector;
    }
    
    public void cerrar(){
        try {
            conector.close();
        } catch (SQLException ex) {
            Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
