/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.util.ArrayList;

/**
 *
 * @author anita
 */
public class AlmacenaList {
     public AlmacenaList(String df, ArrayList<Persona> listaObjetos){
        
            try (ObjectOutputStream oos = new ObjectOutputStream( 
                    new FileOutputStream("C:\\Usuarios\\anita\\datos.dat"))) {
                oos.writeObject(listaObjetos);
                oos.close();
            }   catch (IOException e ){System.out.println( e.getMessage());}
        
    
    }

    
}
