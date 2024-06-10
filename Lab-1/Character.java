import java.util.Scanner;
public class Character {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter character to check:");
        char c = sc.next().charAt(0);
        if (c=='a'||c=='i'||c=='o'||c=='e'||c=='u') {
            System.out.println("The character is vowel..");
        }
        else{
            System.out.println("The character is not a vowel..");
        }
    }

}
