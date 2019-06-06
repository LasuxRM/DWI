<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agregar Policía</title>
    </head>
    <body>
        <%
            /*Connection con;
            String url="jdbcmysql://localhost:pruebaug";
            String Driver="com.mysql://jdbc.Driver";
            String user="root";
            Class.forName(Driver);
            con=DriverManager.getConnection(url);*/
            
            PreparedStatement ps;
            ResultSet rs;
            //ps.prepareStatement("select * from usuario");
            //rs=ps.executeQuery();
        %>
        <p>Bienvenido a la Administración de Usuarios!!!</p>
        <table>
            <tr>
                <th>Id Usuario</th>
                <th>Usuario</th>
                <th>Contraseina</th>
                <th>Nombres</th>
                <th>Apellido Paterno</th>
                <th>Apellido Materno</th>
                <th>DNI</th>
                <th>Id Grupo</th>
                <th>Id Policia</th>
                <th>Acciones</th>
            </tr>

                <%/*
                    while(rs.next()) {
                */%>

           <%-- <tr> 
                <td><%= rs.getInt("id_usuario")%></td>
                <td><%= rs.getChar("usuario")%></td>
                <td><%= rs.getChar("id_contraseina")%></td>
                <td><%= rs.getString("nombres")%></td>
                <td><%= rs.getString("apellido_pat")%></td>
                <td><%= rs.getString("apellido_mat")%></td>
                <td><%= rs.getString("dni")%></td>
                <td><%= rs.getString("id_policia")%></td>
            --%>    
                
            </tr>
        </table>
        <form action="UserAdmin" method="post">
            Usuario<input type="text" name="usuario"/><br/><br/>  
            Contraseña<input type="password" name="contrasenia"/><br/><br/>  
            Nombres:<input type="text" name="nombres"/><br/><br/>
            Apellido Paterno<input type="text" name="apellido_pat"/><br/><br/>  
            Apellido Materno<input type="text" name="apellido_mat"/><br/><br/>  
            DNI<input type="text" name="dni"/><br/><br/>  
            ID Grupo<input type="number" name="id_grupo_usuario"/><br/><br/>  
            ID Policía<input type="text" name="id_policia"/><br/><br/>  
            
            
            </select>  
            <br/><br/>  
            <input type="submit" value="Añadir"/>
        </form>
    </body>
</html>
