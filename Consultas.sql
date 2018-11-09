
--ConsultasOperativas
--Consulte los salones donde tengo el curso Bases de Datos, mi numero de carnet es 2145271
Select salones.id,salones.bloque,horarios.hora from horarios JOIN (registros JOIN ( cursos JOIN (cursosxhorarios JOIN salones ON (cursosxhorarios.id_salon = salones.id)) ON (cursosxhorarios.id_curso = cursos.id)) ON (registros.id_curso = cursos.id)) ON (horarios.id = cursosxhorarios.id_horario)
where cursos.nombre='Bases de Datos' AND registros.id_estudiante = 2145271;

--Consulte todos los estudiantes a los que dicto clases, mi nombre es Jack Perez
select nombre from estudiantes join registros on (estudiantes.id=id_estudiante) join cursos on (cursos.id=registros.id_curso) join cursosXprofesores on (cursos.id=cursosXprofesores.id_curso) join profesores on (cursosXprofesores.id_profesor=profesores.id) where profesores.nombre='Jack Perez';


--ConsultasGerenciales
--Consulte el nombre de la decanatura que contenga más estudiantes inscritos que esten cursando semestre 5 u superior
select decanaturas.nombre,count(estudiantes.nombre) as Cantidad_de_Estudiantes from decanaturas join (estudiantesXdecanaturas join estudiantes on (id_estudiante=estudiantes.id)) on (id_decanatura=decanaturas.id) 
WHERE estudiantes.semestre >= 5 AND ROWNUM = 1
GROUP BY decanaturas.nombre
ORDER BY Cantidad_de_Estudiantes;

--Consulta los 15 estudiantes con mejor promedio académico
SELECT estudiantes.nombre, AVG(nota_final) AS Promedio_del_Estudiante FROM estudiantes JOIN registros ON (estudiantes.id = registros.id_estudiante)
WHERE ROWNUM <= 15
GROUP BY estudiantes.nombre
ORDER BY Promedio_del_Estudiante;