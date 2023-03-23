import javax.swing.*;
import java.awt.*;

public class layoutmanager extends JFrame{
    layoutmanager() {

        JButton b1 = new JButton("1");    
        JButton b2 = new JButton("2");    
        JButton b3 = new JButton("3");    
        JButton b4 = new JButton("4");    
        JButton b5 = new JButton("5");  
        // JButton b6 = new JButton("6");    
        // JButton b7 = new JButton("7");    
        // JButton b8 = new JButton("8");    
        // JButton b9 = new JButton("9");    
        // JButton b10 = new JButton("10");    

        setLayout(new BorderLayout(20,15));
        // add(b1,BorderLayout.NORTH);
        // add(b2,BorderLayout.SOUTH);
        // add(b3,BorderLayout.EAST);
        // add(b4,BorderLayout.WEST);
        // add(b5,BorderLayout.CENTER);
        add(b1);add(b2);add(b3);add(b4);add(b5);
        // add(b6);add(b7);add(b8);add(b9);add(b10);

        
        setSize(500,500);
        setVisible(true);
    }

    public static void main(String args[]){
        new layoutmanager();
    }
}
