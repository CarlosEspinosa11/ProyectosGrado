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
        <link href='https://fonts.googleapis.com/css?family=Nunito:400,300' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.6.0/css/bootstrap.min.css">
        <link href="https://fonts.googleapis.com/css2?family=Abyssinica+SIL&family=Gemunu+Libre&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Gemunu+Libre&display=swap" rel="stylesheet"><link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
        <link rel="stylesheet" href="css/styles.css">
        <title>AGREGAR ESTUDIANTE</title>
    </head>

    <body>
        <c:if test="${param.nombre_est == null}" >
            <form method="post"> 
                <form action="index.html" method="post">
                    <tr><td></td>
                        <td><input type="hidden" name="id" value="${fila.id}"/></td>
                    </tr>

                    <h1>Registro estudiante</h1>
                    <fieldset>
                            <legend><span class="number">1</span>Informacion personal</legend>
                            <label for="nombre_est">Nombre: </label>
                            <input type="text" required id="nombre_est" name="nombre_est" value="${fila.nombre_est}">

                            <label for="apellido_est">Apellido:</label>
                            <input type="text" required id="apellido_est" name="apellido_est" value="${fila.apellido_est}">
                            
                            
                            <label for="correo_est">Email:</label>
                            <input type="email" required id="correo_est" name="correo_est" value="${fila.correo_est}">

                            <label for="cedula_est">Número cédula</label>
                            <input type="number" required id="cedula_est" name="cedula_est" value="${fila.cedula_est}">
                            
                            <label for="contra_est">Password:</label>
                            <input type="password" required id="contra_est" name="contra_est" value="${fila.contra_est}">

                            <label for="telefono_est">Número contacto</label>
                            <input type="number" required id="telefono_est" name="telefono_est" value="${fila.telefono_est}" >  
                    </fieldset>
                
                    <fieldset>
                        <legend><span class="number">2</span>Informacion universitaria</legend>

                            <label>Jornada:</label>
                            <input type="radio" required id="jornada_est"  name="jornada_est" value="Diurna"><label for="jornada_est" class="light">Diurna</label><br>
                            <input type="radio" required id="jornada_est"  name="jornada_est" value="Nocturna"><label for="jornada_est" class="light">Nocturna</label> <br><br>
                        
                            <label for="programa_est">Programa Academico: </label>
                            <select  required id="programa_est" name="programa_est" value="${fila.programa_est}">
                                    <optgroup label="Facultad de ciencias socioeconomicas y empresariales">
                                        <optgroup label="Tecnologías">
                                            <option value="Tecnologia en Entrenamiento Deportivo">Tecnología en Entrenamiento Deportivo</option>
                                            <option value="Tecnologia en Manejo de la Informacion Contable">Tecnologia en Manejo de la Información Contable</option>
                                            <option value="Tecnologia en Gestión de la Moda">Tecnologia en Gestion de la Moda</option>
                                            <option value=" Tecnologia en Gestión Bancaria y Financiera"> Tecnologia en Gestión Bancaria y Financiera</option>
                                            <option value="Tecnologia en Mercadeo y Gestión Comercial">Tecnologia en Mercadeo y Gestion Comercial</option>
                                            <option value="Tecnologia en Gestión Empresarial">Tecnologia en Gestion Empresarial</option>
                                            <option value="Tecnologia en Gestión Agroindustrial">Tecnologia en Gestión Agroindustrial</option>
                                         </optgroup>

                                        <optgroup label="Ingenierías">
                                            <option value="Profesional en Cultura Fisica y Deporte">Profesional en Cultura Física y Deporte</option>
                                            <option value="Contaduria Publica">Contaduria Publica</option>
                                            <option value="Profesional en Diseño de Moda">Profesional en Diseño de Moda</option>
                                            <option value="Profesional en Administracion Financiera"> 	Profesional en Administracion Financiera</option>
                                            <option value="Profesional en Mercadeo">Profesional en Mercadeo</option>
                                            <option value="Administracion de Empresas">Administracion de Empresas</option>
                                        </optgroup>
                                    </optgroup>


                                    <optgroup label="Facultad de ciencia naturales e ingenierías">
                                        <optgroup label="Tecnologías">
                                            <option value="Tecnologia en Implementacion de Sistemas Electronicos Industriales">Tecnologia en Implementacion de Sistemas Electronicos Industriales</option>
                                            <option value="Tecnologia en Operacion y Mantenimiento Electromecanico">Tecnologia en Operacion y Mantenimiento Electromecanico</option>
                                            <option value="Tecnologia en Levantamientos Topograficos">Tecnologia en Levantamientos Topograficos</option>
                                            <option value="Tecnologia en Manejo de Recursos Ambientales">Tecnologia en Manejo de Recursos Ambientales</option>
                                            <option value="Tecnologia en Electricidad Industrial">Tecnologia en Electricidad Industrial</option>
                                            <option value="Tecnologia en Gestion de Sistemas de Telecomunicaciones">Tecnologia en Gestion de Sistemas de Telecomunicaciones</option>
                                            <option value="Tecnologia en Desarrollo de Sistemas informaticos">Tecnologia en Desarrollo de Sistemas informaticos</option>
                                            <option value="Tecnologia en Produccion Industrial">Tecnologia en Produccion Industrial</option>
                                            <option value="Tecnologia en Logistica del Transporte">Tecnologia en Logistica del Transporte</option>
                                        </optgroup>

                                        <optgroup label="Ingenierías">
                                            <option value="Ingenieria Electronica">Ingenieraa Electronica</option>
                                            <option value="Ingenieria Electromecanica">Ingenieraa Electromecanica</option>
                                            <option value="Ingenieria en Topografia">Ingenieria en Topografia</option>
                                            <option value="Ingenieria Ambiental">Ingenieria Ambiental</option>
                                            <option value="Ingenieria Electrica">Ingenieria Electrica</option>
                                            <option value="Ingenieria de Telecomunicaciones">Ingenieria de Telecomunicaciones</option>
                                            <option value="Ingenieria de Sistemas">Ingenieria de Sistemas</option>
                                            <option value="Ingenieria Industrial">Ingenieria Industrial</option>
                                            <option value="Ingenieria en Sistemas de Transporte">Ingenieria en Sistemas de Transporte</option>
                                        </optgroup>
                                    </optgroup>
                            </select>
                            
                            <label>Semestre:</label>
                            <input type="radio" required id="primero" value="Primer Semestre" name="semestre_est"><label for="primero" class="light">Primer semestre</label><br>
                            <input type="radio" required id="segundo" value="Segundo semestre" name="semestre_est"><label for="over_13" class="light">Segundo semestre</label> <br>
                            <input type="radio" required id="tercer" value="Tercer semestre" name="semestre_est"><label for="under_13" class="light">Tercer semestre</label><br>
                            <input type="radio" required id="cuarto" value="Cuarto semestre" name="semestre_est"><label for="over_13" class="light">Cuarto semestre</label> <br>
                            <input type="radio" required id="quinto" value="Quinto semestre" name="semestre_est"><label for="under_13" class="light">Quinto semestre</label><br>
                            <input type="radio" required id="sexto" value="Sexto semestre" name="semestre_est"><label for="over_13" class="light">Sexto semestre</label> <br>
                            <input type="radio" required id="septimo" value="Septimo semestre" name="semestre_est"><label for="under_13" class="light">Séptimo semestre</label><br>
                            <input type="radio" required id="octavo" value="Octavo semestre" name="semestre_est"><label for="over_13" class="light">Octavo semestre</label> <br>
                            <input type="radio" required id="noveno" value="Noveno semestre" name="semestre_est"><label for="under_13" class="light">Noveno semestre</label><br>
                            <input type="radio" required id="decimo" value="Decimo semestre" name="semestre_est"><label for="over_13" class="light">Décimo semestre</label> <br>
                    </fieldset>
                    <button type="submit" value="Guardar">Guardar</button>
                </form>
             </form>
        </c:if>
        <c:if test="${param.nombre_est !=null}" >
            <sql:update var="result" dataSource="${parcialsegundocorte}">
                INSERT INTO
                estudiante (nombre_est, cedula_est, apellido_est, correo_est, telefono_est, jornada_est, programa_est, semestre_est, contra_est)
                VALUES ('${param.nombre_est}',
                '${param.cedula_est}',
                '${param.apellido_est}',
                '${param.correo_est}',
                '${param.telefono_est}',
                '${param.jornada_est}',
                '${param.programa_est}',
                '${param.semestre_est}',
                '${param.contra_est}'
                )
            </sql:update>
            <c:if test="${result == 1}" >
            <br><br><br><br> <br><br><br><br>
             <center>  <div class="card" style="width: 18rem;">
                    <div class="card-body">
                        <p>Registro Insertado Satisfactoriamente!</p>
                        <a href="vista_estudiante.jsp">Regresar</a>
                    </div></center>
                </div>
            </c:if>
        </c:if>
    

   


        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.1/umd/popper.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.6.0/js/bootstrap.min.js"></script>
    </body>
</html>