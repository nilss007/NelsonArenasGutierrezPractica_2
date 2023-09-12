<%@page import="java.util.ArrayList"%>
<%@page import="com.emergentes.Persona"%>
<%  
    if (session.getAttribute("listaper")==null){
        ArrayList<Persona> lisaux = new ArrayList<Persona>();
        session.setAttribute("listaper", lisaux);
    }
    ArrayList<Persona> lista = (ArrayList<Persona>) session.getAttribute("listaper");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Gestor de Tareas</h1>
        <h2>Nombre: Nelson Arenas Gutierrez</h2>
        <a href="MainServlet?op=nuevo">Nuevo</a>
        <table>
            <tr>
                <th>ID</th>
                <th>Tarea</th>
                <th>Completado</th>
                <th></th>
                <th></th>
            </tr>
            <%
            if (lista != null){
                for(Persona item : lista){             
            %>
            <tr>
                <td><%= item.getId() %></td>
                <td><%= item.getTarea() %></td>
                <td><input type="checkbox" name="Completado" value="ON" checked="checked" /></td>
                <td>
                    <a href="MainServlet?op=editar&id=<%= item.getId() %>">Editar</a>
                </td>
                <td>
                    <a href="MainServlet?op=eliminar&id=<%= item.getId() %>"
                    onclick="return(confirm('Esta seguro de eliminar??'))"
                    >Eliminar</a>
                </td>
            </tr>
            <%
                }
                }
            %>

        </table>
    
    </body>
</html>
