import java.util.*;
public class FacRec {
  public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);
    System.out.print("Enter number : ");
    int n = sc.nextInt();
    int fact = fact(n);
    System.out.println("Factorial of "+n+" is "+fact);
  }
    
  public static int fact(int n) {
    if(n==0) {
      return 1;
    }
    else {
      return n*fact(n-1);
    }
  }
}