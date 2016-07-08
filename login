package Vista;

import java.awt.Container;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPasswordField;
import javax.swing.JTextField;
/**
 * 
 * @author stephaniie
 *
 */
public final class VtnLoginSingleton extends JFrame implements ActionListener{

	private static final VtnLoginSingleton login=new VtnLoginSingleton();
	
	 private JLabel lbusuario,lbcontraseña ;  
	 private JTextField txtusuario;    
	 private JPasswordField contraseña;   
	 private JButton btnIniciarSesion;
	 private JButton btnRegistrar;
	 private Container c=getContentPane();
	 


	 public  VtnLoginSingleton() {
		 	super.setTitle("Inicio de sesion");
			super.setSize(350,300);
			super.setDefaultCloseOperation(EXIT_ON_CLOSE);
			cargarControles();
	 }
	 
	private void cargarControles(){                      
		 c.setLayout(null);
		 
		//CREAR ETIQUETA Y CAMBIAR ATRIBUTOS     
		 lbusuario=new JLabel("USUARIO");           
		 lbusuario.setBounds(20,10,150,30);        
		 c.add(lbusuario);
		 
		 //CREAR CAMPO DE TEXTO Y COLOCAR EN POSICION       
		 txtusuario=new JTextField(15);       
		 txtusuario.setBounds(150,10,150,30);     
		 c.add(txtusuario);                   
		 
		 //CREAR ETIQUETA Y CAMBIAR ATRIBUTOS         
		 lbcontraseña=new JLabel("CONTRASEÑA");                  
		 lbcontraseña.setBounds(20,60,150,30);         
		 c.add(lbcontraseña);         
		 
		 //CREAR CAMPO DE TEXTO Y COLOCAR EN POSICION         
		 contraseña=new JPasswordField(15);         
		 contraseña.setBounds(150,60,150,30);         
		 c.add(contraseña);             
		 
		 //CREAR BOTON Y CAMBIAR ATRIBUTOS         
		 btnIniciarSesion  =  new JButton ("INICIAR SESION");                
		 btnIniciarSesion.setBounds(20,120,130,30);
		 c.add(btnIniciarSesion);  
		 setVisible(true); 
		 btnIniciarSesion.addActionListener(this);
		 
		 btnRegistrar  =  new JButton ("REGISTRARSE");                
		 btnRegistrar.setBounds(160,120,130,30);
		 c.add(btnRegistrar);                   
		 setVisible(true); 
		 btnRegistrar.addActionListener(this);
		 
		 //AQUI SE AGREGA EL EVENTO DEL BOTON DIRECTAMENTE         
		 }
	public void actionPerformed(ActionEvent e) {
		if (e.getSource()==btnIniciarSesion) {
			
			VtnMensajePull pull=  VtnMensajePull.instanciaSingleton();
			pull.setVisible(true);
			
		}if (e.getSource()==btnRegistrar) {
			String nombre=txtusuario.getText();
			VtnMensajePull pull=  VtnMensajePull.instanciaSingleton();
			pull.setVisible(true);
		}
		
	}
	
	public static VtnLoginSingleton instanciaSingleton (){
		return login;
	}

}
