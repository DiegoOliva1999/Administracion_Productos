package consultaproductos;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.swing.JOptionPane;

public class Conexion {
    
    public static Connection obtenerConexion(){
                        //jdbc:sqlserver://DESKTOP-D8N23G7\\SQLEXPRESS:1433;databaseName=Inventario;IntegratedSecurity=true
        String cadena = "jdbc:sqlserver://DESKTOP-D8N23G7\\SQLEXPRESS:1433;database=SUPERMERCADO;user=sa;password=12345;loginTimeout=15;";
        try{
            //Almacenar en la variable la conexion de sql server
            Connection con = DriverManager.getConnection(cadena);
            //JOptionPane.showMessageDialog(null, "Conexion exitosa");
            return con;
        }
        catch(SQLException ex){
            System.out.println("Error de Conexion: \n" + ex.getMessage());
            JOptionPane.showMessageDialog(null, "Conexion Fallida: " + ex.getMessage());
            return null;
        }
    }
}
