import java.util.*;

public class Anagram {
    public static void main(String[] args) {
        Double index;
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter size of string array:");
        int n = sc.nextInt();
        System.out.println("Enter string array:");
        String a[] = new String[n];
        for (int i = 0; i < n; i++) {
            a[i] = sc.next();
        }
        Random r = new Random();
        
            index = r.nextDouble(Math.random());
            int m = index.intValue();
        
        String b = a[m];
        System.out.println("Anagram of " + b + " is:");
        String anagram = sc.next();
        
    }
}

