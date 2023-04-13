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
    <link href="https://fonts.googleapis.com/css2?family=Abyssinica+SIL&family=Gemunu+Libre&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Gemunu+Libre&display=swap" rel="stylesheet">       
    <link rel="stylesheet" href="css/styles.css">
    <title>ACTUALIZAR COORDINADOR</title>
</head>
<body>
  
  <c:if test="${param.modifica == null}">
    <sql:query var="universidad" dataSource="${parcialsegundocorte}">
        SELECT * FROM coordinacion where id=?
        <sql:param value="${param.id}">
        </sql:param>
    </sql:query>

    <form method="post">
      <form action="index.html" method="post">
               <c:forEach var="itema" items="${universidad.rows}">
                    <tr><td></td>
                        <td><input type="hidden" name="id" value="${itema.id}"/></td>
                    </tr>

                    <h1>Registro Coordinador</h1>
                    <fieldset>
                            <legend><span class="number">1</span>Informacion personal</legend>
                            <label for="nombre_cor">Nombre: </label>
                            <input type="text" required id="nombre_cor" name="nombre" value="${itema.nombre_cor}">

                            <label for="apellido_cor">Apellido:</label>
                            <input type="text" required id="apellido_cor" name="apellido" value="${itema.apellido_cor}">
                            
                            
                            <label for="correo_cor">Email:</label>
                            <input type="email" required id="correo_cor" name="correo" value="${itema.correo_cor}">

                            <label for="cedula_cor">Número cédula</label>
                            <input type="number" required id="cedula_cor" name="cedula" value="${itema.cedula_cor}">
                            
                            <label for="contra_cor">Password:</label>
                            <input type="password" required id="contra_cor" name="contra" value="${itema.contra_cor}">

                            <label for="telefono_cor">Número contacto</label>
                            <input type="number" required id="telefono_cor" name="telefono" value="${itema.telefono_cor}" >  
                    </fieldset>
                
                    <fieldset>
                        <legend><span class="number">2</span>Informacion universitaria</legend>

                            <label>Facultad:</label>
                            <input type="radio" required id="socioeconomicas" value="Facultad de ciencias socioeconomicas y empresariales" name="facultad"><label for="primero" class="light">Facultad de ciencias socioeconomicas y empresariales</label><br>
                            <input type="radio" required id="ingenierias" value="Facultad de ciencia naturales e ingenierias" name="facultad"><label for="over_13" class="light">Facultad de ciencia naturales e ingenierías</label> <br>
                            <br> <br>
                            <label for="programa_cor">Programa Academico: </label>
                            <select  required id="programa_cor" name="programa" value="${itema.programa_cor}">
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
                          </fieldset>
                          <button type="submit" value="Actualizar">Actualizar</button>
                          <center><tr><input type="hidden" name="modifica" value="SI"></tr></center> 
                          </c:forEach>
                            <br><br>
                </form>
                </form>
        <br>
    </form>
  </c:if>

  <c:if test="${param.modifica != null}" >
    <sql:update var="result" dataSource="${parcialsegundocorte}">
        update coordinacion
        set cedula_cor ='${param.cedula}',
        nombre_cor = '${param.nombre}',
        apellido_cor = '${param.apellido}',
        correo_cor = '${param.correo}',
        telefono_cor = '${param.telefono}',
        programa_cor = '${param.programa}',
        facultad_cor = '${param.facultad}',
        contra_cor = '${param.contra}'
    </sql:update>

    <c:if test="${result == 1}">
    <br><br><br><br> <br><br><br><br>
      <center>  <div class="card" style="width: 18rem;">
        <div class="card-body">
          <p class="text-black">Registro Actualizado Satisfactoriamente!</p>
          <a class="btn btn-dark"  href="vista_coordinacion.jsp">Regresar</a>
        <div>
      </center></div>  
    </c:if>
  </c:if>


<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.1/umd/popper.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.6.0/js/bootstrap.min.js"></script>
</body>
</html>