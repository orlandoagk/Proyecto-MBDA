ALTER TABLE registros
DROP CONSTRAINT registro_idEstu;
ALTER TABLE registros
DROP CONSTRAINT registro_idCurso;
ALTER TABLE estudiantesXdecanaturas
DROP CONSTRAINT estuXdeca_idEstudiante;
ALTER TABLE estudiantesXdecanaturas
DROP CONSTRAINT estuXdeca_idDecanatura;
ALTER TABLE cursosXprofesores
DROP CONSTRAINT cursoXpro_curso;
ALTER TABLE cursosXprofesores
DROP CONSTRAINT cursoXpro_profesores;
ALTER TABLE cursosxhorarios
DROP CONSTRAINT cursos_idSalon;
ALTER TABLE cursosxhorarios
DROP CONSTRAINT FK_cursosxhorario_curso;
ALTER TABLE cursosxhorarios
DROP CONSTRAINT FK_cursosxhorario_horario;


--Acciones

alter table registros add constraint registro_idEstu
foreign key (id_estudiante) references estudiantes(id) ON DELETE CASCADE;

alter table registros add constraint registro_idCurso
foreign key (id_curso) references cursos(id) ON DELETE CASCADE;

ALTER TABLE cursosxhorarios ADD CONSTRAINT FK_cursosxhorario_curso
FOREIGN KEY (id_curso) REFERENCES cursos(id) ON DELETE CASCADE;

ALTER TABLE cursosxhorarios ADD CONSTRAINT FK_cursosxhorario_horario
FOREIGN KEY (id_horario) REFERENCES horarios(id) ON DELETE CASCADE;

alter table estudiantesXdecanaturas add constraint estuXdeca_idEstudiante
foreign key (id_estudiante) references estudiantes(id) ON DELETE CASCADE;

alter table estudiantesXdecanaturas add constraint estuXdeca_idDecanatura
foreign key (id_decanatura) references decanaturas(id) ON DELETE CASCADE;

alter table cursosXprofesores add constraint cursoXpro_profesores
foreign key (id_profesor) references profesores(id) ON DELETE CASCADE;

alter table cursosXprofesores add constraint cursoXpro_curso
foreign key (id_curso) references cursos(id) ON DELETE CASCADE;

alter table cursosxhorarios add constraint cursos_idSalon
foreign key (id_salon) references salones(id) ON DELETE CASCADE; 