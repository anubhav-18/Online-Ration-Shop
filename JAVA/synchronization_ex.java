class table {
    synchronized static void printtable(int n){
        for(int i = 1 ; i<=10 ; i++){
            System.out.println(n*i);
            try{
                Thread.sleep(500);
            }
            catch(Exception e){
                System.out.println(e);
            }
        }
    }
}

class Thread1 extends table {
    table t ;
    Thread1(table t){
        this.t = t;
    }
    public void run(){
        t.printtable(10);
    }
}


class Thread2 extends table{
    table t2 ;
    Thread2(table t2){
        this.t2 =t2 ;
    }
    public void run(){
        t2.printtable(20);
    }
}

public class synchronization_ex {

    public static void main(String args[]){

        table o = new table();
        Thread1 t1 = new Thread1(o);
        Thread2 t2 = new Thread2(o);

        t1.start();
        t2.start();
    }

}
