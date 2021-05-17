<%@page import="Controlador.Usuario"%>
<%@page import="Controlador.Altas"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Usuario usuario = new Usuario();
            if (session.getAttribute("usuario") == null) {
                response.sendRedirect("../index.jsp");
            } else {
                usuario = (Usuario) session.getAttribute("usuario");
                int idPublicacion = Integer.parseInt(request.getParameter("idPublication"));
                String comment = request.getParameter("comment");

                Altas alta = new Altas();
                alta.comentar(usuario.getId(), idPublicacion, comment);
                response.sendRedirect("foro.jsp");
            }

        %>
    </body>
</html>
