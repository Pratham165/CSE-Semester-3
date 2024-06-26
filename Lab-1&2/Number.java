import java.util.Scanner;

public class Number {
    public static void main(String[] args) {
        int n;
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter number to check:");
        n = sc.nextInt();
        if (n % 2 == 0) {
            System.out.print("Number is even...");
        } else {
            System.out.println("Number is odd...");
        }
    }
}
