<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ include file="WEB-INF/jspf/conexion.jspf" %>
<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<!DOCTYPE html>
    <html lang="en">
        <head>
            <meta charset="utf-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <meta http-equiv="Conte" content="ie=edge">
            <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.6.0/css/bootstrap.min.css">
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
            <link rel="preconnect" href="https://fonts.googleapis.com">
            <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
            <link href="https://fonts.googleapis.com/css2?family=Abyssinica+SIL&family=Gemunu+Libre&display=swap" rel="stylesheet">
            <link href="https://fonts.googleapis.com/css2?family=Gemunu+Libre&display=swap" rel="stylesheet">
            <link rel="stylesheet" href="css/vista.css">
            <title>VISTA PROYECTO</title>
        </head>

        <body> <br><br><br><br><br><br>
            <h1 class="text-black"><center>Sistema Universitario</center></h1>
            <h2 class="text-black"><center>Ante Proyecto Alumno</center></h2>

            <sql:query var="result" scope="request" dataSource="${parcialsegundocorte}">
                Select estudiante.id, estudiante.cedula_est as cedula, estudiante.nombre_est as nombre, 
                estudiante.apellido_est as apellido, estudiante.correo_est as correo, estudiante.telefono_est as telefono, 
                estudiante.jornada_est as jornada, estudiante.url_est as url, estudiante.fecha_est as fecha
                from estudiante
            </sql:query>
        <fieldset class="contenedor"> <br><br><br>    
            <center><table border="1" class="table table-striped table-hoverb">
                    <thead >
                        <tr><th>Cedula</th>
                            <th>Nombre</th>
                            <th>Apellido</th>
                            <th>Correo</th>
                            <th>Telefono</th>
                            <th>Jornada</th>
                            <th>Url</th>
                            <th>Fecha</th>
                    </thead>

                    

                    <tbody>
                        <c:forEach var="fila" items="${result.rows}">
                            <tr>
                                <td><c:out value="${fila.cedula_est}" /></td>
                                <td class=""><c:out value="${fila.nombre_est}" /></td>
                                <td><c:out value="${fila.apellido_est}" /></td>
                                <td><c:out value="${fila.correo_est}" /></td>
                                <td><c:out value="${fila.telefono_est}" /></td>
                                <td><c:out value="${fila.jornada_est}" /></td>
                                <td><c:out value="${fila.url_est}" /></td>
                                <td><c:out value="${fila.fecha_est}" /></td>
                            </tr>
                        </c:forEach>
                    </tbody>
            </table></center> 
            <br>

          <center> <a href="principal_eva.jsp"> <input id="botonn"  class="btn btn-dark mb-3" type="submit" value="Regresar "/></a></center>
        

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.1/umd/popper.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.6.0/js/bootstrap.min.js"></script>
</body>
</html>
