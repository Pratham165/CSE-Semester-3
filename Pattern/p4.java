public class p4 {
    public static void main(String[] args) {
        int a = 1;
        int b = 97;
        for (int i = 1; i <= 5; i++) {
            for (int j = 0; j < i; j++) {
                if (i % 2 == 0) {
                    System.out.print((char) b + " ");
                } else {
                    System.out.print(a + " ");
                }
                a++;
                b++;
            }
            System.out.println();
        }
    }
}
