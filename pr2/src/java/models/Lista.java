/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

import java.util.ArrayList;

/**
 *
 * @author anita
 */
public class Lista extends ArrayList<Persona> {

    public Lista() {
        this.add(new Persona("Juan", "76767678"));
        this.add(new Persona("Antonio", "76767679"));
        this.add(new Persona("Pepe", "76767676"));
    }
    
}
