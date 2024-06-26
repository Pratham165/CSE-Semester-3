import java.util.Scanner;
public class DeleteNumber {
public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);
           System.out.print("Enter size of array:");
        int n = sc.nextInt();
        int a[] = new int[n];
        for (int i = 0; i < n; i++) {
            a[i] = sc.nextInt();
        }
        System.out.print("Enter position to delete:");
        int del = sc.nextInt();
        int b[] = new int[n-1];
        for (int i = 0; i < a.length; i++) {
            if (i < del) {
                b[i] = a[i];
            } else if (i == del) {
                continue;
            }
            else if(del<i){
                b[i-1] = a[i];
            }
        
        }
        for (int i = 0; i < b.length; i++){
            System.out.println(b[i]);
        }
}
}

