
--Primary keys

alter table registros add constraint PK_registros
primary key (id_estudiante,id_curso);

alter table horarios add constraint PK_horarios
primary key (id);

alter table cursosxhorarios add constraint PK_horarixcur
primary key (id_curso,id_horario);

alter table estudiantes add constraint PK_estudiantes
primary key(id);

alter table cursos add constraint PK_cursos
primary key (id);

alter table salones add constraint PK_salones
primary key (id);

alter table profesores add constraint PK_profesores
primary key(id);

alter table decanaturas add constraint PK_decanaturas
primary key (id);

alter table estudiantesXdecanaturas add constraint PK_estudiantesXdecanatura
primary key (id_estudiante,id_decanatura);

alter table cursosXprofesores add constraint PK_cursosXprofesores
primary key (id_profesor,id_curso);

