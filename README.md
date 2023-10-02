# SQL
En este apartado agregare consultas que ocupo para resolver problemas en el lugar donde laboro.


Mensajeros.sql <- Se requiere informacion acerca de la comunicacion que se tiene del docente  en los equipos de alumnos, usando un medio interno (mensajero-aulavirtual).
Considerando que son muchos mensajes los que se envian entre alumno docente o viceversa, Realice lo siguiente:
* Cree un conteo distintivo de los alumnos que participan en estas reuniones
* Agrupe los mensajes por el id de conversacion,la fecha en la que es creada esa conversacion y el equipo en el que se envian estos mensajes, 
* Estoy agregando filtros para hacer mas exacta la consulta los cuales son, entre que rango de fechas, todo lo que en la columna grupo- equipo aparezca como "Equipo", descartando usuarios, filtrando que solo aparezcan ciertas asignaturas, por ultimo uso having para filtrar las conversaciones en las cuales el numero de usuarios (Funcion de agregacion) sean mayor a 2, ya que si recordamos lo que se busca es mostrar la comunicacion que el docente tiene con el equipo.
