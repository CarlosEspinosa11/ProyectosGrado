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
    <link href="https://fonts.googleapis.com/css2?family=Abyssinica+SIL&family=Gemunu+Libre&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Gemunu+Libre&display=swap" rel="stylesheet"><link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.6.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="stylesheet" href="css/estilos.css">
    <title>ELIMINAR COORDINADOR</title>
    </head>

    <body>
        <h1 class="text-white"><center>Sistema Universitario</center></h1>  
        <h2 class="text-white"><center>Eliminar Coordinador</center></h2>
        
        <c:if test="${param.id != null}">
                <sql:update var="result" dataSource="${parcialsegundocorte}">
                    DELETE FROM coordinacion
                    WHERE id= ${param.id}
                </sql:update>

                <c:if test="${result ==1}">
                <br><br><br><br> <br><br><br><br>
                    <center>  <div class="card" style="width: 18rem;">
                        <div class="card-body">
                            <p class="text-black">Registro Eliminado Satisfactorioamente...</p>
                            <a href="vista_coordinacion.jsp">
                                <center><input class="btn" id="boton"type="submit" value="Regresar"/></center>
                            </a>
                        </div>
                    </div></center>
                </c:if>
        </c:if>


        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.1/umd/popper.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.6.0/js/bootstrap.min.js"></script>
    </body>
</html>