import java.util.Scanner;
public class Power {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int pow = 1;
        System.out.print("Enter value of base x:");
        int x = sc.nextInt();
        System.out.print("Enter value of power y:");
        int y = sc.nextInt();
        for(int i=0;i<y;i++){
            pow*=x;
        }
        System.out.print(pow);        
    }
}
