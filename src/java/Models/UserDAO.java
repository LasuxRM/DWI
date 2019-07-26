package Models;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Models.UserDAO;
import Models.UserDTO;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.http.HttpSession;

import java.sql.*;
import Models.ConnectionManager;

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
    
    public static UserDTO insert(UserDTO article){
        int id_policia=0;
        System.out.println("Mas: "+article.getDni());
        try {
            Statement stmt = null;

            String searchQuery ="select id_policia from policia where cip='"+article.getDni()+"'";

            currentCon = ConnectionManager.getConnection();
            stmt=currentCon.createStatement();
            
            String query0 ="insert into policia (id_policia, cip) VALUES (?, ?)";
            PreparedStatement preparedStatement0 = currentCon.prepareStatement(query0);
            preparedStatement0.setString(1, null);
            preparedStatement0.setString(2, article.getDni());
            preparedStatement0.executeUpdate();

            rs=stmt.executeQuery(searchQuery);
            boolean more = rs.next();
            
            System.out.println(rs.getInt(1));
            id_policia=rs.getInt("id_policia");
            System.out.println("El id_policia es: "+id_policia);
            
            String query ="insert into usuario (id_user, usuario, contrasenia, nombres, apellido_pat, apellido_mat, dni, id_grupo_usuario, id_policia)" + 
                    "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement preparedStatement = currentCon.prepareStatement(query);
            preparedStatement.setString(1, null);
            preparedStatement.setString(2, article.getUsuario());
            preparedStatement.setString(3, article.getContrasenia());
            preparedStatement.setString(4, article.getNombres());
            preparedStatement.setString(5, article.getApellido_pat());
            preparedStatement.setString(6, article.getApellido_mat());
            preparedStatement.setString(7, article.getDni());
            preparedStatement.setString(8, article.getId_grupo_usuario());
            preparedStatement.setInt(9, id_policia);
            preparedStatement.executeUpdate();
            
            //response.sendRedirect("Bienvenido.jsp");
        }
        catch(Throwable theException){
            System.out.println("Se encontró una excepción: "+theException);
            //response.sendRedirect("Bienvenido.jsp");
        }
        return article;
    }
    
        public static UserDTO Consulta(){
        UserDTO Consult=new UserDTO();
        Statement stmt = null;

        String searchQuery = "select * from usuarios";
        System.out.println("Query: "+searchQuery);

        try{

            currentCon = ConnectionManager.getConnection();
            stmt=currentCon.createStatement();
            rs=stmt.executeQuery(searchQuery);
            boolean more = rs.next();

            if(!more){
                System.out.println("Sorry, no estás registrado. Loguéate");
                Consult.setValid(false);
            }
            else{
                while(rs.next()){
                    String usuario=rs.getString("usuario");
                    String contrasenia=rs.getString("contrasenia");
                    String nombres=rs.getString("nombres");
                    String apellidopat=rs.getString("apellidop");
                    String apellidomat=rs.getString("apellidom");
                    Consult.setUsuario(usuario);
                    Consult.setContrasenia(contrasenia);
                    Consult.setNombres(nombres);
//                    Consult.setApellidop(apellidopat);
//                    Consult.setApellidom(apellidomat);

                    Consult.setValid(true);
                }
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
        return Consult;
    }

}
