/*
    setEditable(true);
*/
import java.awt.Color;
import java.awt.Container;
import java.awt.Font;

import javax.swing.JComboBox;
import javax.swing.JFrame;
import javax.swing.JLabel;

public class JComboBox_1 extends JFrame{

    private Container c;
    private JComboBox jcb1;
    private Font f;
    private JLabel jl1;
    private String[] list = {"romjan","akhi","jamshed","sakib","jahid"}; //list 


    JComboBox_1(){
        initCompnents();
        setVisible(true);
        
        setDefaultCloseOperation(EXIT_ON_CLOSE);
        setBounds(100,100,400,500);
        setResizable(false);
        this.setResizable(true);


    }
    private void initCompnents(){

        setTitle("J Radio Button");
        setResizable(true);

        c = this.getContentPane();
        c.setLayout(null);
        c.setBackground(Color.BLACK);

        jcb1 = new JComboBox(list);
        jcb1.setBounds(280,20,80,30);
        jcb1.setBackground(Color.pink);
        jcb1.setForeground(Color.red);
        jcb1.setEditable(true);
        c.add(jcb1);

        jl1 = new JLabel();
        jl1.setText("hay kapil , who is your best friend !");
        jl1.setBounds(10,20,300,30);
        jl1.setForeground(Color.green);
        c.add(jl1);

    }
    public static void main(String[] args) {
        JComboBox_1 frame = new JComboBox_1();
    }
}

