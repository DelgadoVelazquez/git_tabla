<%@ page import="mx.edu.utez.pruebagit.dao.UserDao" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="mx.edu.utez.pruebagit.model.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/CSS/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/CSS/datatables.css">
    <title>Title</title>
</head>
<body>


    <table>
        <thead>
            <tr>
                <th>Nombre_usuario</th>
                <th>Correo</th>
                <th>Contraseña</th>
                <th>Actualizar</th>
                <th>Eliminar</th>
            </tr>
        </thead>
        <tbody>
            <%
                //Esta forma de buscar y poner información es la más rudimentaria
                UserDao dao = new UserDao();
                ArrayList<User> lista = dao.getAll(); //Estamos obteniendo la lista
                for(User u : lista){ %>
                    <tr>
                        <td><%=u.getUser_name()%></td>
                        <td><%=u.getEmail()%></td>
                        <td><%=u.getPass()%></td>
                        <td><a href="actualizarUsuario?id=<%=u.getId()%>">Actualizar</a></td> <!-- funcionalidades del update -->
                        <td><a href="borrarUsuario">Borrar</a></td> <!-- funcionalidades del delete -->
                    </tr>
               <% } %>
        </tbody>
    </table>
    <script src="${pageContext.request.contextPath}/JS/jquery-3.7.0.js"></script>
    <script src="${pageContext.request.contextPath}/JS/bootstrap.js"></script>
    <script src="${pageContext.request.contextPath}/JS/datatables.js"></script>
    <script src="${pageContext.request.contextPath}/JS/dataTables.bootstrap5.js"></script>
    <script src="${pageContext.request.contextPath}/JS/es-MX.json"></script>
    <script>
        document.addEventListener('DOMContentLoaded', () => {
            const table = document.getElementById('example');
            new DataTable(table, {
                language: {
                    url: '${pageContext.request.contextPath}/JS/es-MX.json'
                }
            });
        });
    </script>
</body>
</html>
