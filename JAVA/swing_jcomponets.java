// import javax.swing.*;
// import java.awt.event.*;

// public class swing_jcomponets extends JFrame implements ActionListener{

//     JLabel l ;
//     swing_jcomponets() {
//         JButton b = new JButton("click here");
//         l = new JLabel("HI guys");

//         b.setBounds(100, 100, 100, 30);
//         l.setBounds(100,50,100,30);
//         add(b);
//         add(l);
//         setSize(300,300);
//         setLayout(null);
//         setVisible(true);

//         b.addActionListener(this);

// JRadioButton b1 = new JRadioButton("C++");
// JRadioButton b2 = new JRadioButton("JAVA");
// b1.setBounds(75,50,100,30);    
// b2.setBounds(75,100,100,30);    
// ButtonGroup bg = new ButtonGroup();
// bg.add(b1);
// bg.add(b2);
// add(b1);
// add(b2);
//     }
//     @Override
//     public void actionPerformed(ActionEvent e){
//         l.setText("FUCK OFF GUYS");
//     }
//     public static void main(String args[]){
//         new swing_jcomponets();
//     }
// }

import javax.swing.*;

public class swing_jcomponets {
    JFrame f;

    swing_jcomponets() {
        f = new JFrame();
        String data[][] = { { "101", "Amit", "670000" },
                { "102", "Jai", "780000" },
                { "101", "Sachin", "700000" } };
        String column[] = { "ID", "NAME", "SALARY" };
        JTable jt = new JTable(data, column);
        jt.setBounds(30, 40, 200, 300);
        // JScrollPane sp = new JScrollPane(jt);
        // f.add(sp);
        f.add(jt);
        f.setSize(500, 600);
        f.setVisible(true);
    }

    public static void main(String[] args) {
        new swing_jcomponets();
    }
}
