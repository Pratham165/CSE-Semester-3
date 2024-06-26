
import java.util.Scanner;

public class InsertNumber {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter size of array:");
        int n = sc.nextInt();
        int a[] = new int[n];
        for (int i = 0; i < a.length; i++) {
            System.out.println("Enter number:");
            a[i] = sc.nextInt();
        }
        System.out.print("Enter number to be inserted:");
        int chng = sc.nextInt();
        System.out.print("Enter position to insert:");
        int ind = sc.nextInt();
        int b[] = new int[n + 1];
        for (int i = 0; i < a.length; i++) {
            if (i < ind) {
                b[i] = a[i];
            } else if (i == ind) {
                b[i] = chng;
            }
            else if(ind<i){
                b[i] = a[i - 1];
            }
            System.out.print("Array with Inserted element"+b[i]);
        }
    }
}