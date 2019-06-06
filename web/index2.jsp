<%-- 
    Document   : index
    Created on : 30/05/2019, 07:25:20 PM
    Author     : Luciano
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Página de logueo</title>
    </head>
    <body>
        <form action="UserController" method="post">
            Por favor ingrese su nombre de usuario(username)
            <input type="text" name="un"/><br>
            Por favor ingrese su nombre de contraseña(password)
            <input type="text" name="pw"/>
            
            <input type="submit" value="submit">
        </form>
    </body>
</html>
