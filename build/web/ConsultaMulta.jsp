<%@page import="java.sql.*"%>
<%@page import="Controllers.UserAdmin"%>
<%@page import="Controllers.User"%>
<%@page import="Models.ConnectionManager"%>
<%@page import="Models.UserDAO"%>
<%@page import="Models.UserDTO"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Consultar Multa</title>
        <link href="estilo.css" rel="stylesheet">
    </head>
    <body>
        <link href="bootstrap/css/bootstrap.css" type="text/css" rel="stylesheet" />
        <link href="estilo.css" rel="stylesheet">

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
        <header id="main-header">
            <a id="logo-header" href="index.jsp">
                <span class="site-name">Multas de Tránsito</span>
                <span class="site-desc">Información / Consultar Multas / Gestionar</span>
            </a> <!-- / #logo-header -->
        </header>
        <section id="main-content">
            <article>
                <center>
                    <p>Bienvenido a la Consulta de Multas</p>
<!--                    <div class="content">-->
                    <form action="#" method="post">
                        DNI<input type="text" name="dni"/><br/><br/>  
                        <br/><br/>
                        <input type="submit" value="Añadir"/>
                    </form>
<!--                    </div>-->
                </center>
            </article>
            <footer id="main-footer">
            <p>&copy; 2019 <a href="#">PieDePágina</a></p>
        </footer> <!-- / #main-footer -->
    </body>
</html>
