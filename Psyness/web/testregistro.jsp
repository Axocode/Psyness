
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="interDatos.Idatos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="background-color: #F7FFF7">
        <%
            String Iusuario = null;
            String Icorreo = null;
            String Icontra = null;
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
                <svg xmlns="http://www.w3.org/2000/svg" style="display: none;">
        <symbol id="check-circle-fill" fill="currentColor" viewBox="0 0 16 16">
          <path d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zm-3.97-3.03a.75.75 0 0 0-1.08.022L7.477 9.417 5.384 7.323a.75.75 0 0 0-1.06 1.06L6.97 11.03a.75.75 0 0 0 1.079-.02l3.992-4.99a.75.75 0 0 0-.01-1.05z"/>
        </symbol>
        <symbol id="info-fill" fill="currentColor" viewBox="0 0 16 16">
          <path d="M8 16A8 8 0 1 0 8 0a8 8 0 0 0 0 16zm.93-9.412-1 4.705c-.07.34.029.533.304.533.194 0 .487-.07.686-.246l-.088.416c-.287.346-.92.598-1.465.598-.703 0-1.002-.422-.808-1.319l.738-3.468c.064-.293.006-.399-.287-.47l-.451-.081.082-.381 2.29-.287zM8 5.5a1 1 0 1 1 0-2 1 1 0 0 1 0 2z"/>
        </symbol>
        <symbol id="exclamation-triangle-fill" fill="currentColor" viewBox="0 0 16 16">
          <path d="M8.982 1.566a1.13 1.13 0 0 0-1.96 0L.165 13.233c-.457.778.091 1.767.98 1.767h13.713c.889 0 1.438-.99.98-1.767L8.982 1.566zM8 5c.535 0 .954.462.9.995l-.35 3.507a.552.552 0 0 1-1.1 0L7.1 5.995A.905.905 0 0 1 8 5zm.002 6a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"/>
        </symbol>
        </svg>
 
        <div class="alert alert-success d-flex align-items-center" role="alert">
            <svg class="bi flex-shrink-0 me-2" width="24" height="24" role="img" aria-label="Success:"><use xlink:href="#check-circle-fill"/></svg>
            <div>
                <h1>Exito</h1>
                <a href="jsp2.jsp">Volver a lista</a>
            </div>
        </div> 
                <script>
                    console.log("Exito");
                </script>

        <%
            }
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
       
        
           <h1>
            Agrega un nuevo estudiante <br>         
            <small class="text-muted">Selecciona enviar para guardar los datos</small>
        </h1>
           <br><br>
        <form id="form1">
            <table border="1">
                <tr>
                    <td>Usuario</td>
                    <td><input id="user" name="user" value="<%=datos.getIusuario()%>" type="text"/></td>

                </tr>
                <tr>
                    <td>Contraseña</td>
                    <td><input id="pass" name="pass" value="<%=datos.getIcontra()%>" type="text"/>                      
                    </td>
                </tr>
                <tr>
                    <td>Correo</td>
                    <td><input id="correo" name="correo" value="<%=datos.getIcorreo()%>" type="text"/></td>

                </tr>
                <tr >
                    <td colspan="2">
                        <input type="submit" id="Guardar" name="<%=accion%>" />
                    </td>
                </tr>
            </table>
        </form>
       
          
                    
        <%
            }
            out.println(datos.getIcontra());
            out.println(datos.getIusuario());
            out.println(datos.getIcorreo());
            if(accion != null && "guardar".equals(accion) ){
        %>
        
        
        <%
            }
            %>
    </body>
</html>
