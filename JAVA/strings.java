public class strings {
    
    public static void main(String[] args){
        String s1 = "ANUBHAV";
        String s2 = "BINDAL";
        String s3 = "anubhav";
        String s4 = new String("ANUBHAV");
        String s5 = new String("anubhav");
        String s6 = "RATANAN" ;

        // ==
        // compareTo
        // EqualTo()
        System.out.println("THIS IS EQUALS() METHOD: ");
        System.out.println(s1.equals(s2));//false
        System.out.println(s1.equals(s3));//false
        System.out.println(s1.equals(s4));//true
        System.out.println(s1.equals(s5));//false

        System.out.println("THIS IS == METHOD:");
        System.out.println(s1==s2);//true
        System.out.println(s1==s3);//true
        System.out.println(s1==s4);//false
        System.out.println(s4==s5);//true
        System.out.println(s6==s2);//true
        System.out.println(s1==s6);//true

        System.out.println("THIS IS COMPARETO() METHOD: ");
        System.out.println(s1.compareTo(s2));//1
        System.out.println(s1.compareTo(s3));//0
        System.out.println(s1.compareTo(s4));//0
        System.out.println(s1.compareTo(s5));//0
        System.out.println(s1.compareTo(s6));//-1
    }
    
}