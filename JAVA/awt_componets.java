import java.awt.*;
import java.awt.event.*;

public class awt_componets extends Frame {
    
    awt_componets(){
        Button b = new Button();
        TextField tf = new TextField();
        Label l = new Label();
        Checkbox cb  = new Checkbox();
        TextArea ta = new TextArea();
        List list = new List();
        Choice ch = new Choice();


        b.setBounds(20,30,50,30);
        tf.setBounds(30,50,80,30);
        l.setBounds(40,70,50,30);
        cb.setBounds(50,90,70,50);
        ta.setBounds(60,110,80,50);
        list.setBounds(70,130,50,30);
        ch.setBounds(80,150,50,30);

        add(b);add(tf);add(l);add(cb);add(ta);add(list);add(ch);

        setSize(100,100);
        setLayout(null);
        setVisible(true);
    }

    public static void main(String args[]){
        new awt_componets();
    }
}
