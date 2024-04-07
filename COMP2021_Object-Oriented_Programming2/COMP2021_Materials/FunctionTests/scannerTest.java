import java.util.Scanner;

public class scannerTest {
    public static void main(String[] args) {
        Scanner s = new Scanner(System.in);

        String str1 = "";
        if (s.hasNext()) {
            str1 = s.next();
        }
        s.close();

        if (str1.compareTo("1") >= 0) {
            System.out.println("Today, I ate " + str1 + " apple.");
        } else {
            System.out.println("Today, I ate " + str1 + " apples.");
        }
    }
}