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
    
</head>
<body>
    <div class="container">
        <!-----------------------------------left-sidebar(YORCH)-------------------------------------------------->
        <div class="left-sidebar">

        </div>
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

        </div>
    </div>
</body>
</html>