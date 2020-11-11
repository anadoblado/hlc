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
import models.Administrador;
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
            ficheroSalida.close();
            System.out.println("Personas guardadas correctamente...");

        } catch (FileNotFoundException fnfe) {
            System.out.println("Error: El fichero no existe. ");
        } catch (IOException ioe) {
            System.out.println("Error: Fallo en la escritura en el fichero. ");
        }
    }
    
     public static void guardarArrayListAdmin(ArrayList<Administrador> administradores, String fichero) {
        try {
            ObjectOutputStream ficheroSalida = new ObjectOutputStream(new FileOutputStream(fichero));
            ficheroSalida.writeObject(administradores);
            ficheroSalida.close();
            System.out.println("Administrador guardadas correctamente...");

        } catch (FileNotFoundException fnfe) {
            System.out.println("Error: El fichero no existe. ");
        } catch (IOException ioe) {
            System.out.println("Error: Fallo en la escritura en el fichero de administrador. ");
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
    
     public static ArrayList<Administrador> leerFicheroAdmi(String fichero) {
        ArrayList<Administrador> lista = null;
        try {
            ObjectInputStream ficheroEntrada = new ObjectInputStream(new FileInputStream(fichero));
            lista = (ArrayList<Administrador>) ficheroEntrada.readObject();
        } catch (IOException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        return lista;
    }

    public static void main(String args[]) {
        String fichero = "D:\\datos2.dat";
        String ficheroAdmin = "D:\\datosAdm.dat";
        Persona estudiante1 = new Persona("1", "Fran", "Roldan", "24/10/1990", "ccss ambientales", "paco@paco.com", "1234");
        Persona estudiante2 = new Persona("2", "Arturo", "Vicente", "18/9/2001", "ciber security", "arturo@arturo.com", "1234");
        Persona estudiante3 = new Persona("3", "Manuelin","Terrón", "6/8/2012", "en proceso", "manuel@manuel.com", "1234");
        Persona estudiante4 = new Persona("4", "Nuria","Reyes", "6/8/1998", "web developer", "nuria@cotton.com", "1234");
        
        Administrador administrador = new Administrador();
        
        ArrayList<Persona> estudiantes = new ArrayList<Persona>();
        ArrayList<Administrador> administradores = new ArrayList<Administrador>();
        
        estudiantes.add(estudiante1);
        estudiantes.add(estudiante2);
        estudiantes.add(estudiante3);
        estudiantes.add(estudiante4);
        administradores.add(administrador);
        
        guardarArrayList(estudiantes, fichero);
        guardarArrayListAdmin(administradores, ficheroAdmin);
    }

}
