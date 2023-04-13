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
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.6.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Abyssinica+SIL&family=Gemunu+Libre&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Gemunu+Libre&display=swap" rel="stylesheet">       
    <link rel="stylesheet" href="css/styles.css">
    <title>CALIFICAR ESTUDIANTE</title>
  </head>

  <body>
  
    
    <c:if test="${param.modifica == null}">
      <sql:query var="universidad" dataSource="${parcialsegundocorte}">
          SELECT * FROM estudiante where id=?
          <sql:param value="${param.id}">
          </sql:param>
      </sql:query>
<br><br><br><br> <br><br><br>
  <center><h2>Calificar a Estudiante</h2></center>
  <br>
      <form method="post">
        <center><table class="tabla">
              <c:forEach var="itema" items="${universidad.rows}">
                <tr><td></td>
                  <td><input type="hidden" name="id" value="${itema.id}"></td>
                </tr>

                  <td> <input type="hidden" name="cedula" value="${itema.cedula_est}"></td>
                </tr>

                  <td> <input type="hidden" name="nombre" value="${itema.nombre_est}"></td>
                </tr>

                  <td> <input type="hidden" name="apellido" value="${itema.apellido_est}"></td>
                </tr>

                  <td> <input type="hidden" name="correo" value="${itema.correo_est}"></td>
                </tr>

                  <td> <input type="hidden" name="telefono" value="${itema.telefono_est}"></td>
                </tr>

                  <td> <input type="hidden" name="jornada" value="${itema.jornada_est}"></td>
                </tr>

                    <td> <input type="hidden" name="programa" value="${itema.programa_est}"></td>
                </tr>

                    <td><input type="hidden" name="semestre" value="${itema.semestre_est}"></td>
                </tr>

                    <td><input type="hidden" name="url" value="${itema.url_est}"></td>
                </tr>

                    <td><input type="hidden" name="fecha" value="${itema.fecha_est}"></td>
                </tr>

                    <td> <input type="hidden" name="contra" value="${itema.contra_est}"></td>
                </tr>

                <center> <h5>Calificar</h5></center>
                    <td>
                        <sql:query var="rsEstado" dataSource="${parcialsegundocorte}">
                        SELECT * FROM aprobarproyecto
                    </sql:query>

                 
        <center>  <div class="card" style="width: 18rem;">
        
          <div class="card-body">
                   
                        <select name="id_estado">
                            <option value="0">--Seleccione--</option>
                            <c:forEach var="aprobarproyecto" items="${rsEstado.rows}">
                                <option value="${aprobarproyecto.id}">
                                    <c:if test="${aprobarproyecto.id == itema.id_estado}">
                                    </c:if>
                                    
                                <c:out value="${aprobarproyecto.estado}"/>
                                </option>
                            </c:forEach>
                            </div>
              </div></center>
               
                    </td>
                </tr>

              </c:forEach>
        </table></center> 
        <br>

        <center><input class="btn btn-success" id="boton" type="submit" value="Actualizar"/></center>
        <center><tr><input type="hidden" name="modifica" value="SI"></tr></center> 
      </form>
               </select>
                      
    </c:if>

    <c:if test="${param.modifica != null}" >
      <sql:update var="result" dataSource="${parcialsegundocorte}">
          update estudiante
          set cedula_est ='${param.cedula}',
          nombre_est = '${param.nombre}',
          apellido_est = '${param.apellido}',
          correo_est = '${param.correo}',
          telefono_est = '${param.telefono}',
          jornada_est = '${param.jornada}',
          programa_est = '${param.programa}',
          semestre_est = '${param.semestre}',
          url_est = '${param.url}',
          fecha_est = '${param.fecha}',
          id_estado = '${param.id_estado}',
          contra_est = '${param.contra}'
      </sql:update>

      <c:if test="${result == 1}">
      <br><br><br><br> <br><br><br><br>
        <center>  <div class="card" style="width: 18rem;">
          <div class="card-body">
            <p class="text-black">AnteProyecto Subido Correctamente!</p>
            <a class="btn btn-dark" href="vista_aprobareva.jsp">Regresar</a>
          </div>
        </div></center>
      </c:if>
    </c:if>


    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.1/umd/popper.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.6.0/js/bootstrap.min.js"></script>
  </body>
</html>