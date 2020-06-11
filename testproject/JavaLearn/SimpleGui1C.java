import javax.swing.*;
import java.awt.*;
import java.awt.event.*;

public class SimpleGui1C implements ActionListener{
	
	JFrame frame;
	JLabel label;

	public static void main (String[] args){
		SimpleGui1C gui = new SimpleGui1C();
		gui.go();
	}	

	public void go(){
	
		frame = new JFrame();
		frame.setDefaultCloseOperation (JFrame.EXIT_ON_CLOSE);
		

		JButton labelButton = new JButton("Change Label");
		labelButton.addActionListener (new LabelListener());

		JButton colorButton = new JButton("Change colors");
		colorButton.addActionListener(new ColorListener());
		
		label = new JLabel ("I'm a Label");
		MyDrawPanel drawPanel = new MyDrawPanel();
		
		frame.getContentPane().add(BorderLayout.SOUTH, colorButton);
		frame.getContentPane().add(BorderLayout.CENTER, drawPanel);
		frame.getContentPane().add(BorderLayout.EAST, labelButton);
		frame.getContentPane().add(BorderLayout.WEST, label);

		frame.setSize(300,300);
		frame.setVisible(true);
		
	}
	
	public void actionPerformed (ActionEvent event){
		frame.repaint();
	}

	class LabelListener implements ActionListener{
		public void actionPerformed (ActionEvent event){
			label.setText("Ouch!");
		}
	}	
	
	class ColorListener implements ActionListener{
		public void actionPerformed (ActionEvent event){
			frame.repaint();
		}
	}

}

class MyDrawPanel extends JPanel{
	public void paintComponent(Graphics g){
		Graphics2D g2d = (Graphics2D) g;
		
		int red = (int) (Math.random() * 255);
		int blue = (int) (Math.random() * 255);
		int green = (int) (Math.random() * 255);
		Color startColor = new Color(red,green,blue);
	
		red = (int) (Math.random() * 255);
                blue = (int) (Math.random() * 255);
                green = (int) (Math.random() * 255);
                Color endColor = new Color(red,green,blue);

		GradientPaint gradient = new GradientPaint(70,70,startColor,150,150,endColor);
		g2d.setPaint(gradient);
		g2d.fillOval(70,70,100,100);
	}
}
