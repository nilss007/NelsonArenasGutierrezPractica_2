<%@page import="com.emergentes.Persona"%>
<%
    Persona reg = (Persona) request.getAttribute("miobjper");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Adicionar tarea</h1>
        <form action="MainServlet" method="post">
            <table>
                <tr>
                    <td>ID</td>
                    <td><input type="text" name="id" value="<%= reg.getId() %>" size="2" readonly></td>
                </tr>
                <tr>
                    <td>Tarea</td>
                    <td><input type="text" name="tarea" value="<%= reg.getTarea() %>"></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit"  value="Enviar"></td>
                </tr>
            </table>
            
        </form>
    </body>
</html>
