<%-- 
    Document   : Bienvenido
    Created on : 06/06/2019, 03:24:50 PM
    Author     : Luciano
--%>

<%@page import="Models.UserDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
