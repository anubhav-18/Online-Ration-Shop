import java.util.Scanner;

// public class scanner {

//     public static void main(String args[]){

//         Scanner scan = new Scanner(System.in);
//         int id = scan.nextInt();

//         int a = id + 5 ;
//         System.out.println(a);

//     }
// }


public class scanner{
    public static void main(String args[]){
        Scanner scan = new Scanner(System.in);
        int marks = scan.nextInt();

        switch(marks){
            case 20 :
                System.out.println("20");
                break;
            case 40 :
                System.out.println("40");
                break;
            case 60 :
                System.out.println("60");
                break;
        }
    }
}