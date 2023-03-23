abstract class Bike{
    Bike(){
        System.out.println("Bike is running");
    }
    abstract void run();

    void changeGear(){
        System.out.println("Gear changed");
    }
}

class Honda extends Bike {

    public void run(){
        System.out.println("Running safetly :");
    }
}

public class abstract_ex {
    public static void main(String args[]){
        Bike b = new Honda();
        b.run();
        b.changeGear();

    }
    
}
