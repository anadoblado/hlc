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
public class TraficanteDrogas extends Traficante{
    
        private Sicario asesino;

    public TraficanteDrogas(String nombre, String apodo, String banda, int edad, int numOperaciones, boolean estaVivo) {
        super(nombre, apodo, banda, edad, numOperaciones, estaVivo);
    }

    public TraficanteDrogas() {
    }

    @Override
    public int aLaTrena() {
        this.getNumOperaciones();
        int tiempoCarcel = 48 * getNumOperaciones();
        return tiempoCarcel;
    }

    @Override
    public void esAsesinado(Sicario asesino) {
         String getnombreEjecutor;
        this.asesino.getNombre();
        System.out.println("Es asesinado por " + asesino.nombre);
    }
    
    
}
