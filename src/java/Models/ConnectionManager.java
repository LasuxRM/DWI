package Models;



import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.*;

public class ConnectionManager {
    private static String url="jdbc:mysql://localhost/pruebaug";
    private static String user="root";
    private static String password="";
    private static Connection conn;
    
    public static Connection getConnection(){
        
        conn=null;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(url,user,password);
            System.out.println("Conexión a la base de datos exitosa");
            
        }catch(SQLException e){
            System.out.println(e.getMessage());
        }catch(Exception e){
            System.out.println(e.getMessage());
        }
        return conn;
    }
}
