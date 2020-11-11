/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Prueba;

import java.util.Scanner;
import javax.swing.JOptionPane;

/**
 *
 * @author anita
 */
public class PruebaClass {
    
     
    
    public static void comparaNum (){
    String num = JOptionPane.showInputDialog("Introduce un número");
    int num1 = Integer.parseInt(num);
    String n = JOptionPane.showInputDialog("Introduce un segundo número");
    int num2 = Integer.parseInt(n);
   
        if (num1 > num2){
            System.out.println("El primer número es mayor que el segundo");
        }else{
            System.out.println("El segundo número es mayor que el primero");
        }
    }
    
    
    public static void numPar(){
        String num = JOptionPane.showInputDialog("Introduce un número");
        int num1 = Integer.parseInt(num);
        
        if(num1 % 2 == 0){
             System.out.println("El número es par");
        }else{
             System.out.println("El número es par");
        }

    }
    
    public static void elNumMayor(){
        String num = JOptionPane.showInputDialog("Introduce un número");
        int num1 = Integer.parseInt(num);
        num = JOptionPane.showInputDialog("Introduce un segundo número");
        int num2 = Integer.parseInt(num);
        num= JOptionPane.showInputDialog("Introduce un tercer número");
        int num3 = Integer.parseInt(num);
        
        if (num1 > num2 && num1 > num3){
            System.out.println("El número mayor es: " + num1);
        }else{
            if(num2 > num3){
                System.out.println("El número mayor es: " + num2);
            }else{
                System.out.println("El número mayor es: " + num3);
            }
        }
        
        
    }
    
    public static void elNumEsCero(){
        float num;
        do {            
            num = Math.round(Math.random()* 10);
            System.out.println("El número es: " + num);
        } while (num != 0);
    }
    
    public static void sumaOchoNum(){
        int i;
        int suma = 0;
        for (i = 0; i < 8; i++) {
            String str = JOptionPane.showInputDialog("Introduce un número");
            int num = Integer.parseInt(str);
            suma = suma + num;
        }
        System.out.println("La suma de los número es: " + suma);
    }
    
    public static void multiplosDeTres(){
        for(int i = 1; i <= 3000; i++){
            if (i % 3 == 0){
                System.out.println("El número " + i + " es múltiplo de 3");
            }
        }
    }
    
    public static void calcularMedia(){
        int contador = 0;
        int num;
        float suma = 0;
        float acumula = 0;
        float media = 0;
        
        do {            
            num = (int) Math.round(Math.random() * 100);
            contador ++;
            System.out.println("El número " + contador + " vale: " + num);
            suma = suma + num;
            acumula = suma;
            System.out.println("La suma vale: " + acumula);
            //media = acumula / contador;
            //System.err.println("La media es: " + media);
            System.out.println("");
        } while (num != 0);
         media = (acumula / contador - 1);
         System.out.println("Numero de iteraciones: " + (contador - 1));
         System.out.println("La media es: " + media);
    }
    
    public static void calcularFactorial(){
        int num = 0;
        Scanner scan = new Scanner (System.in);
        System.out.println("Introduce un número entero");
        num = scan.nextInt();
         int factorial = num;
        
     for (int i = num - 1 ; i > 1; i--){
         factorial *= i;
     }
        System.out.println("El factorial del número " + num + " vale: " + factorial);
    }
    
    public static void comparaNumerosTeclado(){
        int num = 0, mayor = 0, menor = 1000000000;
        Scanner scan = new Scanner (System.in);
        
        do {            
            System.out.println("Introduce un número entero positivo distinto de 0");
            num = scan.nextInt();
           // numAnt = num;
            if ( num > mayor){
                mayor = num;
            }
            if ( num != 0 && num < menor){
                menor = num;
            }
        } while (num !=0 && num > 0);
         System.out.println("El número mayor es: " + mayor);
         System.out.println("El número menor es: " + menor);

        
        
    }
    
    public static void kk(){
        for (int i = 0; i < 10; i++) {
            int num = (int) Math.round(Math.random() * 100);
            System.out.println("En la iteración " + (i + 1) + " el número es: " + num);
        }
    }
    
 
    
    
    
    public static void main(String[] args) {
        //comparaNum();
        //numPar();
        //elNumMayor();
        //elNumEsCero();
        //sumaOchoNum();
        //multiplosDeTres();
        //calcularMedia();
        //calcularFactorial();
        //comparaNumerosTeclado();
        kk();
        
    }
    
}
