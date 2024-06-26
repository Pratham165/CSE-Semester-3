import java.util.Scanner;
public class Compare {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter size of array:");
        int n = sc.nextInt();
        int a[] = new int[n];
        for(int i=0;i<n;i++){
            System.out.print("Enter number in array");
            a[i] = sc.nextInt();
        }
        int Smallest = a[0];
        int Largest = a[0];
        int sp = 0;
        int lp = 0;
        for(int i=0;i<a.length;i++){
            if(a[i]<Smallest){
                Smallest = a[i];
                sp = i;
            }
            else if(a[i]>Largest){
                Largest = a[i];
                lp = i;
            }
        }
        System.out.println("Small posi:"+sp+"Large posi:"+lp);
    }
}
