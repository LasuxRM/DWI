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
        <title>Bienvenido</title>
<!--        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css"> 
-->
        <link href="estilo.css" rel="stylesheet">
    </head>
    <body>
        <header id="main-header">
            <a id="logo-header" href="index.jsp">
                <span class="site-name">Multas de Tránsito</span>
                <span class="site-desc">Información / Consultar Multas / Gestionar</span>
            </a> <!-- / #logo-header -->
            <nav>
                <ul>
                    <li><a id="primero" href="AniadirPolicia.jsp">Añadir Policía</a></li>
                    <li><a id="segundo" href="AniadirConductor.jsp">Añadir Conductor</a></li>
                    <li><a id="tercero" href="AniadirMulta.jsp">Añadir Multa</a></li>
                </ul>
            </nav><!-- / nav -->
        </header><!-- / #main-header -->
<section id="main-content">
    <article>
        <header>
            <center>
                <% UserDTO currentUser=(UserDTO)session.getAttribute("currentSessionUser");%>
                Bienvenido <%=currentUser.getNombres()+ " "+ currentUser.getApellido_pat()%>
            </center>
        </header>
        <img src="AperturaAuto.jpg" alt="Gatito" />
        <div class="content">
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
        </div>
    </article> <!-- /article -->
</section> <!-- / #main-content -->
<footer id="main-footer">
        <p>&copy; 2019 <a href="#">PieDePágina</a></p>
</footer> <!-- / #main-footer -->
                                    <%--

        <table>
            <tr>
                <header id="main-header">
                    <td><i id="icon" class="fa fa-users" style="text-shadow: 0px 0px rgb(179,179,179), 1px 1px rgb(181,181,181), 2px 2px rgb(183,183,183), 3px 3px rgb(185,185,185), 4px 4px rgb(187,187,187), 5px 5px rgb(189,189,189), 6px 6px rgb(192,192,192), 7px 7px rgb(194,194,194), 8px 8px rgb(196,196,196), 9px 9px rgb(198,198,198), 10px 10px rgb(200,200,200), 11px 11px rgb(203,203,203), 12px 12px rgb(205,205,205), 13px 13px rgb(207,207,207), 14px 14px rgb(209,209,209), 15px 15px rgb(211,211,211), 16px 16px rgb(213,213,213), 17px 17px rgb(216,216,216), 18px 18px rgb(218,218,218), 19px 19px rgb(220,220,220), 20px 20px rgb(222,222,222), 21px 21px rgb(224,224,224), 22px 22px rgb(227,227,227), 23px 23px rgb(229,229,229), 24px 24px rgb(231,231,231), 25px 25px rgb(233,233,233), 26px 26px rgb(235,235,235), 27px 27px rgb(238,238,238), 28px 28px rgb(240,240,240), 29px 29px rgb(242,242,242), 30px 30px rgb(244,244,244), 31px 31px rgb(246,246,246), 32px 32px rgb(248,248,248), 33px 33px rgb(251,251,251), 34px 34px rgb(253,253,253); font-size: 80px; color: rgb(66, 255, 230); height: 150px; width: 150px; line-height: 150px; text-align: center; background-color: rgb(255, 255, 255);"></i>  </td>
                    
                    <form method="POST" action="RegistroUsuarios.jsp">
                        <td><input type="submit" value="Añadir Policía"></td>
                        <td><input type="submit" value="Añadir Conductor"></td>
                        <td><input type="submit" value="Añadir Multa"></td>
                        <td><input type="submit" value="Añadir Código"></td>
                        <td><input type="submit" value="Salir">
                        <td></td>
                    </form>
                </header>
            </tr>
        </table>                    --%>
    </body>
</html>
