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
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Roboto:100,300,400,500,700|Philosopher:400,400i,700,700i" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Abyssinica+SIL&family=Gemunu+Libre&display=swap" rel="stylesheet">
        <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
        <link href="lib/owlcarousel/assets/owl.theme.default.min.css" rel="stylesheet">
        <link href="lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
        <link href="lib/animate/animate.min.css" rel="stylesheet">
        <link href="lib/modal-video/css/modal-video.min.css" rel="stylesheet"><link href="https://fonts.googleapis.com/css2?family=Gemunu+Libre&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="css/main.css">
        <title>ESTUDIANTE</title>
    </head>

    <body> <br><br><br><br>
        <section id="features" class="padd-section text-center wow fadeInUp">

            <div class="container">
            <div class="section-title text-center">
                <h1 class="d-flex justify-content-center">ESTUDIANTE</h1><br><br>
            </div>
            </div>

            <div class="container" id="contenedor-principal">
                <div class="row d-flex justify-content-center" id="fila-2">
                    <div class="col-md-6 col-lg-4">
                        <a href="vista_subidapro.jsp">
                            <div class="feature-block">
                                <img src="images/subir.png" alt="img" class="img-fluid">
                                <h4>SUBIR</h4>
                            </div>
                        </a>
                    </div>
        
                    <div class="col-md-6 col-lg-4">
                        <a href="vista_calestudiante.jsp">
                            <div class="feature-block">
                                <img src="images/show.png" alt="img" class="img-fluid">
                                <h4>VER CALIFICACION</h4>
                            </div>
                        </a>
                    </div>
                </div>
    
                <div class="row d-flex justify-content-center" id="fila-2">
                    <div class="col-md-6 col-lg-4">
                        <a href="https://www.dropbox.com/sh/tz5ovj8xrb5ss5z/AABXkhrmS5biHdQZ6SektJtta/DOCUMENTOS%20DE%20GRADO?dl=0&subfolder_nav_tracking=1">
                            <div class="feature-block">
                                <img src="images/formato.png" alt="img" class="img-fluid">
                                <h4>FORMATOS PROYECTOS</h4>
                            </div>
                        </a>   
                    </div>

                    <div class="col-md-6 col-lg-4">
                        <a href="https://www.uts.edu.co/sitio/wp-content/uploads/normatividad/acuerdos/acu-88.pdf?_t=1651164114">
                            <div class="feature-block">
                                <img src="images/calendario.png" alt="img" class="img-fluid">
                                <h4>CALENDARIO ACADEMICO</h4>
                            </div>
                        </a>
                    </div>
                </div>
            </div>

            <center><a href="index.jsp"><input id="botonn"  class="btn btn-dark" type="submit" value="Salir "/></a></center>

        </section>


<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.1/umd/popper.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.6.0/js/bootstrap.min.js"></script>
</body>
</html>
