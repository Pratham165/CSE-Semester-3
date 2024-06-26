import java.util.*;

public class MatMulti {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int a[][] = new int[3][2];
        int b[][] = new int[2][3];
        int c[][] = new int[3][3];
        int sum = 0;
        System.out.print("Enter elements of first matrix : ");
        for (int i = 0; i < 3; i++) {
            for (int j = 0; j < 2; j++) {
                a[i][j] = sc.nextInt();
            }
        }
        System.out.print("Enter elements of second matrix : ");
        for (int i = 0; i < 2; i++) {
            for (int j = 0; j < 3; j++) {
                b[i][j] = sc.nextInt();
            }
        }
        for (int i = 0; i < 3; i++) {
            for (int j = 0; j < 3; j++) {
                for (int k = 0; k < 2; k++) {
                    sum += a[i][k] * b[k][j];
                }
                c[i][j] = sum;
            }
        }
        System.out.print("Multiplication of two matrices : ");
        for (int i = 0; i < 3; i++) {
            for (int j = 0; j < 3; j++) {
                System.out.print(c[i][j] + " ");
            }
        }
    }
}
