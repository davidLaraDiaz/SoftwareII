package Logic;


import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author DavidLenovo
 */
public class ConexionO {
    
    private String usuario="bd_monisistem";
    private String clave="moni1234";
    private String url="jdbc:oracle:thin:@localhost:1521:XE";
    private Connection conexion;
    private Statement stm;


    public ConexionO() {
        try {
            DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
            conexion=DriverManager.getConnection(url, usuario, clave);
            stm= conexion.createStatement();
        } catch (SQLException ex) {
            Logger.getLogger(ConexionO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
       
   
    
    public String[] validarMonitor(String id, String llave){
        String[] valida=new String[2];
        try {
            
            ResultSet res= stm.executeQuery("select * from monitor where codigo="+id+" and clave='"+llave+"'");
         
            if(res.next()){
                   valida[0]=res.getString(3);
                   int tipo=Integer.parseInt(res.getString(1));
                   
                   if(tipo < 1000){
                       valida[1]="Noticias";
                   }else if(tipo >= 1000 && tipo < 2000) {
                       valida[1]="Programacion Basica";
                   }else if(tipo >= 2000 && tipo < 3000) {
                       valida[1]="Programacion Avanzada";
                   }else if(tipo >= 3000 && tipo < 4000) {
                       valida[1]="Redes";
                   }else if(tipo >= 4000 && tipo < 5000) {
                       valida[1]="Bases De Datos";
                   }else{
                       valida[1]="No definido->"+tipo;
                   }
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(ConexionO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return valida;
    }
    
    public String validarEstudiante(String id, String pass){
        String valida=null;
        try {
            
            ResultSet res= stm.executeQuery("select * from estudiante where codigo="+id+" and clave='"+pass+"'");
            if(res.next()){
                valida=res.getString(2);
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(ConexionO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return valida;
    }
    
    public String getMyArea(String tipo){
        String valida="";
        try {
            
            ResultSet res= stm.executeQuery("select * from "+tipo+" order by fecha desc");
            while(res.next()){
                valida="<br><h4>"+res.getString("titulo")+"</h4>";
                valida+="<figcaption>"+res.getString("autor")+"</figcaption>";
                valida+="<p style='text-aling:justify;'>"+res.getString("contenido")+"</p>";
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(ConexionO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return valida;
    }
    
    public void cerrarConexion(){
        try {;
            conexion.close();
        } catch (SQLException ex) {
            Logger.getLogger(ConexionO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
}
