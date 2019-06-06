/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;

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

/**
 *
 * @author Luciano
 */
@WebServlet(name = "UserAdmin", urlPatterns = {"/UserAdmin"})
public class UserAdmin extends HttpServlet {
    static Connection currentCon = null;
    static ResultSet rs=null;
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        PrintWriter out = response.getWriter();  
	try {				
		String u=request.getParameter("usuario");  
		String c=request.getParameter("contrasenia");  
		String n=request.getParameter("nombres");  
		String ap=request.getParameter("apellido_pat");
                String am=request.getParameter("apellido_mat");
                String d=request.getParameter("dni");
                String idg=request.getParameter("id_grupo_usuario");
                String idp=request.getParameter("id_policia");
                UserDTO algo = new UserDTO();
                algo.setUsuario(u);
                algo.setContrasenia(c);
                algo.setNombres(n);
                algo.setApellido_pat(ap);
                algo.setApellido_mat(am);
                algo.setDni(d);
                algo.setId_grupo_usuario(idg);
                algo.setId_policia(idp);
                
                
//                Statement stmt = create;
//        String username = bean.getUsuario();
//        String password = bean.getContrasenia();
        System.out.println("ggg");
        String query = 
"insert into usuario (id_usuario, usuario, contrasenia, nombres, apellido_pat, apellido_mat, dni, id_grupo_usuario, id_policia)" + 
                "VALUES (?, ?, ?,?, ?, ?,?, ?, ?)";
        System.out.println("ggg");
        PreparedStatement preparedStatement = currentCon.prepareStatement(query);
        System.out.println("ggg");
        preparedStatement.setString(1, "55");
        preparedStatement.setString(2, "poli55");
        preparedStatement.setString(3, "1234");
        preparedStatement.setString(4, "poli55");
        preparedStatement.setString(5, "poli55");
        preparedStatement.setString(6, "poli55");
        preparedStatement.setString(7, "poli55");
        preparedStatement.setString(8, "2");
        preparedStatement.setString(9, "2");
        System.out.println("ggg");
        preparedStatement.executeUpdate(); 
        
        
        }
        catch(Throwable theException){
            System.out.println(theException);
        }
//  "insert into usuario (id_usuario, usuario, contrasenia, nombres, apellido_pat, apellido_mat, dni, id_grupo_usuario, id_policia) VALUES (NULL,'"+u+"', '"+c+"', '"+n+"', '"+ap+"', '"+am+"', '"+d+"','"+idg+"', '"+idp+"')";
                System.out.println("ggg");
//"INSERT INTO `usuario` (`id_usuario`, `usuario`, `contrasenia`, `nombres`, `apellido_pat`, `apellido_mat`, `dni`, `id_grupo_usuario`, `id_policia`) VALUES (NULL, 'poli2', '1234', 'poli2', 'poli2', 'poli2', '22222222', '2', '2');"
//"select * from user U inner join address2 A on U.id = A.id where alias='"
//"insert into usuario='"+u+ "' AND contrasenia='"+c+"'";

//        

//try {
//            UserDTO user = new UserDTO();
//            user.setUsuario(request.getParameter("un"));
//            user.setContrasenia(request.getParameter("pw"));
//            
//            System.out.println("usuario: "+request.getParameter("un"));
//            System.out.println("contrasenia: "+request.getParameter("pw"));
//            
//            user = UserDAO.login(user);
//            
//            if(user.isValid()){
//                HttpSession session = request.getSession(true);
//                session.setAttribute("currentSessionUser",user);
//                response.sendRedirect("Bienvenido.jsp");
//            }else{
//                response.sendRedirect("invalidLogin.jsp");
//            }
//        }
//        catch(Throwable theException){
//            System.out.println(theException);
//        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
