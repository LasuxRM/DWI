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
        <title>Agregar Policía</title>
        <link href="estilo.css" rel="stylesheet">
    </head>
    <body>
        <link href="bootstrap/css/bootstrap.css" type="text/css" rel="stylesheet" />

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
            <nav>
                <ul>
                    <li><a id="primero" href="AniadirPolicia.jsp">Añadir Policía</a></li>
                    <li><a id="segundo">Añadir Conductor</a></li>
                    <li><a id="tercero" href="AniadirMulta.jsp">Añadir Multa</a></li>
                </ul>
            </nav><!-- / nav -->
        </header>
        <section id="main-content">
            <article>
                <left>
                    <p>Bienvenido a la Administración de Usuarios</p>
<!--                    <div class="content">-->
                </left>
            </article> <!-- /article -->
            <div class="article" style="margin:10px;">
        <div class="input-prepend">
            <span class="add-on">Usuario</span>
            <input class="span4" id="usuario" name="usuario" type="text" placeholder="Ejemplo...">
        </div>
        <br/>
        <div class="input-prepend">
            <span class="add-on">Contraseña</span>
            <input class="span4" id="contrasenia" name="contrasenia" type="text" placeholder="***...">
        </div>
        <br/>
        <div class="input-prepend">
            <span class="add-on">Nombres</span>
            <input class="span4" id="nombres" name="nombres" type="text" placeholder="Pedro...">
        </div>
        <br/>
        <div class="input-prepend">
            <span class="add-on">Apellido Paterno</span>
            <input class="span4" id="apellido_pat" name="apellido_pat" type="text" placeholder="Picapiedra...">
        </div>
        <br/>
        <div class="input-prepend">
            <span class="add-on">Apellido Materno</span>
            <input class="span4" id="apellido_mat" name="apellido_mat" type="text" placeholder="???...">
        </div>
        <br/>
        <div class="input-prepend">
            <span class="add-on">DNI</span>
            <input class="span4" id="dni" name="dni" type="text" placeholder="123...">
        </div>
        <br/>
        <div class="input-prepend">
            <span class="add-on">ID Grupo</span>
            <input class="span4" id="id_grupo_usuario" name="id_grupo_usuario" type="text" placeholder="###...">
        </div>
        <br/>
        <p>
            <button class="btn btn-primary" type="button" onclick="sendAjax()">Add</button>
        </p>
        </div>
                    <div style="width:700px;padding:20px;S">
            <h5 style="text-align:center">
                <i style="color:#ccc"><small>Articles</small></i>
            </h5>
            <table id="added-articles" class="table">
                <tr>
                    <th>Usuario</th>
                    <th>Contraseña</th>
                    <th>Nombres</th>
                    <th>Apellido Paterno</th>
                    <th>Apellido Materno</th>
                </tr>
            </table>
        </div>
            <script src="jquery-3.4.1.min.js"></script>
        <script>
            //código para el ejemplo 2
            function sendAjax() {
                // get inputs
                var article = new Object();
                article.usuario = $('#usuario').val();
                article.contrasenia = $('#contrasenia').val();
                article.nombres = $('#nombres').val();
                article.apellido_pat = $('#apellido_pat').val();
                article.apellido_mat = $('#apellido_mat').val();
                article.dni=$('#dni').value();
                article.id_grupo_usuario=$('#id_grupo_usuario').value();
                $.ajax({
                    url: "UserAdmin",
                    type: 'POST',
                    dataType: 'json',
                    data: JSON.stringify(article),
                    contentType: 'application/json',
                    mimeType: 'application/json',

                    success: function (data) {
                        $("tr:has(td)").remove();
                        //Tipo foreach, es para iterar todods los elementos recibidos en data, es un vector con elementos
                       $.each(data, function (index, article) {
                            $("#added-articles").append($('<tr/>').append($('<td/>').html("<ahref='"+article.usuario+"'>"+article.usuario+"</a>")).append($('<td/>').append(article.contrasenia)).append($('<td/>').append(article.nombres)).append($('<td/>').append(article.apellidop)).append($('<td/>').append(article.apellidom)));
                            $("<td/>");
                            
                        });
                    },
                    error:function(data,status,er) {
                        alert("error: "+data+" status: "+status+" er:"+er);
                    }
                });
            }
        </script>
            
            
            
        </section> <!-- / #main-content -->
        <footer id="main-footer">
            <p>&copy; 2019 <a href="#">PieDePágina</a></p>
        </footer> <!-- / #main-footer -->
    </body>
</html>
