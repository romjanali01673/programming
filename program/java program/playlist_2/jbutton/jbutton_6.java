/*
# creat a login page 
*/
     
import java.awt.Color;
import java.awt.Container;
import java.awt.Font;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPasswordField;
import javax.swing.JTextField;

public class jbutton_6 extends JFrame{
    private Container c;
    private JButton button_1, button_2; 
    private JTextField tf1;
    private JPasswordField tf2 ;
    private JLabel jl1, jl2,jl3 ;
    private Font f,f20;

    jbutton_6(){
        initcomponent();

    }
    public void initcomponent(){

        
//  container --------------------------------
        c = this.getContentPane();
        c.setLayout(null);
        c.setBackground(Color.BLACK);
//  font ------------------------------------------------
        f = new Font("arial",Font.BOLD,14);
        f20 = new Font("arial",Font.BOLD,20);
//  JLabel------------------------------------------------------
        jl1 = new JLabel();
        jl1.setText("USER NAME : ");
        jl1.setBounds(10,10,100,20);
        jl1.setForeground(Color.WHITE);
        jl1.setFont(f);
        c.add(jl1);

        jl2 = new JLabel();
        jl2.setText("USER NAME : ");
        jl2.setBounds(10,50,100,20);
        jl2.setForeground(Color.WHITE);
        jl2.setFont(f);
        c.add(jl2);

        jl3 = new JLabel();
        jl3.setText("enter your user name & pass and hit the submit button!");
        jl3.setBounds(50,100,400,20);
        jl3.setForeground(Color.WHITE);
        jl3.setFont(f);
        jl3.setHorizontalAlignment(JTextField.CENTER);
        c.add(jl3);
//  JTextfild ----------------------------
        tf1 = new JTextField();
        tf1.setBounds(300,10,150,20);
        tf1 .setFont(f);
        c.add(tf1);

        tf2 = new JPasswordField();
        tf2.setFont(f20);
        tf2.setEchoChar('*');
        tf2.setHorizontalAlignment(JTextField.CENTER);
        tf2.setBounds(300,55,150,20);
        c.add(tf2);

//  JButton----------------------------------------
        button_1 = new JButton("clear");
        button_1.setBounds(100,200,100,20);
        c.add(button_1);

        button_2 = new JButton("Submit");
        button_2. setBounds(210,200,100,20);
        c.add(button_2);

//  ActionListener---------------------------------------------
        button_1.addActionListener(new ActionListener() {
            public void actionPerformed( ActionEvent e){
                tf1.setText("");
                tf2.setText("");
                jl3.setText("you have clered! ");
            }
        });

        button_2.addActionListener(new  ActionListener(){
            public void actionPerformed(ActionEvent e ){
                jl3.setText("you have successfully submited your info!");

        }
        });
    }

    public static void main(String[] args) {
        jbutton_6 frame =new jbutton_6();
        frame.setVisible(true);
        frame.setDefaultCloseOperation(EXIT_ON_CLOSE);
        frame.setTitle("romjanali01673");
        frame.setBounds(100,100,500,500);

    }
}
