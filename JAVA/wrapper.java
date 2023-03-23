public class wrapper {
    public static void main(String args[]){
        //AUTO-BOXING
        int a = 10 ;
        Integer i = Integer.valueOf(a);
        Integer j = i ; 
        System.out.println(a +" " + i + " " + j);

        char c = 'a' ;
        Character w = Character.valueOf(c);
        Character q = w ;

        Character s = new Character('b');
        char d = s.charValue();

        Integer b = new Integer(15);
        int k = b.intValue();
        int m = k ;
        System.out.println(b +" "+k+" "+m);

    }
}
