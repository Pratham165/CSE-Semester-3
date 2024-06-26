import java.util.Scanner;
public class Sum {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int sum=0;
        System.out.print("Enter value of m:");
        int m = sc.nextInt();
        System.out.print("Enter value of n:");
        int n = sc.nextInt();
        for(int i=m;i<=n;i++){
            sum+=i;
        }
        System.out.println(sum);
    }    
}
