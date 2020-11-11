/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Ejercicio;

/**
 *
 * @author anita
 */
public abstract class Traficante extends Mafioso{

   
    
    private int numOperaciones;

    public Traficante(String nombre, String apodo, String banda, int edad, int numOperaciones, boolean estaVivo) {
        super(nombre, apodo, banda, edad, estaVivo);
        this.numOperaciones = numOperaciones;
    }

    public Traficante() {
    }

    @Override
    public int aLaTrena() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
     public int getNumOperaciones() {
        return numOperaciones;
    }

    public void setNumOperaciones(int numOperaciones) {
        this.numOperaciones = numOperaciones;
    }
    
    
    
}
