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
public class Capo extends Mafioso{
    
    private int numBarriosControlados;
    private Sicario asesino;

    public Capo() {
    }

    public Capo(String nombre, String apodo, String banda, int edad,int numBarriosControlados, boolean estaVivo) {
        super(nombre, apodo, banda, edad, estaVivo);
        this.numBarriosControlados = numBarriosControlados;
    }

    @Override
    public int aLaTrena() {
       String nombre = this.nombre;
        int tiempoCarcel = 60 * numBarriosControlados;
        return tiempoCarcel;
    }

    @Override
    public void esAsesinado(Sicario asesino) {
         String getnombreEjecutor;
        this.asesino.getNombre();
        System.out.println("Es asesinado por " + asesino.nombre);
    }


    
    
    
}
