<%-- 
    Document   : index3
    Created on : 06/06/2019, 03:04:05 PM
    Author     : Luciano
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>WEB TRANSITO/URBANO AREQUIPA</title>
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
                    <li><a id="segundo" href="#">Consulta Multas</a></li>
                    <li>
                        <form method="post" action="User">
                            <td>
                                <input type="text" size="15" maxlength="30" placeholder="Usuario" name="un">
                                <input type="password" size="15" maxlength="30" placeholder="Constraseña" name="pw">
                                <input type="submit" value="Ingresar">
                            </td>
                        </form>
                    </li>
                    <td>
                        <nav>
                            <ul>
                                <li><a href="index.jsp">Inicio</a></li>
                                <li><a href="#">Acerca de</a></li>
                                <li><a href="#">Contacto</a></li>
                            </ul>
                        </nav>
                    </td>
                </ul>
            </nav><!-- / nav -->
        </header><!-- / #main-header -->
        <div></div>
        <article>
            <figure>
                    <img src="AperturaAuto.jpg">
                    <figcaption>

                    </figcaption>
            </figure>
        </article>
            </div> 
            <div class="hijo2">
                    La pagina web permite la consulta general de multas e infracciones de los usuarios registrados en la presente aplicacion movil
            </div>
        </div>
        <footer id="main-footer">
            <p>&copy; 2019 <a href="#">PieDePágina</a></p>
        </footer> <!-- / #main-footer -->
    </body>
</html>
