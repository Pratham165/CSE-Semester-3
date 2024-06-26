import java.util.Scanner;
public class Duplicate {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter size of array:");
        int n = sc.nextInt();
        int a[] = new int[n];
        for (int i=0;i<n;i++){
            a[i] = sc.nextInt();
        }
        for(int i=0;i<n-2;i++){
            for(int j=i;j<n;j++){
                if(a[i]==a[j]){
                    System.out.println("Duplicate at:"+j);
                }
            }
        }
    }
}
