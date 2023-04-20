<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="interDatos.Idatos"%>
<%@page import="interDatos.Iseria"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <div class="p-3 mb-1 bg-light">
        <title>JSP Page</title>
    </head>
    <body style="background-color: #F7FFF7">
        <h1>
            BASE DE DATOS PSYNESS <br>         
            <small class="text-muted">Recopilador de datos  </small>
        </h1><br><br>
        <%
            int i = 0;
            List<Idatos> lista = null;
            String Iid = null;
            String borrar = null;
            session = request.getSession( true );
            
            if( session != null )
            {
                if( session.getAttribute("lista") != null )
                {
                    lista = (List)session.getAttribute( "lista" );
                }
            }
            Iid = request.getParameter( "id" );
            borrar = request.getParameter( "borrar" );
            if( "Submit".equals( borrar ) )
            {
                lista.remove( Integer.parseInt(Iid) );
            }
        %>
            
        
        <table class="table table-striped table-hover">
            <tr>           
                <td>#</td>
                <td>Id</td>
                <td>Usuario</td>
                <td>Contraseña</td>
                <td>Correo</td>
                <td>Edad</td>
                <td>Activa</td>
                 <td>Acciones</td>
            </tr>
            <%
              if( lista != null && !lista.isEmpty() )
              {
                for( Idatos datos : lista)
                {
            %>
            <tr>
                <td><%=i + 1%></td>
                <td><%= datos.getIid() %></td>
                <td><%=datos.getIusuario()%></td>
                <td><%=datos.getIcontra()%></td>
                <td><%=datos.getIcorreo()%></td>
                <td><%=datos.getIedad()%></td>
                <td><%=datos.getIactiva()%></td>
                <td>
                    <div class="btn-group" role="group" aria-label="Basic mixed styles example">
                        <button type="button" class="btn btn-danger"><a href="tabla.jsp?id=<%=i%>&borrar=Submit" class="link-light">Borrar</a> </button>

                    </div>
                </td>
            </tr>      
            
            <%
               out.println(datos.getIcontra()); }
              }
            %>
           <h1>
                                   
        </h1>
        </table>
            </div>
    </body>
</html>
