/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controladores;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.ArrayList;
import models.Persona;

/**
 *
 * @author anita
 */
public class controladorEstudiante {

    public static void guardarArrayList(ArrayList<Persona> estudiantes, String fichero) {
        try {
            ObjectOutputStream ficheroSalida = new ObjectOutputStream(new FileOutputStream(fichero));
            ficheroSalida.writeObject(estudiantes);
            ficheroSalida.flush();
            ficheroSalida.close();
            System.out.println("Personas guardadas correctamente...");

        } catch (FileNotFoundException fnfe) {
            System.out.println("Error: El fichero no existe. ");
        } catch (IOException ioe) {
            System.out.println("Error: Fallo en la escritura en el fichero. ");
        }
    }

    public static ArrayList<Persona> leerFichero(String fichero) {
        ArrayList<Persona> lista = null;
        try {
            ObjectInputStream ficheroEntrada = new ObjectInputStream(new FileInputStream(fichero));
            lista = (ArrayList<Persona>) ficheroEntrada.readObject();
        } catch (IOException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        return lista;
    }

    public static void main(String args[]) {
        String fichero = "C:\\Usuarios\\anita\\datos2.dat";
        Persona estudiante1 = new Persona("Paco", "García", "18/18/1997", "mucha", "paco@paco.com", "pa");
        Persona estudiante2 = new Persona("Pepe", "Fernández", "18/18/1998", "poca", "pepe@pepe.com", "pe");
        Persona estudiante3 = new Persona("Jose", "Carmona", "18/18/1999", "media", "jose@jose.com", "jo");
        ArrayList<Persona> estudiantes = new ArrayList<Persona>();
        estudiantes.add(estudiante1);
        estudiantes.add(estudiante2);
        estudiantes.add(estudiante3);
        guardarArrayList(estudiantes, fichero);
    }

}
