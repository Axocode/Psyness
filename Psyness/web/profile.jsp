<%-- 
    Document   : profile
    Created on : 13 abr 2023, 9:52:42
    Author     : BD1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" integrity="sha512-9usAa10IRO0HhonpyAIVpjrylPvoDwiPUiKdWk5t3PyolY1cOd4DSE0Ga+ri4AuTroPR5aQvXU9xC6qOPnzFeg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="css/reprofile.css">
        
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
                        <img src="images/logosidebar.jpg" width="220">
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
                </div>
                    <div class="publicar">                        
                        <div class="img">
                                <img src="images/perfilsidebar.png" class="imgRound">
                        </div>
                        <div class="username">
                            <p>Chumpi uwu lvl16</p>
                        </div>
                        <div class="follow">                           
                                <a href="#" class="botona">
                                    <span></span>
                                    <span></span>
                                    <span></span>
                                    <span></span>
                                    Seguir
                                </a>
                        </div>
                        <div class="menui">
                            <ul class="listita">
                                <li><a href="#"><img src="images/menuwhite.svg" class="imgmenu" height="50px"></a>
                                    <ul class="submenu">
                                        <li><a href="reportes.jsp">Reportar</a></li>
                                    </ul>
                                </li>
                            </ul>
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
                <div class="contenido">
                    <div class="img">
                        <img src="images/perfilsidebar.png" width="60">
                        <h3>Nombre del usuario</h3>
                        <form id="form1">
                            <div class="input-field">
                                <input type="submit" id="follow" name="<%%>" class="submit" />
                            </div>
                        </form>
                    </div>
                    <div class="text">
                        <p>Lorem ipsum dolor sit amet consectetur adipiscing elit, laoreet a malesuada
                        curabitur morbi habitasse, ut convallis congue ad conubia pretium. Ac sagittis
                        conubia sem metus cubilia neque faucibus integer dictumst, inceptos risus odio 
                        netus nisi lobortis pulvinar montes aliquam erat, quis vehicula lacinia sed urna
                        orci malesuada est. Sagittis rutrum arcu condimentum vel facilisis at velit,
                        curabitur orci habitant porta pharetra enim, ultricies egestas potenti elementum
                        suspendisse laoreet.</p>
                        <br><br>
                    </div>
                </div>
                </div>                    
            </div>          
        </div>
    </body>
</html>
