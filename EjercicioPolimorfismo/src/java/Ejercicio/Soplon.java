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
public class Soplon extends Mafioso{
    
    private int numSoplos;
    private Sicario asesino;

    public Soplon(String nombre, String apodo, String banda, int edad, int numSoplos, boolean estaVivo) {
        super(nombre, apodo, banda, edad,estaVivo);
        this.numSoplos = numSoplos;
    }

    public int getNumSoplos() {
        return numSoplos;
    }

    public void setNumSoplos(int numSoplos) {
        this.numSoplos = numSoplos;
    }

    @Override
    public int aLaTrena() {
       int tiempoCarcel = 1 * numSoplos;
        return tiempoCarcel;//To change body of generated methods, choose Tools | Templates.
    }

   

    @Override
    public void esAsesinado(Sicario asesino) {
        String getnombreEjecutor;
        this.asesino.getNombre();
        System.out.println("Es asesinado por " + asesino.nombre);
    }

    //@Override
  //  public void comprobarSiEstaVivo() {
  //      if (estaVivo){
            
  //      }
  //  }
    
    
    
    
}
