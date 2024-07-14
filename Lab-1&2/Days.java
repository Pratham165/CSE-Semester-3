// WAP to convert number of days into year, week & days [e.g. 375 days mean 1 year, 1 
// week and 3 days]
import java.util.*;
public class Days {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter days:");
        int d = sc.nextInt();
        int yr = d/365;
        int wk = (d%52)/7;
        d = d%7;
        System.out.print("Year: "+yr+" Week: "+wk+" Days: "+d);
    }
}
