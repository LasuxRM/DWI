<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agregar Policía</title>
        <link href="estilo.css" rel="stylesheet">

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
        <header id="main-header">
            <a id="logo-header" href="#">
                <span class="site-name">Multas de Tránsito</span>
                <span class="site-desc">Información / Consultar Multas / Gestionar</span>
            </a> <!-- / #logo-header -->
            <nav>
                <ul>
                    <li><a id="primero" href="#">Añadir Policía</a></li>
                    <li><a id="segundo" href="#">Añadir Conductor</a></li>
                    <li><a id="tercero" href="#">Añadir Multa</a></li>
                </ul>
            </nav><!-- / nav -->
        </header>
        <section id="main-content">
            <article>
                <center>
                            <p>Bienvenido a la Administración de Usuarios</p>
                            <p>Aquí puedes añadir nuevos policías</p>
<!--                    <div class="content">-->
                        <form action="UserAdmin" method="post">
                            Usuario<input type="text" name="usuario"/><br/><br/>  
                            Contraseña<input type="password" name="contrasenia"/><br/><br/>  
                            Nombres:<input type="text" name="nombres"/><br/><br/>
                            Apellido Paterno<input type="text" name="apellido_pat"/><br/><br/>  
                            Apellido Materno<input type="text" name="apellido_mat"/><br/><br/>  
                            DNI<input type="text" name="dni"/><br/><br/>
                            <select name="OS">
                                <option value="1">Windows Vista</option> 
                                <option value="2">Windows 7</option> 
                                <option value="3">Windows XP</option>
                                <option value="10">Fedora</option> 
                                <option value="11">Debian</option> 
                                <option value="12">Suse</option> 
                            </select>
                            ID Grupo<select type="number" name="id_grupo_usuario">
                                        <option value="100000">Administrador</option> 
                                        <option value="100001">Policía</option> 
                                        <option value="200002">Propietario</option>
                                        <option value="300003">Conductor</option>
                                    </select><br/><br/>
<!--                            ID Grupo<input type="number" name="id_grupo_usuario"/><br/><br/>-->
                            ID Policía<input type="text" name="id_policia"/><br/><br/>
<!--                            </select>  -->
                            <br/><br/>  
                            <input type="submit" value="Añadir"/>
                        </form>
<!--                    </div>-->
                </center>
            </article> <!-- /article -->
        </section> <!-- / #main-content -->
        <footer id="main-footer">
            <p>&copy; 2019 <a href="#">PieDePágina</a></p>
        </footer> <!-- / #main-footer -->
    </body>
</html>
