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
public abstract class Mafioso {
    public String nombre;
    public String apodo;
    public String banda;
    public int edad;
    public Sicario nombreEjecutor;
    public boolean estaVivo;
    
    

    public Mafioso(String nombre, String apodo, String banda, int edad, boolean estaVivo) {
        this.nombre = nombre;
        this.apodo = apodo;
        this.banda = banda;
        this.edad = edad;
        this.estaVivo = estaVivo;
    }

    public Mafioso() {
    }
    
     public abstract int aLaTrena();
     public abstract void esAsesinado(Sicario asesino);
    // public abstract void comprobarSiEstaVivo();
     
     public void ejecutado (Sicario sicario){
         sicario.asesinar();
         this.nombreEjecutor = sicario;
     }

    @Override
    public String toString() {
        String texto = "Mafioso{" + "Nombre = " + nombre + ", Apodo = " + apodo + '}';
        
        if (nombreEjecutor != null){
            texto = texto + "\nNombre del matón: " + nombreEjecutor;
        }
        return texto;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApodo() {
        return apodo;
    }

    public void setApodo(String apodo) {
        this.apodo = apodo;
    }

    public String getBanda() {
        return banda;
    }

    public void setBanda(String banda) {
        this.banda = banda;
    }

    public int getEdad() {
        return edad;
    }

    public void setEdad(int edad) {
        this.edad = edad;
    }

   public Sicario getNombreEjecutor() {
        return nombreEjecutor;
    }

    public void setNombreEjecutor(Sicario nombreEjecutor) {
        this.nombreEjecutor = nombreEjecutor;
    } 
    
    
    
    
    
    
    
    
}
