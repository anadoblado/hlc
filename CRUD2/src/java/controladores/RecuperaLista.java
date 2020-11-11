/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controladores;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.util.ArrayList;
import models.Persona;

/**
 *
 * @author anita
 */
public class RecuperaLista {
    ArrayList<Persona> listaObjetos;
    
    public RecuperaLista(String df) throws ClassNotFoundException
    {
       
       
            try (ObjectInputStream oos = new ObjectInputStream( 
                    new FileInputStream("C:\\Usuarios\\anita\\datos.dat"))) {
                this.listaObjetos=(ArrayList<Persona>)oos.readObject();
                oos.close();
            }   catch (IOException e ){System.out.println( e.getMessage());}
        
    
    }
    public ArrayList<Persona> get(){
        return this.listaObjetos;
    }
    
}
