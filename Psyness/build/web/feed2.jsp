<%-- 
    Document   : feed2.jsp
    Created on : 7 may. 2023, 20:33:13
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Psyness</title>
        <!-----Bootstrap------->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
        <!-----Bootstrap------->
    <link rel="stylesheet" href="css/feed2css.css">
    <script src="https://kit.fontawesome.com/54fa9899e2.js" crossorigin="anonymous"></script>
        <!-----Boxicons------->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" integrity="sha512-9usAa10IRO0HhonpyAIVpjrylPvoDwiPUiKdWk5t3PyolY1cOd4DSE0Ga+ri4AuTroPR5aQvXU9xC6qOPnzFeg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="icon" type="image/jpg" href="images/favicon.jpg"/>    
    
    
</head>
<body>
    <div class="container">
        <!-----------------------------------left-sidebar(YORCH)-------------------------------------------------->
        <div class="left_sidebar">
            <div class="logo_content">
                <div class="logo">
                    
                    <div class="logo_name"><span>P</span>syness</div>
                    
                </div>
            <i class="fas fa-bars" id="btn"></i>    
            </div>
            
            <ul class="nav_list">
                <li>
                    <i class="fas fa-search"></i>
                    <input type="text" placeholder="Buscar">
                </li>
                
                <li>
                    <a href="#">
                        <i class="fa-sharp fa-solid fa-house"></i>
                        <span class="links_name">Inicio</span>
                    </a>
                    <!---<span class="links_name">Inicio</span>---->
                </li> 
                
                <li>
                    <a href="#">
                        <i class="fa-solid fa-venus-mars"></i>
                        <span class="links_name">Red de género</span>
                    </a>
                    <!---<span class="links_name">Inicio</span>---->
                </li> 
                
                <li>
                    <a href="#">
                        <i class="fa-regular fa-file-lines"></i>
                        <span class="links_name">Datacenter</span>
                    </a>
                    <!---<span class="links_name">Inicio</span>---->
                </li>
                
                <li>
                    <a href="#">
                        <i class="fas fa-cog"></i>
                        <span class="links_name">Settings</span>
                    </a>
                    <!---<span class="links_name">Inicio</span>---->
                </li>
            </ul>
            
            <div class="logout_sesion">
                <a href="login.jsp">
                    <span class="texto">Cerrar Sesion</span>
                    <i class="fas fa-sign-out" id="log_out"></i>
                </a>
            </div>
        </div>
               
                        <!--BURGUER-->
        
        <script>
            let btn = document.querySelector("#btn");
            let left_sidebar = document.querySelector(".left_sidebar");
            let searchBtn = document.querySelector(".fa-search");
            
            btn.onclick = function() {
                left_sidebar.classList.toggle("active");
            }
            searchBtn.onclick = function() {
                left_sidebar.classList.toggle("active");
            }
            
        </script>
        
        <!-----------------------------------main-content(EXEL)--------------------------------------------------->
        <div class="main-content">
            <div class="write-post-container">
                <div class="user-profile">
                    <img src="images/perfilsidebar.png">
                    <div>
                        <p>Usuario</p>
                        <small>Public</small>
                    </div>

                </div>
                <br>
                <div class="post-input-container">
                    <div class="checkbox">
                        <button type="button" class="btn btn-light" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
                          ¿Que desea publicar?
                        </button>
                    </div>

                        <!--MODAL-->
                              
                        <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                        <div class="modal-dialog">
                          <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="staticBackdropLabel"><center>Crear publicacion</center></h5>
                              <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="user-profile-modal">
                                <img src="images/perfilsidebar.png">
                                <div>
                                    <p>Usuario</p>
                                </div>
                                    
                            </div>
                            <div class="post-input-container">
                                <textarea rows="3" placeholder="Que estas Pensando,  Axel?"></textarea>
                            </div>
                            <button type="button" class="btn btn-outline-light"><span><i class="fa-regular fa-file-plus" style="color: #000000;"></i>
                                </span>Agregar Imagen</button>
                            <div class="modal-footer">
                                <div class="d-grid gap-2">
                                    <button class="btn btn-primary" type="button">Publicar</button>
                                </div>                            
                            </div>
                          </div>
                        </div>
                      </div>
                        <!--FIN MODAL-->
                    <div class="add-post-links">
                        <a href="#"><img src="images/camera.png">Agregar Img</a>
                        <a href="#"><img src="images/upload.png">Subir Imagen</a>
                    </div>
                </div>
            </div>

            <div class="post-container">
                <div class="user-profile">
                    <img src="images/perfilsidebar.png">
                    <div>
                        <p>Usuario</p>
                        <small>Public</small>
                    </div>
                </div>
                <br>
                <p class="post-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae qui laboriosam voluptatum harum atque optio ipsa eum molestias tempore ex explicabo et cum, facilis facere deleniti, magni dicta enim aliquam?

                </p>
                <p class="post-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae qui laboriosam voluptatum harum atque optio ipsa eum molestias tempore ex explicabo et cum, facilis facere deleniti, magni dicta enim aliquam?

                </p>
                <div class="post-row">
                    <div class="activity-icons">
                        <div><a href="#"><img src="images/heart.png">500k</a></div>
                        <div><a href="#"><img src="images/star.png">120</a></div>
                        <div><a href="#"><img src="images/follow.png">Seguir</a></div>
                    </div>
                    <div class="post-profile-icon">

                    </div>
                </div>
            </div>

            <div class="post-container">
                <div class="user-profile">
                    <img src="images/perfilsidebar.png">
                    <div>
                        <p>Usuario</p>
                        <small>Public</small>
                    </div>

                </div>
                <br>
                <p class="post-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae qui laboriosam voluptatum harum atque optio ipsa eum molestias tempore ex explicabo et cum, facilis facere deleniti, magni dicta enim aliquam?

                </p>
                <img src="images/frasemot.png" class="post-img">
                <br><br>
                <div class="post-row">
                    <div class="activity-icons">
                        <div><a href="#"><img src="images/heart.png">500k</a></div>
                        <div><a href="#"><img src="images/star.png">120</a></div>
                        <div><a href="#"><img src="images/follow.png">Seguir</a></div>
                    </div>
                    <div class="post-profile-icon">

                    </div>
                </div>
            </div>

            <div class="post-container">
                <div class="user-profile">
                    <img src="images/perfilsidebar.png">
                    <div>
                        <p>Usuario</p>
                        <small>Public</small>
                    </div>

                </div>
                <br>
                <p class="post-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae qui laboriosam voluptatum harum atque optio ipsa eum molestias tempore ex explicabo et cum, facilis facere deleniti, magni dicta enim aliquam?

                </p>
                <p class="post-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae qui laboriosam voluptatum harum atque optio ipsa eum molestias tempore ex explicabo et cum, facilis facere deleniti, magni dicta enim aliquam?

                </p>
                <p class="post-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae qui laboriosam voluptatum harum atque optio ipsa eum molestias tempore ex explicabo et cum, facilis facere deleniti, magni dicta enim aliquam?

                </p>
                <div class="post-row">
                    <div class="activity-icons">
                        <div><a href="#"><img src="images/heart.png">500k</a></div>
                        <div><a href="#"><img src="images/star.png">120</a></div>
                        <div><a href="#"><img src="images/follow.png">Seguir</a></div>
                    </div>
                    <div class="post-profile-icon">

                    </div>
                </div>
            </div>

        </div>
        <!-----------------------------------right-sidebar(VERGAS)------------------------------------------------------------------------->
        <div class="right-sidebar">
            <div class="sidebar-profile">
                <div class="user-profile">
                    <img src="images/perfilsidebar.png" id="foton">
                    <div>
                        <p id="username">1234567891234</p>
                        <small>arroba</small>
                    </div>   
                </div>
                <br>
                <div class="stats">
                    <div class="activity-icons">
                        <div><img src="images/heart.png">500k</a></div>
                        <div><img src="images/star.png">120</a></div>
                        <div><img src="images/friends.png">500</div>
                    </div>
                </div>
            </div>
            <div class="suggested">
                <div class="accordion" id="accordionExample">
                    <div class="accordion-item">
                      <h2 class="accordion-header" id="headingOne">
                        <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                          Accordion Item #1
                        </button>
                      </h2>
                      <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
                        <div class="accordion-body">
                          <strong>This is the first item's accordion body.</strong> It is shown by default, until the collapse plugin adds the appropriate classes that we use to style each element. These classes control the overall appearance, as well as the showing and hiding via CSS transitions. You can modify any of this with custom CSS or overriding our default variables. It's also worth noting that just about any HTML can go within the <code>.accordion-body</code>, though the transition does limit overflow.
                        </div>
                      </div>
                    </div>
                    <div class="accordion-item">
                      <h2 class="accordion-header" id="headingTwo">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                          Accordion Item #2
                        </button>
                      </h2>
                      <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
                        <div class="accordion-body">
                          <strong>This is the second item's accordion body.</strong> It is hidden by default, until the collapse plugin adds the appropriate classes that we use to style each element. These classes control the overall appearance, as well as the showing and hiding via CSS transitions. You can modify any of this with custom CSS or overriding our default variables. It's also worth noting that just about any HTML can go within the <code>.accordion-body</code>, though the transition does limit overflow.
                        </div>
                      </div>
                    </div>
                    <div class="accordion-item">
                      <h2 class="accordion-header" id="headingThree">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                          Accordion Item #3
                        </button>
                      </h2>
                      <div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionExample">
                        <div class="accordion-body">
                          <strong>This is the third item's accordion body.</strong> It is hidden by default, until the collapse plugin adds the appropriate classes that we use to style each element. These classes control the overall appearance, as well as the showing and hiding via CSS transitions. You can modify any of this with custom CSS or overriding our default variables. It's also worth noting that just about any HTML can go within the <code>.accordion-body</code>, though the transition does limit overflow.
                        </div>
                      </div>
                    </div>
                  </div>
            </div>
            <div class="trends">
                <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
                    <div class="carousel-inner">
                      <div class="carousel-item active">
                        <img src="images/reddegen.png" class="d-block w-100" alt="...">
                      </div>
                      <div class="carousel-item">
                        <img src="images/frasemot.png" class="d-block w-100" alt="...">
                      </div>
                      <div class="carousel-item">
                        <img src="images/ahorasi.jpg" class="d-block w-100" alt="...">
                      </div>
                    </div>
                    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
                      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                      <span class="visually-hidden">Previous</span>
                    </button>
                    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
                      <span class="carousel-control-next-icon" aria-hidden="true"></span>
                      <span class="visually-hidden">Next</span>
                    </button>
                  </div>
            </div>
        </div>
    </div>
</body>
</html>