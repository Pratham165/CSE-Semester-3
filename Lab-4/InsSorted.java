import java.util.Scanner;
public class InsSorted {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter size of array : ");
        int n = sc.nextInt();
        System.out.print("Enter elements of array : ");
        int a[] = new int[n];
        for (int i = 0; i < n; i++) {
            a[i] = sc.nextInt();
        }
        System.out.print("Enter number to be inserted:");
        int num = sc.nextInt();
        int i=0;
        int b[] = new int[n+1];
        while (num>a[i]&&i<b.length) {
            b[i] = a[i];
            i++;
        }
        b[i] = num;
        i++;
        while (i<b.length) {
            b[i] = a[i-1];
            i++;
        }
        System.out.print("Array with inserted number : ");
        for (int j = 0; j < b.length; j++) {
            System.out.print(b[j] + " ");
        }
    }
}
