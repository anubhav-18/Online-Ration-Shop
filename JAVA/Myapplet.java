// import java.awt.*;
// import java.applet.*;
// import java.awt.event.*;
// import javax.swing.*;
// import javax.swing.plaf.metal.MetalBorders.TextFieldBorder;

// public class Myapplet extends JApplet implements ActionListener {
//     Myapplet(){
//         TextField tf1 = new TextField("FIRST NUMBER:");
//         TextField tf2 = new TextField("SECOND NUMBER:");
//         TextField tf3 = new TextField("THIRD NUMBER:");
//         TextField tf4 = new TextField("FOURTH NUMBER:");
//         TextField tf5 = new TextField("FIVETH NUMBER");
//         TextField tf6 = new TextField("ANSWER");
//         Label l1 = new Label();
//         Label l2 = new Label();
//         Label l3 = new Label();
//         Label l4 = new Label();
//         Label l5 = new Label();
//         Label l6 = new Label();
//         Button b1  = new Button("SUM");
//         Button b2 = new Button("AVERAGE");


//     }
// }

import java.awt.*;  
import java.awt.event.*;  
import java.applet.*;  
public class Myapplet extends Applet implements ActionListener  
{  
    TextField t1 = new TextField(10);  
    TextField t2 = new TextField(10);  
    TextField t3 = new TextField(10);  
    Label l1 = new Label("FIRST NO=:");  
    Label l2 = new Label("SECOND NO:");  
    Label l3 = new Label("SUM:");  
    Button b = new Button("ADD");  
    public void init()  
    {  
        add(l1);  
        add(t1);  
        add(l2);  
        add(t2);  
        add(l3);  
        add(t3);  
        add(b);  
        b.addActionListener(this);  
    }  
    public void actionPerformed(ActionEvent e)  
    {  
        if (e.getSource() == b)  
        {  
            int n1 = Integer.parseInt(t1.getText());  
            int n2 = Integer.parseInt(t2.getText());  
            t3.setText(" " + (n1 + n2));  
        }  
    }  
}  