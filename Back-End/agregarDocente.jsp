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
        <link href="https://fonts.googleapis.com/css2?family=Abyssinica+SIL&family=Gemunu+Libre&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Gemunu+Libre&display=swap" rel="stylesheet"><link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
        <link rel="stylesheet" href="css/styles.css">
        <title>AGREGAR DOCENTE</title>
    </head>
    <body> 
        <c:if test="${param.nombre_doc == null}" >
            <form method="post">     
                <form action="index.html" method="post">
                    <tr><td></td>
                        <td><input type="hidden" name="id" value="${fila.id}"/></td>
                    </tr>

                    <h1>Registro docente</h1>
                    <fieldset>
                            <legend><span class="number">1</span>Informacion personal</legend>
                            <label for="nombre_doc">Nombre: </label>
                            <input type="text" required id="nombre_doc" name="nombre_doc" value="${fila.nombre_doc}">

                            <label for="apellido_doc">Apellido:</label>
                            <input type="text" required id="apellido_doc" name="apellido_doc" value="${fila.apellido_doc}">
                            
                            
                            <label for="correo_doc">Email:</label>
                            <input type="email" required id="correo_doc" name="correo_doc" value="${fila.correo_doc}">

                            <label for="cedula_est">Número cédula</label>
                            <input type="number" required id="cedula_est" name="cedula_est" value="${fila.cedula_doc}">
                            
                            <label for="cedula_doc">Password:</label>
                            <input type="password" required id="cedula_doc" name="cedula_doc" value="${fila.contra_doc}">

                            <label for="telefono_doc">Número contacto</label>
                            <input type="number" required id="telefono_doc" name="telefono_doc" value="${fila.telefono_doc}" >  
                    </fieldset>
                
                    <fieldset>
                        <legend><span class="number">2</span>Informacion universitaria</legend>

                            <label>Jornada:</label>
                            <input type="radio" required id="jornada_doc"  name="jornada_doc" value="Diurna"><label for="jornada_doc" class="light">Diurna</label><br>
                            <input type="radio" required id="jornada_doc"  name="jornada_doc" value="Nocturna"><label for="jornada_doc" class="light">Nocturna</label> <br><br>
                            
                            <label>Facultad: </label>
                            <input type="radio" required id="facultad_doc" name="facultad_doc" value="Facultad de ciencias socioeconomicas y empresariales"><label for="primero" class="light">Facultad de ciencias socioeconomicas y empresariales</label><br>
                            <input type="radio" required id="facultad_doc" name="facultad_doc" value="Facultad de ciencia naturales e ingenierías" ><label for="over_13" class="light">Facultad de ciencia naturales e ingenierías</label> <br><br><br>
                            
                        
                            <label for="materia_doc">Materias: </label>
                            <select  required id="materia_doc" name="materia_doc" value="${fila.materia_doc}">
                                    <optgroup label="Facultad de ciencias socioeconomicas y empresariales">
                                        <optgroup label="Tecnologías">
                                            <option value="Atletismo I">Atletismo I</option>
                                            <option value="Legislacion laboral">Legislacion laboral</option>
                                            <option value="Patronaje y taller de ensamble I">Patronaje y taller de ensamble I</option>
                                            <option value=" Macroeconomia">Macroeconomia</option>
                                            <option value="Procesos administrativos">Procesos administrativos</option>
                                            <option value="Biotecnologia en la agroindustria">Biotecnología en la agroindustria</option>
                                         </optgroup>

                                        <optgroup label="Ingenierias">
                                            <option value="Estadistica inferencial">Estadistica inferencial</option>
                                            <option value="Procedimiento tributario">Procedimiento tributario</option>
                                            <option value="Profesional en Diseño de Moda">Profesional en Diseño de Moda</option>
                                            <option value="Legislación financiera">Legislación financiera</option>
                                            <option value="Analisis de estados financiero">Análisis de estados financiero</option>
                                            <option value="Teoria y Diseño en las Organizaciones">Teoría y Diseño en las Organizaciones</option>
                                        </optgroup>
                                    </optgroup>


                                    <optgroup label="Facultad de ciencia naturales e ingenierías">
                                        <optgroup label="Tecnologías">
                                            <option value="Electronica I">Electrónica I</option>
                                            <option value="Mecanica">Mecanica</option>
                                            <option value="Hidrologia">Hidrología</option>
                                            <option value="Quimica Inorganica">Química Inorgánica</option>
                                            <option value="Laboratorio de instalaciones e iluminacion I">Laboratorio de instalaciones e iluminación I</option>
                                            <option value="Analisis de Circuitos">Análisis de Circuitos</option>
                                            <option value="Aplicaciones moviles">Aplicaciones móviles</option>
                                            <option value="Seguridad industrial">Seguridad industrial</option>
                                            <option value="Economia del Transporte">Economía del Transporte</option>
                                        </optgroup>

                                        <optgroup label="Ingenierías">
                                            <option value="Ondas y particulas">Ondas y partículas</option>
                                            <option value="Analisis numerico">Análisis numérico</option>
                                            <option value="Geoestadistica">Geoestadística</option>
                                            <option value="Hidrologia">Hidrología</option>
                                            <option value="Ingenieria Electrica">Ingeniería Eléctrica</option>
                                            <option value="Telefonia IP">Telefonía IP</option>
                                            <option value="Gestion y gobierno TI">Gestión y gobierno TI</option>
                                            <option value="Ecuaciones Diferenciales">Ecuaciones Diferenciales</option>
                                        </optgroup>
                                    </optgroup>
                            </select>
                            
                            
                        
                    </fieldset>
                    <button type="submit" value="Guardar">Guardar</button>
                </form>
            </form>
        </c:if>

        <c:if test="${param.nombre_doc !=null}" >
            <sql:update var="result" dataSource="${parcialsegundocorte}">
                INSERT INTO
                docente (nombre_doc, cedula_doc, apellido_doc, correo_doc, telefono_doc, jornada_doc, facultad_doc, materia_doc, contra_doc)
                VALUES ('${param.nombre_doc}',
                '${param.cedula_doc}',
                '${param.apellido_doc}',
                '${param.correo_doc}',
                '${param.telefono_doc}',
                '${param.jornada_doc}',
                '${param.facultad_doc}',
                '${param.materia_doc}',
                '${param.contra_doc}'
                )
            </sql:update>

            <c:if test="${result == 1}" >
            <br><br><br><br> <br><br><br><br>
            <center>  <div class="card" style="width: 18rem;">
                    <div class="card-body">
                        <p>Registro Insertado Satisfactoriamente!</p>
                        <a href="vista_docente.jsp">Regresar</a>
                    </div>
            </div></center>
            </c:if>
        </c:if>  


        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.1/umd/popper.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.6.0/js/bootstrap.min.js"></script>
    </body>
</html>