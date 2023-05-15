<%@page import="interPub.Ireqs"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
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
            List<Ireqs> listita = null;
            session = request.getSession( true );
            
            if( session != null )
            {
                if( session.getAttribute("listita") == null )
                {
                    session.setAttribute("listita", new ArrayList<Ireqs>());
                }
                listita = (List)session.getAttribute("listita");
            }
        %>
            
        
        <table class="table table-striped table-hover">
            <tr>           
                <td>#</td>
                <td>Numero</td>
                <td>Contenido</td>
                <td>Nombre</td>
                <td>Favoritos</td>
                <td>Megusta</td>
                 <td>Acciones</td>
            </tr>
            <%
              if( listita != null && !listita.isEmpty() )
              {
                for( Ireqs Redatos : listita)
                {
            %>
            <tr>
                <td><%=i + 1%></td>
                <td><%= Redatos.getPubNum()%></td>
                <td><%=Redatos.getPubCont()%></td>
                <td><%=Redatos.getPubNom()%></td>
                <td><%=Redatos.getPubNumFavs()%></td>
                <td><%=Redatos.getPubNumMegust()%></td>
                <td>
                    <div class="btn-group" role="group" aria-label="Basic mixed styles example">
                        <button type="button" class="btn btn-danger"><a href="tabla_1.jsp?id=<%=i%>&borrar=Submit" class="link-light">Borrar</a> </button>

                    </div>
                </td>
            </tr>      
            
            <%
               }
              }
            %>
           <h1>
                                   
        </h1>
        </table>
            </div>
    </body>
</html>