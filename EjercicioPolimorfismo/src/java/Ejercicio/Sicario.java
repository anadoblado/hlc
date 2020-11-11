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
public class Sicario extends Mafioso{
    
    private Sicario asesino;
    
    private int numAsesinatos;

    public Sicario(String nombre, String apodo, String banda, int edad, int numAsesinatos, boolean estaVivo) {
        super(nombre, apodo, banda, edad, estaVivo);
        this.numAsesinatos = numAsesinatos;
    }

    public Sicario() {
    }

    @Override
    public int aLaTrena() {
        int tiempoCarcel = 180 * numAsesinatos;
        return tiempoCarcel;//To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void esAsesinado(Sicario asesino) {
        String getnombreEjecutor;
        this.asesino.getNombre();
        System.out.println("Es asesinado por " + asesino.nombre);    
    }
    
    public void asesinar(){
    this.numAsesinatos += 1;
    }
    
    public String toString(){
        String texto = super.toString();
        texto = texto + "\nAsesinatos realizados: " + numAsesinatos + "\nAños de carcer: " + aLaTrena();
        
        return texto;
    }
   
    
    
    
}
