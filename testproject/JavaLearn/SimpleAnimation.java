import javax.swing.*;
import java.awt.*;

public class SimpleAnimation{

	int x = 5;
	int y = 70;
	int constantx = 1, constanty = 1;	

	public static void main (String[] args){
		SimpleAnimation gui = new SimpleAnimation();
		gui.go();
	}
	
	public void go(){
	
		JFrame frame = new JFrame();
		frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		
		MyDrawPanel drawPanel = new MyDrawPanel();

		frame.getContentPane().add(drawPanel);
		frame.setSize(328,573);
		frame.setVisible(true);

		while (true){
		
			x+=constantx;
			y+=constanty;
			
			if (x == 288|| x == 0){
				constantx = -constantx;
			}
			if (y == 513|| y == 0){
				constanty = -constanty;
			}

			drawPanel.repaint();

			try{
				Thread.sleep(10);
			}catch(Exception ex){}
		}
	}
	
	class MyDrawPanel extends JPanel{
		public void paintComponent (Graphics g){
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

			g2d.fillOval(x,y,40,40);
		}
	}

}
