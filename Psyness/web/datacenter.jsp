<%-- 
    Document   : datacenter
    Created on : 13/04/2023, 09:36:21 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" integrity="sha512-9usAa10IRO0HhonpyAIVpjrylPvoDwiPUiKdWk5t3PyolY1cOd4DSE0Ga+ri4AuTroPR5aQvXU9xC6qOPnzFeg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="css/datacss.css">
        
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
        <title>Psyness</title>
        <link rel="icon" type="image/jpg" href="images/favicon.jpg"/>
        
    </head>
    <body>
        <%
                    HttpSession sesion = request.getSession();
                    String Iidex;
                    if (sesion.getAttribute("Idprima") != null)  {
                    Iidex = sesion.getAttribute("Idprima").toString();
                        }else{
                        out.print("<script>location.replace('index.jsp');</script>");
            }                        
        %>
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
                <div class="contenido-data">
                    <section class="sobremi" id="sobremi">
                        <div class="contenido-seccion">
                            <h2 class="titulo-seccion">Ayuda profesional</h2>
                            <h3>Información de Contacto</h3>

                            <p class="especial">Aquí te proporciamos información que pueda servirte.</p>
                            <p>Recuerda, no estás sólo, todas y todos merecemos ser escuchados.</p>

                            <div class="fila">
                                <div class="col">
                                    <i class="fa-solid fa-user"></i>
                                    <span class="titulo-detalle">Departamento</span>
                                    <p>Servicio de Orientacion Psicologica</p>

                                </div>
                                <div class="col">
                                    <i class="fa-solid fa-phone"></i>
                                    <span class="titulo-detalle">Contacto</span>
                                    <p>800 710 24 96 Y 800 221 31 09</p>
                                </div>
                                <div class="col">
                                    <i class="fa-sharp fa-solid fa-location-dot"></i>
                                    <span class="titulo-detalle">Ubicación</span>
                                    <p>México</p>
                                </div>
                            </div>
                        </div>
                    </section>
                </div>
            </div>
        </div>
    </body>
</html>
