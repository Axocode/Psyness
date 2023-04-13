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
        
        <link rel="stylesheet" href="css/profilecss.css">
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
                        <form id="">
                            <div class="input-field">
                                <input id="buscar" name="buscar" value="" type="" class=""/>
                                <label for="">Buscar</label>
                            </div>
                        </form>
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
                            <div class="botonsin">
                                <button type="button" class="btn btn-light">Seguir</button>
                            </div>
                        </div>
                        <div class="menu">
                            <img src="images/menuwhite.svg" class="imgmenu" height="50px">
                        </div>
                        <div class="seguidos">
                            <h4>43 seguidos</h4>
                        </div>
                        <div class="seguidores">
                            <h4>12 seguidores</h4>
                        </div>
                        <div class="publis">
                            <h4>1 publicaciones</h4>
                        </div>
                    </div>
                </div>                    
            </div>          
        </div>
    </body>
</html>
