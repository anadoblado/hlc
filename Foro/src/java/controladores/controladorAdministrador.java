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
import models.Usuario;

/**
 *
 * @author anita
 */
public class controladorAdministrador {
    
    public static void guardarArrayListUsuairo(ArrayList<Usuario> usuarios, String fichero ){
         try {
            ObjectOutputStream ficheroSalida = new ObjectOutputStream(new FileOutputStream(fichero));
            ficheroSalida.writeObject(usuarios);
            ficheroSalida.close();
            System.out.println("Personas guardadas correctamente...");

        } catch (FileNotFoundException fnfe) {
            System.out.println("Error: El fichero no existe. ");
        } catch (IOException ioe) {
            System.out.println("Error: Fallo en la escritura en el fichero. ");
        }
    }
    
    public static void guardarArrayListAdmi(ArrayList<Administrador> administradores, String fichero){
        try {
            ObjectOutputStream ficheroSalida = new ObjectOutputStream(new FileOutputStream(fichero));
            ficheroSalida.writeObject(administradores);
            ficheroSalida.close();
            System.out.println("Administradores guardados correctamente");
        } catch (FileNotFoundException fnfe) {
            System.out.println("Error: El fichero no existe. ");
        } catch (IOException ioe){
            System.out.println("Error: Fallo en la escritura en el fichero. ");
        }
    }
    
      public static ArrayList<Usuario> leerFicheroUsuario(String fichero) {
        ArrayList<Usuario> lista = null;
        try {
            ObjectInputStream ficheroEntrada = new ObjectInputStream(new FileInputStream(fichero));
            lista = (ArrayList<Usuario>) ficheroEntrada.readObject();
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
        
        public static void main (String args[]){
            String fichero = "D:\\datos3.dat";
            String ficheroAdmin = "D:\\datosAdm2.dat"; 
            
            Usuario usu1 = new Usuario("Nuria", "1234", "Mensaje a enviar y guardar 1");
            Usuario usu2 = new Usuario("Antonio", "1234", "Mensaje a enviar y guardar 1");
            Usuario usu3 = new Usuario("Cubi", "1234", "Mensaje a enviar y guardar 1");
            Usuario usu4 = new Usuario("Fran", "1234", "Mensaje a enviar y guardar 1");
            
            Administrador admi = new Administrador("admi", "1234");
            
            ArrayList<Usuario> usuarios = new ArrayList<Usuario>();
            ArrayList<Administrador> administradores = new ArrayList<Administrador>();
            
            usuarios.add(usu1);
            usuarios.add(usu2);
            usuarios.add(usu3);
            usuarios.add(usu4);
            
            administradores.add(admi);
            
            guardarArrayListUsuairo(usuarios, fichero);
            guardarArrayListAdmi(administradores, ficheroAdmin);
        }
}
