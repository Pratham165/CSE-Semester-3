import java.util.Scanner;

public class Temp {
    
    static void Cal(){
        Scanner sc= new Scanner(System.in);
        System.out.println("Enter the temperature in Celsius: ");
        double celsius = sc.nextDouble();
        double fahrenheit = (celsius * 9/5) + 32;
        System.out.println("Temperature in Fahrenheit: " + fahrenheit);
        celsius  = ((fahrenheit-32)*5)/9;  
          System.out.println("Temperature in celsius is: "+celsius);
     }     
   public static void main (String args[])  
    { 
        Cal();
    }  
}