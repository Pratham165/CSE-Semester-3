import java.util.Scanner;
public class Average {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int sum = 0;
        System.out.print("Enter number to find avg:");
        int n = sc.nextInt();
        for(int i=1;i<=n;i++){
            sum+=i;
        }
        System.out.println("Avg is:"+(sum/n));
    }
}
