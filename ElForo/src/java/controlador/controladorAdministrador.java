/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import Models.Administrador;
import Models.Mensaje;
import Models.Usuario;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.ArrayList;

/**
 *
 * @author anita
 */
public class controladorAdministrador {

    public static void guardarArrayListUsuairo(ArrayList<Usuario> usuarios, String fichero) {
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

    public static void guardarArrayListAdmi(ArrayList<Administrador> administradores, String fichero) {
        try {
            ObjectOutputStream ficheroSalida = new ObjectOutputStream(new FileOutputStream(fichero));
            ficheroSalida.writeObject(administradores);
            ficheroSalida.close();
            System.out.println("Administradores guardados correctamente");
        } catch (FileNotFoundException fnfe) {
            System.out.println("Error: El fichero no existe. ");
        } catch (IOException ioe) {
            System.out.println("Error: Fallo en la escritura en el fichero. ");
        }
    }

    public static void guardarArrayListMensajes(ArrayList<Mensaje> mensajes, String fichero) {
        try {
            ObjectOutputStream ficheroSalida = new ObjectOutputStream(new FileOutputStream(fichero));
            ficheroSalida.writeObject(mensajes);
            ficheroSalida.close();
            System.out.println("Mensajes guardados correctamente");
        } catch (FileNotFoundException fnfe) {
            System.out.println("Error: El fichero no existe. ");
        } catch (IOException ioe) {
            System.out.println("Error: Fallo en la escritura en el fichero no hay mensajes. ");
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

    public static ArrayList<Mensaje> leerFicheroMensajes(String fichero) {
        ArrayList<Mensaje> lista = null;
        try {
            ObjectInputStream ficheroEntrada = new ObjectInputStream(new FileInputStream(fichero));
            lista = (ArrayList<Mensaje>) ficheroEntrada.readObject();
        } catch (IOException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        return lista;
    }

    public static void main(String args[]) {
        String fichero = "D:\\usuarios.dat";
        String ficheroAdmin = "D:\\datosAdm2.dat";
        String ficheroMensajes = "D:\\mensajes.dat";

        Usuario usu1 = new Usuario("1","Nuria", "1234");
        Usuario usu2 = new Usuario("2","Antonio", "1234");
        Usuario usu3 = new Usuario("3","Cubi", "1234");
        Usuario usu4 = new Usuario("4","Fran", "1234");

        Administrador admi = new Administrador("admi", "1234");
        
        Mensaje mensaje1 = new Mensaje ("mensaje 1 que me tiene ya...",usu1, 1);
        Mensaje mensaje2 = new Mensaje ("mensaje 2 que me tiene ya...",usu2, 2);
        Mensaje mensaje3 = new Mensaje ("mensaje 3 que me tiene ya...",usu3, 3);
        Mensaje mensaje4 = new Mensaje ("mensaje 4 que me tiene ya...",usu4, 4);

        ArrayList<Usuario> usuarios = new ArrayList<Usuario>();
        ArrayList<Administrador> administradores = new ArrayList<Administrador>();
        ArrayList<Mensaje> mensajes = new ArrayList<Mensaje>();

        usuarios.add(usu1);
        usuarios.add(usu2);
        usuarios.add(usu3);
        usuarios.add(usu4);

        administradores.add(admi);
        
        mensajes.add(mensaje1);
        mensajes.add(mensaje2);
        mensajes.add(mensaje3);
        mensajes.add(mensaje4);

        guardarArrayListUsuairo(usuarios, fichero);
        guardarArrayListAdmi(administradores, ficheroAdmin);
        guardarArrayListMensajes(mensajes, ficheroMensajes);
    }
}
