/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelos;

import java.io.Serializable;

/**
 *
 * @author anita
 */
public class Mensaje implements Serializable{
    int id;
    int idusuemisor;
    int idusurecptor;
    String contenido;

    public Mensaje(int id, int idusuemisor, int idusurecptor, String contenido) {
        this.id = id;
        this.idusuemisor = idusuemisor;
        this.idusurecptor = idusurecptor;
        this.contenido = contenido;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getIdusuemisor() {
        return idusuemisor;
    }

    public void setIdusuemisor(int idusuemisor) {
        this.idusuemisor = idusuemisor;
    }

    public int getIdusurecptor() {
        return idusurecptor;
    }

    public void setIdusurecptor(int idusurecptor) {
        this.idusurecptor = idusurecptor;
    }

    public String getContenido() {
        return contenido;
    }

    public void setContenido(String contenido) {
        this.contenido = contenido;
    }
    
    
    
}
