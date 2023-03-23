import java.util.Scanner;

public class main {

    public static void main(String[] args) {
        
        Scanner sc =new Scanner(System.in);
        String A = sc.nextLine();
        String rev = new StringBuffer(A).reverse().toString();
		// System.out.println(A);
		// System.out.println(rev);
		if(A.equals(rev))
        {
            System.out.println("Yes");
        }       
        else
        {
            System.out.println("No");

        }
    }
}
