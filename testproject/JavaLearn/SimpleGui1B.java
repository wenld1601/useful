import javax.swing.*;
import java.awt.event.*;

public class SimpleGui1B implements ActionListener{
	JButton button;	
	static int countClick = 0;	

	public static void main(String[] args){
		SimpleGui1B gui = new SimpleGui1B();
		gui.go();
	}
	
	public void go(){
		JFrame frame = new JFrame();
		button = new JButton("Click me");
		
		button.addActionListener(this);

		frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		frame.getContentPane().add(button);
		frame.setSize(300,300);
		frame.setVisible(true);
	}
	
	public void actionPerformed(ActionEvent event){
		countClick++;
		if (countClick <= 1){
			button.setText("I've been clicked " + countClick + " time");
		}else{
			button.setText("I've been clicked " + countClick + " times");
		}
	}
}
