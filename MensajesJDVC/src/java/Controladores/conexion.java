/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controladores;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author anita
 */
public class conexion {
    private static Connection con = null;
    
    public static Connection getConection(){
        try{
            if(con == null){
                String driver = "com.mysql.cj.jdbc.Driver";
                String url = "jdbc:mysql://localhost:3306/foro?serverTimezone=UTC";
                String usuario = "java";
                String password = "1234";
                Class.forName(driver);
                con = DriverManager.getConnection(url, usuario, password);
                System.out.println("Conection Succesfull");
            }
        }catch(ClassNotFoundException | SQLException ex){
            ex.printStackTrace();
        }
        return con;
    }
    
}
