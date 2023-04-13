<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ include file="WEB-INF/jspf/conexion.jspf" %>
<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<!DOCTYPE html>
    <html lang="en">
        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <meta http-equiv="X-UA-Compatible" content="ie=edge">
            <meta name="Description" content="Enter your description here"/>
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.6.0/css/bootstrap.min.css">
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
            <link rel="preconnect" href="https://fonts.googleapis.com">
            <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
            <link href="https://fonts.googleapis.com/css2?family=Abyssinica+SIL&family=Gemunu+Libre&display=swap" rel="stylesheet">
            <link href="https://fonts.googleapis.com/css2?family=Gemunu+Libre&display=swap" rel="stylesheet">
            <link rel="stylesheet" href="css/vista.css">
            <title>VISTA COORDINADOR</title>
        </head>

        <body> <br><br><br><br><br><br>
            <h1 class="text-black"><center>Sistema Universitario</center></h1>
            <h2 class="text-black"><center>Datos de Coordinador</center></h2>

            <sql:query var="result" scope="request" dataSource="${parcialsegundocorte}">
                Select coordinacion.id, coordinacion.cedula_cor as cedula, coordinacion.nombre_cor as nombre, 
                coordinacion.apellido_cor as apellido, coordinacion.correo_cor as correo, coordinacion.telefono_cor as telefono, 
                coordinacion.programa_cor as programa, coordinacion.facultad_cor as facultad, 
                coordinacion.contra_cor as contra
                from coordinacion
            </sql:query>
        <fieldset class="contenedor"> <br><br>
            <center><table border="1" class="table table-striped table-hover">
                <thead >
                    <tr><th>Cedula</th>
                        <th>Nombre</th>
                        <th>Apellido</th>
                        <th>Correo</th>
                        <th>Telefono</th>
                        <th>Programa</th>
                        <th>Facultad</th>
                        <th>Clave</th>
                        <th colspan="2"><center> Acciones </center> </th></tr>
                </thead>
                <tbody>
                    <c:forEach var="fila" items="${result.rows}">
                        <tr>
                            <td><c:out value="${fila.cedula_cor}" /></td>
                            <td class=""><c:out value="${fila.nombre_cor}" /></td>
                            <td><c:out value="${fila.apellido_cor}" /></td>
                            <td><c:out value="${fila.correo_cor}" /></td>
                            <td><c:out value="${fila.telefono_cor}" /></td>
                            <td><c:out value="${fila.programa_cor}" /></td>
                            <td><c:out value="${fila.facultad_cor}" /></td>
                            <td><c:out value="${fila.contra_cor}" /></td>
                            <td><br><a href="eliminarCoordinador.jsp?id=${fila.id}">
                                <center><input id="botonn" class="btn btn-danger" type="submit" value="Eliminar"/></center></a></td>
                            <td><br><a href="actualizarCoordinador.jsp?id=${fila.id}">
                                <input id="botonn" class="btn btn-warning" type="submit" value="Editar"/></a></td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table></center> 
            <br>

            <center><a href="agregarCoordinador.jsp?id=${fila.id}">
                <input id="boton"  class="btn btn-success" type="submit" value="Nuevo Coordinador"/> 
            </a></center> 
            <br>

            <center> <a href="principal_adm.jsp"> <input id="botonn"  class="btn btn-dark" type="submit" value="Regresar "/></a></center>
        </fieldset>

            <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.slim.min.js"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.1/umd/popper.min.js"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.6.0/js/bootstrap.min.js"></script>
        </body>
</html>
