<%-- 
    Document   : indexremsater
    Created on : 8 abr 2023, 18:27:21
    Author     : BD1
--%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="interDatos.Idatos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <link rel="stylesheet" href="css/maincss.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String Iusuario = null;
            String Icorreo = null;
            String correoi = null;
            String Icontra = null;
            String contrai = "";
            String Iid = null;
            String guardar = null;
            String editar = null;
            String accion = "guardar";
            String actualizar = "guardar";
            Idatos datos = null;
            Integer idx = null;
            List<Idatos>lista = null;
            
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
            guardar = request.getParameter( "guardar" );
            Iid = request.getParameter( "id" );
            editar = request.getParameter( "editar" );
            actualizar = request.getParameter( "actualizar" );
            
            if( "Submit".equals( editar ) )
            {
                idx = Integer.parseInt( Iid );
                if( idx < lista.size() )
                {
                    datos = lista.get( idx );
                }
                accion = "actualizar";
            }
            
            if( "Submit".equals( guardar ) || "Submit".equals( actualizar ) )
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
                
                if( "Submit".equals( guardar ) )
                {
                    lista.add( datos );
                }
        %>
        <h1>jalo</h1>
        <% } 
                   
            if( datos == null )
            {
                datos = new Idatos( );
                datos.setIusuario("");               
                datos.setIcontra("");
                datos.setIcorreo("");

            }
            if( !"Submit".equals( guardar ) && !"Submit".equals( actualizar ) )
            {
        %>  
        <div class="wrapper">
        <div class="container main">
            <div class="row">
                <div class="col-md-6 side-image">
                    <!-------Image-------->
                    <img src="images/icono.svg" alt="">
                    <div class="text">
                        <p>Unete a la comunidad de Psyness<i> -Axocode</i></p>
                    </div>
                </div>
                <div class="col-md-6 right">
                     <div class="input-box">
                        <header>Crear cuenta</header>
                        <form id="form1">
                            <div class="input-field">
                                <input id="user" name="user" value="<%=datos.getIusuario()%>" type="text" class="input"/>
                                <label for="user">Nombre de Usuario</label>
                            </div>
                            <div class="input-field">
                                <input id="correo" name="correo" value="<%=datos.getIcorreo()%>" type="text" class="input"/>
                                <label for="correo">Correo</label>
                            </div>
                            <div class="input-field">
                                <input id="pass" name="pass" value="<%=datos.getIcontra()%>" type="password" class="input"/> 
                                <label for="pass">Contraseña</label>
                            </div>
                            <div class="input-field">
                                <input type="submit" id="Guardar" name="<%=accion%>" class="submit" />     
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
    </body>
</html>