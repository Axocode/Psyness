<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Psyness</title>
            <!-----Bootstrap------->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
            <!-----Bootstrap------->
        <link rel="stylesheet" href="css/pfp.css">
        <script src="https://kit.fontawesome.com/54fa9899e2.js" crossorigin="anonymous"></script>
            <!-----Boxicons------->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" integrity="sha512-9usAa10IRO0HhonpyAIVpjrylPvoDwiPUiKdWk5t3PyolY1cOd4DSE0Ga+ri4AuTroPR5aQvXU9xC6qOPnzFeg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="icon" type="image/jpg" href="images/favicon.jpg"/>    
    </head>
    <body>
        <div id="fb-root"></div>
        <script async defer crossorigin="anonymous" src="https://connect.facebook.net/es_LA/sdk.js#xfbml=1&version=v16.0" nonce="RJPKicjE"></script>
        <div class="container" id="container">
            <div class="burguer" id="burguer">
                <i class="fas fa-bars" id="btn"></i>    
            </div>

            <div class="left_sidebar" id="left_sidebar">
                <div class="logo_content">
                    <div class="img">
                            <!-------Image-------->
                            <img src="images/logosidebar.jpg" width="220"">
                    </div>
                    <div class="img_responsive">
                            <!-------Image-------->
                            <img src="images/favicon.jpg" width="40" id="img_responsive">
                    </div>
                </div>

                <ul class="nav_list">
                    <li>
                        <i class="fas fa-search" id="fa-search"></i>
                        <input type="text" placeholder="Buscar">
                    </li>

                    <li>
                        <a href="feed2.jsp">
                            <i class="fa-sharp fa-solid fa-house"></i>
                            <span class="links_name">Inicio</span>
                        </a>
                        <!---<span class="links_name">Inicio</span>---->
                    </li> 

                    <li>
                        <a href="genero.jsp">
                            <i class="fa-solid fa-venus-mars"></i>
                            <span class="links_name">Red de género</span>
                        </a>
                        <!---<span class="links_name">Inicio</span>---->
                    </li> 

                    <li>
                        <a href="datacenter.jsp">
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
                    <a href="index.jsp?cerrar=true">
                        <span class="texto">Cerrar Sesion</span>
                        <i class="fas fa-sign-out" id="log_out"></i>
                    </a>
                </div>
            </div>

                            <!--BURGUER-->

            <script>

                let btn = document.querySelector("#btn");
                let burguer_div = document.querySelector(".burguer");
                let left_sidebar = document.querySelector(".left_sidebar");
                let searchBtn = document.querySelector(".fa-search");

                document.getElementById("btn").addEventListener("click", open_close_menu);

                function open_close_menu(){
                        burguer_div.classList.toggle("burguer_move");
                        left_sidebar.classList.toggle("active");
                    }


                window.addEventListener("resize", function(){

                    if(window.innerWidth > 200){

                        burguer_div.classList.add("burguer_move");
                        left_sidebar.classList.add("active"); 
                    }

                    if(window.innerWidth < 200){

                       document.getElementById("btn").addEventListener("click", open_close_menu_responsive);

                        function open_close_menu_responsive(){
                            burguer_div.classList.toggle("burguer");
                            left_sidebar.classList.toggle("responsive");
                    } 

                        burguer_div.classList.remove("burguer_move");
                        left_sidebar.classList.remove("active"); 
                    }
                });

            </script> 
            <!-- main content -->
          
            <div class="contenedor-grid">
                <div class="titulo">
                    <div class="card">
                        <div class="card-body">
                            <h1>Selecciona la foto de perfil que mas te agrade</h1>
                        </div>
                    </div>
                </div>
                
                    <div class="pfp-container1">
                       <img src="images/prof1.png" class="fotoperfil"/>
                        <div class="overlay2">
                            <div class="seleccionar">   
                                <a href="#" ><span class="badge bg-light text-dark">Seleccionar</span></a>
                            </div>
                        </div>                        
                    </div>
                
                    <div class="pfp-container2">
                       <img src="images/prof2.png" class="fotoperfil"/>
                        <div class="overlay2">
                            <div class="seleccionar">   
                                <a href="#" ><span class="badge bg-light text-dark">Seleccionar</span></a>
                            </div>
                        </div>                        
                    </div>
                
                    <div class="pfp-container3">
                       <img src="images/prof3.png" class="fotoperfil"/>
                        <div class="overlay2">
                            <div class="seleccionar">   
                                <a href="#" ><span class="badge bg-light text-dark">Seleccionar</span></a>
                            </div>
                        </div>                        
                    </div>
                
                    <div class="pfp-container4">
                       <img src="images/prof4.png" class="fotoperfil"/>
                        <div class="overlay2">
                            <div class="seleccionar">   
                                <a href="#" ><span class="badge bg-light text-dark">Seleccionar</span></a>
                            </div>
                        </div>                        
                    </div>
                
                    <div class="pfp-container5">
                       <img src="images/prof5.png" class="fotoperfil"/>
                        <div class="overlay2">
                            <div class="seleccionar">   
                                <a href="#" ><span class="badge bg-light text-dark">Seleccionar</span></a>
                            </div>
                        </div>                        
                    </div>
                
                    <div class="pfp-container6">
                       <img src="images/prof6.png" class="fotoperfil"/>
                        <div class="overlay2">
                            <div class="seleccionar">   
                                <a href="#" ><span class="badge bg-light text-dark">Seleccionar</span></a>
                            </div>
                        </div>                        
                    </div>
                
                    <div class="pfp-container7">
                       <img src="images/prof7.png" class="fotoperfil"/>
                        <div class="overlay2">
                            <div class="seleccionar">   
                                <a href="#" ><span class="badge bg-light text-dark">Seleccionar</span></a>
                            </div>
                        </div>                        
                    </div>
                
                    <div class="pfp-container8">
                       <img src="images/prof8.png" class="fotoperfil"/>
                        <div class="overlay2">
                            <div class="seleccionar">   
                                <a href="#" ><span class="badge bg-light text-dark">Seleccionar</span></a>
                            </div>
                        </div>                        
                    </div>
                   

            </div>
            <!-- Right Sidebar -->

            <div class="right-sidebar" >
            
            
            <div class="suggested">
                <div class="accordion" id="accordionExample">                    
                    <div class="accordion-item">
                      <h2 class="accordion-header" id="headingTwo">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                          Nota De La Semana
                        </button>
                      </h2>
                      <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
                        <div class="accordion-body">
                            <a class="twitter-timeline" href="https://twitter.com/Axocode1?ref_src=twsrc%5Etfw">Tweets by Axocode1</a> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>
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
                          <a href="https://www.cecyt9.ipn.mx/red-genero-jdb.html" target="blank"><img src="images/reddegen.png" class="d-block w-100"></a>
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
            <div class="cont-feis">
                <div class="feisbuk">
                    <div class="fb-page" data-href="https://www.facebook.com/profile.php?id=100083354409895" data-tabs="timeline" data-width="340" data-height="" data-small-header="false" data-adapt-container-width="false" data-hide-cover="false" data-show-facepile="false">
                        <blockquote cite="https://www.facebook.com/profile.php?id=100083354409895" class="fb-xfbml-parse-ignore">
                            <a href="https://www.facebook.com/profile.php?id=100083354409895">Red de Género Bátiz</a>
                        </blockquote>       
                   </div>
                </div>
            </div>
            
        </div>

    </body>
</html>
