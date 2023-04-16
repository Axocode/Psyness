<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="interDatos.Idatos"%>
<%@page session="true"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%
                    HttpSession sesion = request.getSession();
                    String Iidex;
                    if (sesion.getAttribute("Idprima") != null)  {
                    Iidex = sesion.getAttribute("Idprima").toString();
                        }else{
                        out.print("<script>location.replace('index.jsp');</script>");
            }                        
        %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" integrity="sha512-9usAa10IRO0HhonpyAIVpjrylPvoDwiPUiKdWk5t3PyolY1cOd4DSE0Ga+ri4AuTroPR5aQvXU9xC6qOPnzFeg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="css/profile2.css">
        
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
        <title>Psyness</title>
        <link rel="icon" type="image/jpg" href="images/favicon.jpg"/>
        
    </head>
    <body>
        
        <div class="general">
            <div class="contenedor">
                <div class="sidebar">
                    <div class="img">
                        <!-------Image-------->
                        <a href="feed.jsp"><img src="images/logosidebar.jpg" width="220"></a>
                    </div>
                    <div class="input-box">
                        <input type="text" placeholder="Buscar">
                        <div class="btn">
                            <i class="fa-solid fa-magnifying-glass"></i>
                        </div>
                    </div>
                    <div class="menu">
                        <nav>
                            <a href="feed.jsp"><i class="fa-sharp fa-solid fa-house"></i>   Inicio</a>
                            <a href="genero.jsp"><i class="fa-solid fa-venus-mars"></i>   Red de género</a>
                            <a href="datacenter.jsp"><i class="fa-regular fa-file-lines"></i> Datacenter</a>
                        </nav>
                    </div>
                    <div class="cerrarsesion">
                        <a href="index.jsp?cerrar=true">Cerrar Sesión</a>
                    </div>
                </div>
                <div class="publicar">
                    <div class="img">
                        <img src="images/perfilsidebar.png" class="imgRound">
                    </div>
                    <div class="username">
                        <p>Chumpi uwu lvl16</p>
                    </div>
                    <div class="btn-enviar">
                        <input type="checkbox" id="btn-follow" class="submit"/>
                        <label for="btn-follow" class="lbl-follow">Seguir</label>
                    </div>
                    <div class="menui">
                        <!--<ul class="listita">
                            <li><a href="#">--><img src="images/menuwhite.svg" class="imgmenu" height="50px"><!--</a>
                                <ul class="submenu">
                                    <li><a href="reportes.jsp">Reportar</a></li>
                                </ul>
                            </li>
                        </ul>>-->
                    </div>
                    <div class="seguidos">
                        <h4>43 seguidos</h4>
                    </div>
                    <div class="seguidores">
                        <h4>13 seguidores</h4>
                    </div>
                    <div class="publis">
                        <h4>1 publicaciones</h4>
                    </div>
                </div>                                            
                <div class="contenido-publi">
                    <div class="encabezado">
                        <nav>
                            <div class="img">
                                <img src="images/perfilsidebar.png" width="60">
                            </div>
                            <div class="username">
                                <h3>Nombre del usuario</h3>
                            </div>
                        </nav>    
                    </div>
                    <div class="contenido-text">
                        <p>Lorem ipsum dolor sit amet consectetur adipiscing elit, laoreet a malesuada
                        curabitur morbi habitasse, ut convallis congue ad conubia pretium. Ac sagittis
                        conubia sem metus cubilia neque faucibus integer dictumst, inceptos risus odio 
                        netus nisi lobortis pulvinar montes aliquam erat, quis vehicula lacinia sed urna
                        orci malesuada est. Sagittis rutrum arcu condimentum vel facilisis at velit,
                        curabitur orci habitant porta pharetra enim, ultricies egestas potenti elementum
                        suspendisse laoreet.</p><br><br><br>
                    </div>
                    <div class="pie-publi">
                        <nav>
                            <div class="fecha">
                                <h3>4-Abril-2023 6:03</h3>
                            </div>
                            <div class="likes">
                                <div class="btn-icon">
                                    <h3><i class="fa-solid fa-heart"></i> 500k</h3>
                                </div>
                            </div>
                            <div class="shares">
                                <div class="btn-icon">
                                    <h3><i class="fa-sharp fa-solid fa-star"></i> 12</h3>
                                </div>
                            </div>
                        </nav>    
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>