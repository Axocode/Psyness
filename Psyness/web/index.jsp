<%-- 
    Document   : indexremsater
    Created on : 8 abr 2023, 18:27:21
    Author     : BD1
--%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="interDatos.Idatos"%>
<%@page session="true"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
  
<!DOCTYPE html>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <link rel="stylesheet" href="css/maincss.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
        <title>Psyness</title>
        <link rel="icon" type="image/jpg" href="images/favicon.jpg"/>
    
    </head>
    <body>
        
        <%      

            String contrai = "";
            String actualizar = "guardar";
            HttpSession sesion = request.getSession();
            String Iusuario = null;
            String Icorreo = null;
            String correoi = null;
            String Icontra = null;
            String Iedad = null;
            String Iid = null;
            String guardar = null;
            String accion = "guardar";
            Idatos datos = null;
            Integer idx = null;
            String cadenaEsp = null;
            List<Idatos>lista = null;
            
            if (request.getParameter("cerrar")!= null) {
                    session.invalidate();
                    %>
                    <script>window.location.href = "feed2.jsp";</script>
                    <%
                }
                
            session = request.getSession( true );
            if( session != null )
            {
                if( session.getAttribute("lista") == null )
                {
                    session.setAttribute("lista", new ArrayList<Idatos>());
                }
                lista = (List)session.getAttribute("lista");
            }
            Iusuario = request.getParameter( "user" );
            Icorreo = request.getParameter( "correo" );
            Icontra = request.getParameter( "pass" );
            Iedad = request.getParameter( "edad" );
            guardar = request.getParameter( "guardar" );

            
            if( "Submit".equals( guardar ) )
            {
                if( "Submit".equals( guardar ) )
                {
                    datos = new Idatos( );
                }
                else
                {
                    datos = lista.get( Integer.parseInt( Iid ) );
                }
                datos.setIusuario(Iusuario);
                datos.setIcontra(Icontra);
                datos.setIcorreo(Icorreo);
                datos.setIedad(Iedad);
                
                cadenaEsp = Iusuario.replaceAll(" ","").toLowerCase();
                datos.setIid(cadenaEsp);
                
                sesion.setAttribute("Idprima", cadenaEsp);
                sesion.setAttribute("INombreuser", Iusuario);

                
                if( "Submit".equals( guardar ) )
                {
                    lista.add( datos );
                    response.sendRedirect("feed2.jsp");
                    
                }
        %>
            
        <% } 
                   
            if( datos == null )
            {
                datos = new Idatos( );
                datos.setIusuario("");               
                datos.setIcontra("");
                datos.setIcorreo("");
                datos.setIedad("");
            }
            if( !"Submit".equals( guardar ) )
            {
        %>  
        <div class="wrapper">
        <div class="container main">
            <div class="row">
                <div class="col-md-6 side-image">
                    <!-------Image-------->
                    <img src="images/Icono.svg" alt="">
                    <div class="text">
                        <p>Unete a la comunidad de Psyness<i> -Axocode</i></p>
                    </div>
                </div>
                <div class="col-md-6 right">
                     <div class="input-box">
                        <header>Crear cuenta</header>
                        <form id="form1" method="POST">
                            <div class="input-field">
                                <input id="user" name="user" value="<%=datos.getIusuario()%>" type="text" class="input"  minlength="6" maxlength="13" required/>
                                <label for="user">Nombre de Usuario</label>
                            </div>
                            <div class="input-field">
                                <input id="edad" name="edad" value="<%=datos.getIedad()%>" type="text" class="input" required/>
                                <label for="edad">Edad</label>
                            </div>
                            <div class="input-field">
                                <input id="correo" name="correo" value="<%=datos.getIcorreo()%>" type="email" class="input" required onblur="validar(form.correo.value)" />
                                <label for="correo">Correo</label>
                            </div>
                            <div class="input-field">
                                <input id="pass" name="pass" value="<%=datos.getIcontra()%>" type="password" class="input" required/> 
                                <label for="pass">Contraseña</label>
                            </div>
                            <div class="input-field">
                                <input type="submit" id="Guardar" name="<%=accion%>"  class="submit"/>     
                            </div>
                            <div class="signin">
                                <span>Ya tienes una cuenta? <a href="login.jsp">Iniciar Sesion</a></span>
                            </div>
                        </form>
                     </div>
                </div>
            </div>
        </div>
    </div>
        <% } %>
        <script>
            function validar(correo){
                 var expReg= /^[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?$/;
                 var esValido= expReg.test(correo);
                 if(esValido !== false) {
                    alert("Correo valido");
            }
        </script>
    </body>
</html>
