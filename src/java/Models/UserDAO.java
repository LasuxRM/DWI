package Models;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Vector;

public class UserDAO {
    static Connection currentCon = null;
    static ResultSet rs=null;
    
    public static UserDTO login(UserDTO bean){
        
        Statement stmt = null;
        String username = bean.getUsuario();
        String password = bean.getContrasenia();
        
        String searchQuery = 
//                "select * from user U inner join address2 A on U.id = A.id where alias='"
                "select * from usuario where usuario='"   
                    + username
                    + "' AND contrasenia='"
                    + password
                    + "'";
        
        System.out.println("Tu nombre es: "+username);
        System.out.println("Tu contraseña es: "+password);
        System.out.println("Query: "+searchQuery);
        
        try{
            currentCon = ConnectionManager.getConnection();
            stmt=currentCon.createStatement();
            rs=stmt.executeQuery(searchQuery);
            boolean more = rs.next();
            
            if(!more){
                System.out.println("Sorry, no estás registrado. Loguéate");
                bean.setValid(false);
            }
            else if(more){
                String nombres=rs.getString("nombres");
                String apellido_pat=rs.getString("apellido_pat");
//                String alias=rs.getString("alias");
                System.out.println("Wellcome "+nombres);
//                System.out.println("Wellcome "+alias);
                bean.setNombres(nombres);
                bean.setApellido_pat(apellido_pat);
                
                bean.setValid(true);
            }

        }
        catch(Exception ex){
            System.out.println("Log In fallido: Ocurrió una excepción "+ex);
        }
        finally{
            if(rs!=null){
                try{
                    rs.close();
                }catch(Exception e){}
                    rs=null;
            }
            if(stmt!=null){
                try{
                    stmt.close();
                }catch(Exception e){}
                    stmt=null;
            }
            if(currentCon!=null){
                try{
                    currentCon.close();
                }catch(Exception e){}
                    currentCon=null;
            }
        }
        return bean;
    }
}
