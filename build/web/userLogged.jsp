<%-- 
    Document   : userLogged
    Created on : 30/05/2019, 07:34:08 PM
    Author     : Luciano
--%>

<%@page import="Models.UserDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Logueo de usuario exitoso</title>
    </head>
    <body>
        <form method="POST" action="">
            <td><input type="submit" value="Añadir Policía"></td>
        </form>
        <center>
            <% UserDTO currentUser=(UserDTO)session.getAttribute("currentSessionUser");%>
            
            Bienvenido <%=currentUser.getNombres()+ " "+ currentUser.getApellido_pat()%>
        </center>
        
        
    </body>
</html>