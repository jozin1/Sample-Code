package Package1;

import java.awt.BasicStroke;
import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.FlowLayout;
import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.MouseEvent;
import java.awt.event.MouseListener;
import java.awt.event.MouseMotionListener;
import java.awt.geom.*;

import javax.swing.JButton;
import javax.swing.JColorChooser;
import javax.swing.JPanel;
import javax.swing.JSlider;
import javax.swing.JFrame;

public class Painter  extends JFrame  implements MouseListener,  
MouseMotionListener, ActionListener {

    private JButton clearButton; //Pole danych do przechowywania przycisku czyszczacego
    private JButton Rectangle;
    private JButton Oval;
    private JPanel menu;			//Pola do przechowywania menu, p³utna, suwaka, jego wartoœci domyœlnej
    private JPanel workspace;    
    private JSlider suwak;
    private int suwak_value = 10;
    private boolean start = false;
    private int lastX[] = new int[2];  //tablice na aktualn¹ i poprzedni¹ pozycjê kursora
    private int lastY[] = new int[2]; 
    private JButton colorMenu;		//menu kolorów i zmienna na kolor
    private Color Kolor = Color.blue;
    private int mode = 0; 	//0-normal, 1-rectangle, 2-oval
    private int i = 0;
    
    
    @Override
    public void actionPerformed(ActionEvent e) {
        // TODO Auto-generated method stub
        if(e.getSource() == clearButton) //Sprawdzenie czy zrodlem zdarzenia jest przycisk
        {
            //Czyszczenie pola roboczego
            workspace.getGraphics().clearRect(0, 0,
            workspace.getWidth(),
            workspace.getHeight());
        }
        if(e.getSource() == colorMenu) {
			Kolor = JColorChooser.showDialog(null, "Choose a color", Kolor);	//wyœwietlenie menu koloru
        }
        if(e.getSource() == Rectangle) {
			mode = 1;
        }
        if(e.getSource() == Oval) {
			mode = 2;
        }
        
    }

    //Rysowanie w momencie przeciagania myszy(Przycisniety przycisk + mysz w ruchu)
    @Override
    public void mouseDragged(MouseEvent e) {
        Graphics2D g = (Graphics2D) workspace.getGraphics();
        g.setStroke(new BasicStroke(suwak.getValue(), BasicStroke.CAP_ROUND, BasicStroke.CAP_ROUND));
        g.setPaint(Kolor);		//ustawienie stylu i koloru linii

        if(!start) 	//ustawianie pierwszego punktu na pocz¹tku rysowania
        {
            start = true;
            lastX[0] = e.getX();
            lastY[0] = e.getY();
            lastX[1] = e.getX();
            lastY[1] = e.getY();
        }
        			//aktualizacja punktów koñcowych linii i rysowanie
        lastX[1] = e.getX();
        lastY[1] = e.getY();
        g.drawLine(lastX[0], lastY[0], lastX[1], lastY[1]);
        lastX[0] = lastX[1];
        lastY[0] = lastY[1];
        
        e.consume();
        
    }
    

    @Override
    public void mouseMoved(MouseEvent arg0) {
        // TODO Auto-generated method stub
        
    }

    @Override
    public void mouseClicked(MouseEvent e) {
        
    	 
        if(mode == 1)
        {
        	Graphics2D g = (Graphics2D) workspace.getGraphics();
        	g.setPaint(Kolor);
        	
        	int tmp = e.getX();
        	tmp = e.getY();
        	
        	lastX[i%2] = e.getX();
            lastY[i%2] = e.getY();
            if (i%2 == 1)  				//rysowanie przy co drugim klikniêciu
            {
				if (lastX[0] < lastX[1] && lastY[0] < lastY[1]) {	//warunki dobrego u³o¿enia rysunku
					g.drawRect(lastX[0], lastY[0], lastX[1] - lastX[0], lastY[1] - lastY[0]);
				}
				
				if (lastX[0] > lastX[1] && lastY[0] > lastY[1]) {
					g.drawRect(lastX[1], lastY[1], lastX[0] - lastX[1], lastY[0] - lastY[1]);
				}
				
				if (lastX[0] < lastX[1] && lastY[0] > lastY[1]) {
					g.drawRect(lastX[0], lastY[1], lastX[1] - lastX[0], lastY[0] - lastY[1]);
				}
				
				if (lastX[0] > lastX[1] && lastY[0] < lastY[1]) {
					g.drawRect(lastX[1], lastY[0], lastX[0] - lastX[1], lastY[1] - lastY[0]);
				}
				
				mode = 0;
			}
			i = i+1;
            
        }
        
        if(mode == 2)
        {
        	Graphics2D g = (Graphics2D) workspace.getGraphics();
        	g.setPaint(Kolor);
        	
        	int tmp = e.getX();
        	tmp = e.getY();
        	
        	lastX[i%2] = e.getX();
            lastY[i%2] = e.getY();
            if (i%2 == 1) 				//rysowanie przy co drugim klikniêciu
            {
				if (lastX[0] < lastX[1] && lastY[0] < lastY[1]) {	//warunki dobrego u³o¿enia rysunku
					g.drawOval(lastX[0], lastY[0], lastX[1] - lastX[0], lastY[1] - lastY[0]);
				}
				
				if (lastX[0] > lastX[1] && lastY[0] > lastY[1]) {
					g.drawOval(lastX[1], lastY[1], lastX[0] - lastX[1], lastY[0] - lastY[1]);
				}
				
				if (lastX[0] < lastX[1] && lastY[0] > lastY[1]) {
					g.drawOval(lastX[0], lastY[1], lastX[1] - lastX[0], lastY[0] - lastY[1]);
				}
				
				if (lastX[0] > lastX[1] && lastY[0] < lastY[1]) {
					g.drawOval(lastX[1], lastY[0], lastX[0] - lastX[1], lastY[1] - lastY[0]);
				}
				
				mode = 0;
			}
			i = i+1;
            
        }
        
    }

    @Override
    public void mouseEntered(MouseEvent arg0) {
        // TODO Auto-generated method stub
        
    }

    @Override
    public void mouseExited(MouseEvent arg0) {
        
        
    }
//Rysowanie w momencie przycisniecia przycisku myszy
    @Override
    public void mousePressed(MouseEvent e) {	//jak wy¿ej ale dla pojedyñczego klikniêcia
        if (mode == 0) {
			Graphics2D g = (Graphics2D) workspace.getGraphics();
			g.setStroke(new BasicStroke(suwak.getValue(), BasicStroke.CAP_ROUND, BasicStroke.CAP_ROUND));
			g.setPaint(Kolor);
			g.drawLine(e.getX(), e.getY(), e.getX(), e.getY());
			e.consume();
		}
       
    }

    @Override
    public void mouseReleased(MouseEvent arg0) {
        start = false;		//wykrywanie koñca linii
        
    }
    
    
		

public Painter(int sz,int w){
    // Stworzenie interfejsu graficznego (GUI)
    this.setLayout(new BorderLayout()); // Ustawienie sposobu ukladania komponentow
    menu = new JPanel (); // Stworzenie panelu menu 
    menu.setLayout(new FlowLayout()); // Ustawienie layout dla tego panelu 
    menu.setBackground(Color.LIGHT_GRAY);//Ustawienie koloru tla
    clearButton = new JButton("Clear");
    menu.add(clearButton); //Dodanie przycisku do panelu menu 
    this.add(menu, BorderLayout.NORTH); // Dodanie menu na gorze okna 
    
    suwak = new JSlider (JSlider.HORIZONTAL, 1, 50, 10);
    suwak.setMajorTickSpacing(10);
    suwak.setMinorTickSpacing(1);
    menu.add(suwak); //Dodanie suwaka do panelu menu 
    
    
    workspace = new JPanel(); // Stworzenie panelu pola do rysowania
    //Dodanie obslugi zdarzen klikniecia i ruchu po panelu
    workspace.addMouseListener(this);
    workspace.addMouseMotionListener(this);
    this.add(workspace, BorderLayout.CENTER); // Dodanie pola do rysowania w srodku okna
    this.setSize(sz,w); //Ustawienie wymiarow okna 
    this.setTitle("Painter"); // Nazwa okna
    clearButton.addActionListener(this); // Aktywowanie obslugi przycisku 
    
    colorMenu = new JButton("Color");
	menu.add(colorMenu);
	colorMenu.addActionListener(this);
	
        
	Rectangle = new JButton("Prostok¹t");
    menu.add(Rectangle); //Dodanie przycisku do panelu menu 
    Rectangle.addActionListener(this);
    
    Oval = new JButton("Owal");
    menu.add(Oval); //Dodanie przycisku do panelu menu 
    Oval.addActionListener(this);
}

public void paint(Graphics g)
{
    //wywolanie metody paint klasy JFrame
    super.paint(g);
}

public static void main(String[] args)
{
    Painter paint = new Painter(800,500); // Ustawienia rozmiarow okna
    
    //Ustalenie operacji po kliknieciu na X
    paint.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
    paint.setVisible(true); // Ustawienie widocznosci okna
}

}
