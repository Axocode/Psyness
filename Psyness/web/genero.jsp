<%-- 
    Document   : feed
    Created on : 10/04/2023, 10:22:31 AM
    Author     : admin
--%>
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
        <link rel="stylesheet" href="css/generocss.css">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
        
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
                        <div class="row">
  <div class="col-sm-6">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title">Violencia de genero</h5>
        <p class="card-text">Cualquier acto con el que se busque dañar a una persona por su género..</p>
        <a href="#" type="button" class="btn btn-outline-dark">Ver mas...</a>
      </div>
    </div>
  </div>
                            <br><br>
  <div class="col-sm-6">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title">Categoria</h5>
        <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
        <a href="#" type="button" class="btn btn-outline-dark">Ver mas...</a>
      </div>
    </div>
  </div>
                            <br><br><br><br><br><br><br><br>
   <div class="col-sm-6">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title">Categoria</h5>
        <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
        <a href="#" type="button" class="btn btn-outline-dark">Ver mas...</a>
      </div>
    </div>
  </div>
    <div class="col-sm-6">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title">Categoria</h5>
        <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
        <a href="#" type="button" class="btn btn-outline-dark">Ver mas...</a>
      </div>
    </div>
  </div>          
                                                    <br><br><br><br><br><br><br><br>
   <div class="col-sm-6">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title">Categoria</h5>
        <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
        <a href="#" type="button" class="btn btn-outline-dark">Ver mas...</a>
      </div>
    </div>
  </div>
    <div class="col-sm-6">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title">Categoria</h5>
        <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
        <a href="#" type="button" class="btn btn-outline-dark">Ver mas...</a>

      </div>
    </div>
  </div>            
                            
                            
</div>
                        
                        
                    
                <div class="sidebar_perfil">

                    <div class="info-perfil">
                        <nav>
                            <h1><i class="fa-solid fa-heart"></i> 5k</h1>
                            <h1><i class="fa-solid fa-paper-plane"></i> 16</h1>
                            <h1><i class="fa-sharp fa-solid fa-star"></i> 12</h1>
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