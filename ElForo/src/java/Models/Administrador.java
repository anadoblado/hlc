/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

import java.io.Serializable;

/**
 *
 * @author anita
 */
public class Administrador implements Serializable{
    
    String nombre;
    String password;

    public Administrador(String usuario, String password) {
        this.nombre = usuario;
        this.password = password;
    }

    public String getUsuario() {
        return nombre;
    }

    public void setUsuario(String usuario) {
        this.nombre = usuario;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    
    
    
  
    
}
