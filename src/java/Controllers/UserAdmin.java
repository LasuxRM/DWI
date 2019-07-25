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
import Models.ConnectionManager;

@WebServlet(name = "UserAdmin", urlPatterns = {"/UserAdmin"})
public class UserAdmin extends HttpServlet {
    static Connection currentCon = null;
    static ResultSet rs=null;
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        PrintWriter out = response.getWriter();  
	try {
            Statement stmt = null;
            UserDTO algo = new UserDTO();
            algo.setUsuario(request.getParameter("usuario"));
            algo.setContrasenia(request.getParameter("contrasenia"));
            algo.setNombres(request.getParameter("nombres"));
            algo.setApellido_pat(request.getParameter("apellido_pat"));
            algo.setApellido_mat(request.getParameter("apellido_mat"));
            algo.setDni(request.getParameter("dni"));
            algo.setId_grupo_usuario(request.getParameter("id_grupo_usuario"));
            algo.setId_policia(request.getParameter("id_policia"));

            currentCon = ConnectionManager.getConnection();
            stmt=currentCon.createStatement();
            String query ="insert into usuario (id_user, usuario, contrasenia, nombres, apellido_pat, apellido_mat, dni, id_grupo_usuario, id_policia)" + 
                    "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement preparedStatement = currentCon.prepareStatement(query);
            preparedStatement.setString(1, null);
            preparedStatement.setString(2, algo.getUsuario());
            preparedStatement.setString(3, algo.getContrasenia());
            preparedStatement.setString(4, algo.getNombres());
            preparedStatement.setString(5, algo.getApellido_pat());
            preparedStatement.setString(6, algo.getApellido_mat());
            preparedStatement.setString(7, algo.getDni());
            preparedStatement.setString(8, algo.getId_grupo_usuario());
            preparedStatement.setString(9, algo.getId_policia());
            preparedStatement.executeUpdate();
            
            response.sendRedirect("Bienvenido.jsp");
        }
        catch(Throwable theException){
            System.out.println("Se encontró una excepción: "+theException);
            response.sendRedirect("Bienvenido.jsp");
        }
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
