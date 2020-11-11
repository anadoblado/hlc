/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Ejercicio;

import java.util.ArrayList;
import java.util.Iterator;

/**
 *
 * @author anita
 */
public class Main {

    private static boolean Mafioso;
    
    
    public static void main(String[] args) {
        
        ArrayList<Mafioso> corruptos = new ArrayList<>();
        
        Sicario maton = new Sicario("Manu", "Pistolero", "Los matones", 45, 0, true);
        corruptos.add(maton);
        
        
        Soplon soplon1 = new Soplon("Juan", "Guan", "La banda del patio", 56, 3, true);
        corruptos.add(soplon1);
        Soplon soplon2 = new Soplon("Antonio", "Toni", "La banda del patio", 50, 2, true);
        soplon1.ejecutado(maton);
        corruptos.add(soplon2);
        
        Capo capo1 = new Capo ("AlCapone", "Capo", "La banda del patio", 60, 5, true);
        corruptos.add(capo1);
        
        Traficante traficante1 = new TraficanteDrogas("Manolin", "Lolito", "Los trapis", 23, 4, true);
        corruptos.add(traficante1);
        Traficante traficante2 = new TraficanteDrogas("Jesus", "yesu", "Los trapis", 24, 6, false);
        corruptos.add(traficante2);
        
        Sicario sicario1 = new Sicario("Maton", "chungo", "Los matones", 45, 1, true);
        corruptos.add(sicario1);
        
        //System.out.println("Hay " + corruptos.toString());
       
        
        Iterator it = corruptos.iterator();
        
        
        while(it.hasNext()){
            Mafioso m =(Mafioso) it.next();
            m.aLaTrena();
            System.out.println(m.toString());
            System.out.println();
        }
        
        /*
        if (soplon1.estaVivo){
            soplon1.aLaTrena();
            System.out.println( soplon1.nombre + " va a la carcel " + soplon1.aLaTrena() + " años");
            
        }
        
        for (Mafioso corrupto : corruptos){
            if (corrupto.estaVivo == true){
                System.out.println( corrupto.nombre + " va a la carcel " + corrupto.aLaTrena() + " meses");
            }
            if (corrupto.estaVivo == false){
                System.out.println( corrupto.nombre + " ha sido asesinado por " + corrupto.getNombreEjecutor());
            }
        }
*/
        System.out.println("El corrupto " + capo1.getApodo() + " a la carcel " + capo1.aLaTrena() + " meses");
        
    }
    
}
