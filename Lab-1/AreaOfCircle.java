import java.util.Scanner;

public class AreaOfCircle {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int r;
        double A;
        System.out.print("Enter Radius of circle:");
        r = sc.nextInt();
        A = Math.PI * r * r;
        System.out.println(A);
    }
}