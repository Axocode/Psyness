<%-- 
    Document   : feed
    Created on : 10/04/2023, 10:22:31 AM
    Author     : admin
--%>
<%@page import="interPub.Ireqs"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="interDatos.Idatos"%>
<%@page import="interPub.Ireqs"%>

<%@page session="true"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" integrity="sha512-9usAa10IRO0HhonpyAIVpjrylPvoDwiPUiKdWk5t3PyolY1cOd4DSE0Ga+ri4AuTroPR5aQvXU9xC6qOPnzFeg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="css/feedcss.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
        <title>Psyness</title>
        <link rel="icon" type="image/jpg" href="images/favicon.jpg"/>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
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
            <%
            int i = 0;
            List<Ireqs> listita = null;
            String Iid = null;
            session = request.getSession( true );
            
            
            Iid = request.getParameter( "id" );
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
                <div class="publicar">
                    <div class="checkbox">
                    <button type="button" class="btn btn-light" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
                      ¿Que desea publicar?
                    </button>
                        
                    </div>
                        
                  <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                  <div class="modal-dialog">
                    <div class="modal-content">
                      <div class="modal-header">
                          <h5 class="modal-title" id="staticBackdropLabel"><center>Crear publicacion</center></h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                      </div>
                      <div class="modal-body">
                          
                        <div class="form-floating">
                        <textarea class="form-control" placeholder="Leave a comment here" id="floatingTextarea2" style="height: 100px"></textarea>
                        <label for="floatingTextarea2">¿Que estas pensando, <%=sesion.getAttribute("INombreuser")%> ?</label>
                      </div>
                            
                      </div>
                      <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                        <button type="button" class="btn btn-primary">Publicar</button>
                      </div>
                    </div>
                  </div>
                </div>
                                  
                    
                    
                    
                    <div class="modal">
                        <div class="contenedor-modal">
                            <header>--Bienvenido--</header>
                            <label for="btn-modal">X</label>
                            <div class="contenido-modal">
                            </div>
                        </div>
                    </div>
                    <div class="menu-modal">
                        <nav>
                            <div class="agregar">
                                <h3>Agregar imagen</h3>
                                <div class="btn-icon">
                                    <input id="btn-add" value="<%%>" type="checkbox">
                                    <i class="fa-solid fa-camera"></i>
                                </div>
                            </div>
                            <div class="subir">
                                <h3>Subir imagen</h3>
                                <div class="btn-icon">
                                    <input id="btn-getup" value="<%%>" type="checkbox">
                                    <i class="fa-solid fa-paper-plane"></i>
                                </div>
                            </div>
                        </nav>
                    </div>
                     
                                    
                </div>
                         
                <div class="contenido-publi">
                 <%
              if( listita != null && !listita.isEmpty() )
              {
                for( Ireqs Redatos : listita)
                {
            %>          
                         <div class="contenido-publi">
                    <div class="encabezado">
                        <nav>
                            <div class="img">
                                <img src="images/perfilsidebar.png" width="60">
                            </div>
                            <div class="username">
                                <h3>Nombre del usuario</h3>
                            </div>
                            <div class="btn-enviar">
                                <input type="checkbox" id="btn-follow" class="submit"/>
                                <label for="btn-follow" class="lbl-follow">Seguir</label>
                            </div>
                        </nav>    
                    </div>
                    <div class="contenido-text">
                        <p>Lorem ipsum dolor sit amet consectetur adipiscing elit, laoreet a malesuada
                        curabitur morbi habitasse, ut convallis congue ad conubia pretium. Ac sagittis
                        conubia sem metus cubilia neque faucibus integer dictumst, inceptos risus odio 
                        netus nisi lobortis pulvinar montes aliquam erat, quis vehicula lacinia sed urna
                        orci malesuada est. </p><br><br><br>
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
                <%
                                    }
}
else{

                                    %>
                                     <div class="contenido-publi">
                    <div class="encabezado">
                        <nav>
                            <div class="img">
                                <img src="images/perfilsidebar.png" width="60">
                            </div>
                            <div class="username">
                                <h3>Nombre del usuario</h3>
                            </div>
                            <div class="btn-enviar">
                                <input type="checkbox" id="btn-follow" class="submit"/>
                                <label for="btn-follow" class="lbl-follow">Seguir</label>
                            </div>
                        </nav>    
                    </div>
                    <div class="contenido-text">
                        <p>Lorem ipsum dolor sit amet consectetur adipiscing elit, laoreet a malesuada
                        curabitur morbi habitasse, ut convallis congue ad conubia pretium. Ac sagittis
                        conubia sem metus cubilia neque faucibus integer dictumst, inceptos risus odio 
                        netus nisi lobortis pulvinar montes aliquam erat, quis vehicula lacinia sed urna
                        orci malesuada est. </p><br><br><br>
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
                     <%
                                    }

                                    %>           
                                    
                <div class="sidebar_perfil">
                        
                    <div class="info-perfil">
                        <nav>
                            <h1><i class="fa-solid fa-heart"></i> 0</h1>
                            <h1><i class="fa-solid fa-paper-plane"></i> 1</h1>
                            <h1><i class="fa-sharp fa-solid fa-star"></i> 0</h1>
                        </nav>
                        <div class="texto">
                            <a href="profile.jsp?id=<%=sesion.getAttribute("Idprima")%> "> <h3><%=sesion.getAttribute("INombreuser")%></h3></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
